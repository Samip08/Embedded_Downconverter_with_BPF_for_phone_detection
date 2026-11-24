# Task 8 v3: fits the HFSS Student limit (64,000 volume elements).
# Changes vs v2: second-order basis (more accurate per element), mesh seeded on the strips,
# 20 % refinement per pass and at most 10 passes, so the mesh cannot run past the cap.
# Run in HFSS: Tools > Run Script. Creates a NEW design "Task8_BPF_v3" (old designs untouched).
import ScriptEnv
ScriptEnv.Initialize("Ansoft.ElectronicsDesktop")
oDesktop.RestoreWindow()

W  = [1.659, 1.775, 1.777, 1.777, 1.775, 1.659]
L  = [50.03, 49.40, 49.39, 49.39, 49.40, 50.03]
S  = [0.4405, 2.659, 3.292, 3.292, 2.659, 0.4405]
H, T, ER, TAND = 0.813, 0.035, 3.55, 0.0027
DL   = 0.0      # trim added to every section length (mm)
LF   = 8.0      # feed length
BM   = 5.0      # substrate margin beside the outer strips
MY   = 6.0      # extra air beside the board
MZ   = 12.0     # air height above the substrate
PW, PH = 9.0, 7.0
DESIGN = "Task8_BPF_v3"
SEED = 3.0     # max mesh edge length on the copper strips (mm)

def log(msg): oDesktop.AddMessage("", "", 0, msg)
def step(name, fn):
    try:
        fn(); log("OK     " + name)
    except Exception as e:
        log("FAILED " + name + " : " + str(e))
def mm(v): return "%.5fmm" % v

xs = [0.0]
for k in range(6): xs.append(xs[-1] + L[k] + DL)
ys = [0.0]
for k in range(6): ys.append(ys[-1] - (W[k] + S[k]))
xmin, xmax = -LF, xs[6] + LF
ymax = W[0] / 2.0 + BM
ymin = ys[6] - W[5] / 2.0 - BM

oProject = oDesktop.GetActiveProject()
oProject.InsertDesign("HFSS", DESIGN, "DrivenModal", "")
oDesign = oProject.SetActiveDesign(DESIGN)
oEditor = oDesign.SetActiveEditor("3D Modeler")
oEditor.SetModelUnits(["NAME:Units Parameter", "Units:=", "mm", "Rescale:=", False])

def attrs(name, mat, color, transp, solve):
    return ["NAME:Attributes", "Name:=", name, "Flags:=", "", "Color:=", color,
            "Transparency:=", transp, "PartCoordinateSystem:=", "Global", "UDMId:=", "",
            "MaterialValue:=", '"%s"' % mat, "SurfaceMaterialValue:=", '""',
            "SolveInside:=", solve, "IsMaterialEditable:=", True,
            "UseMaterialAppearance:=", False, "IsLightweight:=", False]
def box(name, x, y, z, dx, dy, dz, mat, color, transp, solve):
    oEditor.CreateBox(["NAME:BoxParameters", "XPosition:=", mm(x), "YPosition:=", mm(y), "ZPosition:=", mm(z),
                       "XSize:=", mm(dx), "YSize:=", mm(dy), "ZSize:=", mm(dz)], attrs(name, mat, color, transp, solve))
def sheetZ(name, x, y, z, dx, dy, color):
    oEditor.CreateRectangle(["NAME:RectangleParameters", "IsCovered:=", True, "XStart:=", mm(x), "YStart:=", mm(y),
        "ZStart:=", mm(z), "Width:=", mm(dx), "Height:=", mm(dy), "WhichAxis:=", "Z"],
        attrs(name, "vacuum", color, 0.0, True))

def mats():
    dm = oProject.GetDefinitionManager()
    if dm.DoesMaterialExist("RO4003C_T8"):
        log("note   material RO4003C_T8 already exists, reusing it"); return
    dm.AddMaterial(["NAME:RO4003C_T8", "CoordinateSystemType:=", "Cartesian",
        "BulkOrSurfaceType:=", 1, ["NAME:PhysicsTypes", "set:=", ["Electromagnetic"]],
        "permittivity:=", str(ER), "dielectric_loss_tangent:=", str(TAND)])
step("material RO4003C_T8", mats)

def geometry():
    box("Sub", xmin, ymin, 0.0, xmax - xmin, ymax - ymin, H, "RO4003C_T8", "(143 175 143)", 0.5, True)
    names = []; n = 0
    for k in range(6):
        for yy in (ys[k], ys[k + 1]):
            n += 1; nm = "T%d" % n; names.append(nm)
            sheetZ(nm, xs[k], yy - W[k] / 2.0, H, L[k] + DL, W[k], "(255 128 0)")
    sheetZ("FeedIn",  xmin,  ys[0] - W[0] / 2.0, H, LF, W[0], "(255 128 0)")
    sheetZ("FeedOut", xs[6], ys[6] - W[5] / 2.0, H, LF, W[5], "(255 128 0)")
    names += ["FeedIn", "FeedOut"]
    oEditor.Unite(["NAME:Selections", "Selections:=", ",".join(names)], ["NAME:UniteParameters", "KeepOriginals:=", False])
    oEditor.ChangeProperty(["NAME:AllTabs", ["NAME:Geometry3DAttributeTab",
        ["NAME:PropServers", names[0]], ["NAME:ChangedProps", ["NAME:Name", "Value:=", "Strips"]]]])
    sheetZ("Gnd", xmin, ymin - MY, 0.0, xmax - xmin, (ymax - ymin) + 2 * MY, "(200 100 0)")
step("substrate, copper sheets, ground sheet", geometry)

def airbox():
    box("Air", xmin, ymin - MY, 0.0, xmax - xmin, (ymax - ymin) + 2 * MY, H + MZ, "vacuum", "(0 128 255)", 0.9, True)
    oEditor.Subtract(["NAME:Selections", "Blank Parts:=", "Air", "Tool Parts:=", "Sub"],
                     ["NAME:SubtractParameters", "KeepOriginals:=", True])
step("air box", airbox)

def conductors():
    oModule = oDesign.GetModule("BoundarySetup")
    tries = [
        ["NAME:Cu", "Objects:=", ["Strips", "Gnd"], "UseMaterial:=", True, "Material:=", "copper",
         "UseThickness:=", True, "Thickness:=", "35um", "Roughness:=", "0um",
         "InfGroundPlane:=", False, "IsTwoSided:=", False, "IsInternal:=", True],
        ["NAME:Cu", "Objects:=", ["Strips", "Gnd"], "UseMaterial:=", True, "Material:=", "copper",
         "UseThickness:=", False, "Roughness:=", "0um", "InfGroundPlane:=", False]]
    for i, t in enumerate(tries):
        try:
            oModule.AssignFiniteCond(t)
            log("OK     copper (finite conductivity, form %d) on strips + ground" % (i + 1)); return
        except Exception as e:
            log("note   finite conductivity form %d failed: %s" % (i + 1, str(e)))
    log("note   using perfect conductor instead: conductor loss will be missing, tell Claude")
    oModule.AssignPerfectE(["NAME:PerfE1", "Objects:=", ["Strips", "Gnd"], "InfGroundPlane:=", False])
step("conductor boundaries", conductors)

def ports():
    for nm, xp, yc in [("P1", xmin, ys[0]), ("P2", xmax, ys[6])]:
        oEditor.CreateRectangle(["NAME:RectangleParameters", "IsCovered:=", True, "XStart:=", mm(xp),
            "YStart:=", mm(yc - PW / 2.0), "ZStart:=", mm(0.0), "Width:=", mm(PW), "Height:=", mm(PH), "WhichAxis:=", "X"],
            attrs(nm + "_sheet", "vacuum", "(255 0 0)", 0.4, True))
step("port sheets", ports)

def assign_ports():
    oModule = oDesign.GetModule("BoundarySetup")
    for nm in ("P1", "P2"):
        try:
            oModule.AssignWavePort(["NAME:" + nm, "Objects:=", [nm + "_sheet"], "NumModes:=", 1,
                "RenormalizeAllTerminals:=", True, "UseLineModeAlignment:=", False, "DoDeembed:=", False,
                ["NAME:Modes", ["NAME:Mode1", "ModeNum:=", 1, "UseIntLine:=", False, "CharImp:=", "Zpi", "RenormImp:=", "50ohm"]],
                "ShowReporterFilter:=", False, "ReporterFilter:=", [True], "UseAnalyticAlignment:=", False])
        except Exception:
            oModule.AssignWavePort(["NAME:" + nm, "Objects:=", [nm + "_sheet"], "NumModes:=", 1,
                "RenormalizeAllTerminals:=", True, "UseLineModeAlignment:=", False, "DoDeembed:=", False,
                ["NAME:Modes", ["NAME:Mode1", "ModeNum:=", 1, "UseIntLine:=", False, "CharImp:=", "Zpi"]],
                "ShowReporterFilter:=", False, "ReporterFilter:=", [True], "UseAnalyticAlignment:=", False])
step("wave ports P1/P2", assign_ports)

def radiation():
    oModule = oDesign.GetModule("BoundarySetup")
    def num(v): return float(str(v).lower().replace("mm", "").strip())
    ids = list(oEditor.GetFaceIDs("Air"))
    cen = {}
    for i in ids:
        c = oEditor.GetFaceCenter(i); cen[i] = [num(c[0]), num(c[1]), num(c[2])]
    zmax = max([cen[i][2] for i in ids]); y0 = min([cen[i][1] for i in ids]); y1 = max([cen[i][1] for i in ids])
    sel = [int(i) for i in ids if abs(cen[i][2] - zmax) < 1e-6 or abs(cen[i][1] - y0) < 1e-6 or abs(cen[i][1] - y1) < 1e-6]
    log("radiation faces chosen %d of %d: %s" % (len(sel), len(ids), str(sel)))
    oModule.AssignRadiation(["NAME:Rad1", "Faces:=", sel, "IsFssReference:=", False, "IsForPML:=", False])
step("radiation on top + long sides of Air", radiation)

def seed():
    oDesign.GetModule("MeshSetup").AssignLengthOp(["NAME:StripSeed", "RefineInside:=", False, "Enabled:=", True,
        "Objects:=", ["Strips"], "RestrictElem:=", False, "NumMaxElem:=", "1000",
        "RestrictLength:=", True, "MaxLength:=", mm(SEED)])
step("mesh seed %.1f mm on strips" % SEED, seed)

def setup():
    oModule = oDesign.GetModule("AnalysisSetup")
    base = ["NAME:Setup1", "Frequency:=", "0.9GHz", "MaxDeltaS:=", 0.02, "MaximumPasses:=", 10,
            "MinimumPasses:=", 2, "MinimumConvergedPasses:=", 1, "PercentRefinement:=", 20]
    try:
        oModule.InsertSetup("HfssDriven", base + ["BasisOrder:=", 2])
        log("OK     second-order basis")
    except Exception as e:
        log("note   second-order basis not accepted (" + str(e) + "), using default order")
        oModule.InsertSetup("HfssDriven", base)
    oModule.InsertFrequencySweep("Setup1", ["NAME:Sweep", "IsEnabled:=", True, "RangeType:=", "LinearCount",
        "RangeStart:=", "0.8GHz", "RangeEnd:=", "1GHz", "RangeCount:=", 201, "Type:=", "Interpolating",
        "SaveFields:=", False, "SaveRadFields:=", False])
step("solution setup (max 10 passes, 20 %/pass) + sweep 0.8-1.0 GHz", setup)

oEditor.FitAll()
log("v3 build finished. Board %.2f x %.2f mm. Next: HFSS > Validation Check, then Analyze All." % (xmax - xmin, ymax - ymin))
