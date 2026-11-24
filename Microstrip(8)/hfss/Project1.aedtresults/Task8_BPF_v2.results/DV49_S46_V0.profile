$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2025
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '11/24/2026 22:18:58')
			I(1, 'Host', 'LAPTOP-BL1RK8OD')
			I(1, 'Processor', '16')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2025.2.4')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:01:52')
			I(1, 'ComEngine Memory', '111 M')
		$end 'TotalInfo'
		GroupOptions=8
		TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Executing From\', \'D:\\\\ANYSYS HFSS STUDENT\\\\ANSYS Inc\\\\ANSYS Student\\\\v252\\\\AnsysEM\\\\HFSSCOMENGINE.exe\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='HPC'
			$begin 'StartInfo'
				I(1, 'Type', 'Auto')
				I(1, 'MPI Vendor', 'Intel')
				I(1, 'MPI Version', '2021')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions(Memory=8)
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'LAPTOP-BL1RK8OD\', 1, \'Memory\', \'23.6 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'5.68 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 107 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/24/2026 22:18:58')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:03')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 32044, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 309, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 34656, 'I(1, 2, \'Tetrahedra\', 414, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 21736, 'I(1, 2, \'Tetrahedra\', 628, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 172372, 'I(2, 2, \'Tetrahedra\', 628, false, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 1, 0, 0, 0, 185156, 'I(2, 2, \'Tetrahedra\', 628, false, 1, \'Disk\', \'79.9 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 21960, 'I(1, 2, \'Tetrahedra\', 896, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/24/2026 22:19:01')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:01:49')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 1'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 174904, 'I(2, 2, \'Tetrahedra\', 896, false, 1, \'Disk\', \'5.05 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 188944, 'I(4, 2, \'Tetrahedra\', 896, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 199912, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 5414, false, 3, \'Matrix bandwidth\', 19.0521, \'%5.1f\', 1, \'Disk\', \'22.8 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 199912, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'352 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 111620, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 2'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22832, 'I(1, 2, \'Tetrahedra\', 1167, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 175736, 'I(2, 2, \'Tetrahedra\', 1167, false, 1, \'Disk\', \'5.05 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 192168, 'I(4, 2, \'Tetrahedra\', 1167, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'14 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 208504, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 7252, false, 3, \'Matrix bandwidth\', 19.5728, \'%5.1f\', 1, \'Disk\', \'28.3 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 208504, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'370 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 111696, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.455755, \'%.5f\')', 0)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 3'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23652, 'I(1, 2, \'Tetrahedra\', 1522, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 176528, 'I(2, 2, \'Tetrahedra\', 1522, false, 1, \'Disk\', \'4.29 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 196812, 'I(4, 2, \'Tetrahedra\', 1522, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'35 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 218860, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 9620, false, 3, \'Matrix bandwidth\', 20.059, \'%5.1f\', 1, \'Disk\', \'37.6 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 218860, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'473 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113128, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.33115, \'%.5f\')', 0)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 4'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 24004, 'I(1, 2, \'Tetrahedra\', 1984, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 177696, 'I(2, 2, \'Tetrahedra\', 1984, false, 1, \'Disk\', \'4.29 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 202692, 'I(4, 2, \'Tetrahedra\', 1984, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 232428, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 12722, false, 3, \'Matrix bandwidth\', 20.3604, \'%5.1f\', 1, \'Disk\', \'51.3 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 232428, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'126 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113196, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795538952')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'12722\', 1, \'Matrixbw\', \'20.485901\', 1, \'Matrixnnz\', \'260622\', 1, \'Rootdim\', \'104\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'21090199552.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1113\', 1, \'Factornnz\', \'1450349\', 1, \'Factorestflops\', \'420311262\', 1, \'Fbsestflops\', \'4563890\', 1, \'Rootfactestflops\', \'375381\', 1, \'Rootfbsestflops\', \'5408\', 1, \'Analysistimesec\', \'0.069631\', 1, \'Analysismemkb\', \'7368.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'0.065693\', 1, \'Factorizationmentotalkb\', \'32655.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.004921\', 1, \'Fbscputimesec\', \'0.014764\', 1, \'Fbsmemorytotalkb\', \'35748.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'232428\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.649418, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 5'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 24904, 'I(1, 2, \'Tetrahedra\', 2590, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 179300, 'I(2, 2, \'Tetrahedra\', 2590, false, 1, \'Disk\', \'4.29 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 210272, 'I(4, 2, \'Tetrahedra\', 2590, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 250180, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 16716, false, 3, \'Matrix bandwidth\', 20.6502, \'%5.1f\', 1, \'Disk\', \'66.9 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 250180, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'155 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113232, 'I(1, 0, \'Adaptive Pass 5\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795538956')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'16716\', 1, \'Matrixbw\', \'20.750700\', 1, \'Matrixnnz\', \'346869\', 1, \'Rootdim\', \'100\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'21084999680.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1449\', 1, \'Factornnz\', \'2034038\', 1, \'Factorestflops\', \'642662757\', 1, \'Fbsestflops\', \'6496424\', 1, \'Rootfactestflops\', \'333794\', 1, \'Rootfbsestflops\', \'5000\', 1, \'Analysistimesec\', \'0.096909\', 1, \'Analysismemkb\', \'10052.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'0.081120\', 1, \'Factorizationmentotalkb\', \'44954.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.005877\', 1, \'Fbscputimesec\', \'0.017632\', 1, \'Fbsmemorytotalkb\', \'48480.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'250180\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.108196, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 6'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 25644, 'I(1, 2, \'Tetrahedra\', 3299, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 180976, 'I(2, 2, \'Tetrahedra\', 3299, false, 1, \'Disk\', \'4.29 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 218668, 'I(4, 2, \'Tetrahedra\', 3299, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 270852, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 21430, false, 3, \'Matrix bandwidth\', 20.853, \'%5.1f\', 1, \'Disk\', \'85.3 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 270852, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'178 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113300, 'I(1, 0, \'Adaptive Pass 6\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795538959')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'21430\', 1, \'Matrixbw\', \'20.929800\', 1, \'Matrixnnz\', \'448526\', 1, \'Rootdim\', \'104\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'21079099392.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'1873\', 1, \'Factornnz\', \'2867381\', 1, \'Factorestflops\', \'1045603343\', 1, \'Fbsestflops\', \'9410815\', 1, \'Rootfactestflops\', \'375465\', 1, \'Rootfbsestflops\', \'5408\', 1, \'Analysistimesec\', \'0.128986\', 1, \'Analysismemkb\', \'13040.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'0.106117\', 1, \'Factorizationmentotalkb\', \'61019.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.007825\', 1, \'Fbscputimesec\', \'0.023475\', 1, \'Fbsmemorytotalkb\', \'63192.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'270852\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.162281, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 7'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 27444, 'I(1, 2, \'Tetrahedra\', 4289, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 184148, 'I(2, 2, \'Tetrahedra\', 4289, false, 1, \'Disk\', \'4.29 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 230752, 'I(4, 2, \'Tetrahedra\', 4289, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 299120, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 28016, false, 3, \'Matrix bandwidth\', 21.022, \'%5.1f\', 1, \'Disk\', \'111 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 299120, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'226 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113308, 'I(1, 0, \'Adaptive Pass 7\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795538963')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'28016\', 1, \'Matrixbw\', \'21.080799\', 1, \'Matrixnnz\', \'590601\', 1, \'Rootdim\', \'104\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'21070800896.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'2447\', 1, \'Factornnz\', \'3954058\', 1, \'Factorestflops\', \'1550598237\', 1, \'Fbsestflops\', \'13138442\', 1, \'Rootfactestflops\', \'375413\', 1, \'Rootfbsestflops\', \'5408\', 1, \'Analysistimesec\', \'0.166385\', 1, \'Analysismemkb\', \'17116.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'0.130872\', 1, \'Factorizationmentotalkb\', \'82289.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.013704\', 1, \'Fbscputimesec\', \'0.041112\', 1, \'Fbsmemorytotalkb\', \'83168.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'299120\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.167636, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 8'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 28800, 'I(1, 2, \'Tetrahedra\', 5582, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 187988, 'I(2, 2, \'Tetrahedra\', 5582, false, 1, \'Disk\', \'4.67 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 246820, 'I(4, 2, \'Tetrahedra\', 5582, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 337504, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 36588, false, 3, \'Matrix bandwidth\', 21.1577, \'%5.1f\', 1, \'Disk\', \'145 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 337504, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'281 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113488, 'I(1, 0, \'Adaptive Pass 8\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795538967')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'36588\', 1, \'Matrixbw\', \'21.204000\', 1, \'Matrixnnz\', \'775813\', 1, \'Rootdim\', \'104\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'21059399680.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'3171\', 1, \'Factornnz\', \'5502774\', 1, \'Factorestflops\', \'2367200000\', 1, \'Fbsestflops\', \'18267475\', 1, \'Rootfactestflops\', \'375445\', 1, \'Rootfbsestflops\', \'5408\', 1, \'Analysistimesec\', \'0.225059\', 1, \'Analysismemkb\', \'22556.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'0.205627\', 1, \'Factorizationmentotalkb\', \'110297.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.015920\', 1, \'Fbscputimesec\', \'0.047760\', 1, \'Fbsmemorytotalkb\', \'110216.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'337504\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.224749, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 9'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 30972, 'I(1, 2, \'Tetrahedra\', 7262, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 191336, 'I(2, 2, \'Tetrahedra\', 7262, false, 1, \'Disk\', \'5.05 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 266300, 'I(4, 2, \'Tetrahedra\', 7262, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 389160, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 47682, false, 3, \'Matrix bandwidth\', 21.2716, \'%5.1f\', 1, \'Disk\', \'188 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 389160, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'350 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113596, 'I(1, 0, \'Adaptive Pass 9\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795538971')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'47682\', 1, \'Matrixbw\', \'21.308500\', 1, \'Matrixnnz\', \'1016032\', 1, \'Rootdim\', \'104\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'21045999616.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'4144\', 1, \'Factornnz\', \'7612899\', 1, \'Factorestflops\', \'3597690000\', 1, \'Fbsestflops\', \'25130069\', 1, \'Rootfactestflops\', \'375469\', 1, \'Rootfbsestflops\', \'5408\', 1, \'Analysistimesec\', \'0.299931\', 1, \'Analysismemkb\', \'29472.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'0.284367\', 1, \'Factorizationmentotalkb\', \'155178.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.018829\', 1, \'Fbscputimesec\', \'0.056488\', 1, \'Fbsmemorytotalkb\', \'148552.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'389160\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.105732, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 10'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 33444, 'I(1, 2, \'Tetrahedra\', 9445, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 197148, 'I(2, 2, \'Tetrahedra\', 9445, false, 1, \'Disk\', \'4.67 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 292388, 'I(4, 2, \'Tetrahedra\', 9445, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'1 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 2, 0, 458088, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 62158, false, 3, \'Matrix bandwidth\', 21.3488, \'%5.1f\', 1, \'Disk\', \'244 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 458088, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'441 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113668, 'I(1, 0, \'Adaptive Pass 10\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795538976')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'62158\', 1, \'Matrixbw\', \'21.377501\', 1, \'Matrixnnz\', \'1328784\', 1, \'Rootdim\', \'104\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'21027999744.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'5468\', 1, \'Factornnz\', \'10574993\', 1, \'Factorestflops\', \'5526760000\', 1, \'Fbsestflops\', \'35569161\', 1, \'Rootfactestflops\', \'375485\', 1, \'Rootfbsestflops\', \'5408\', 1, \'Analysistimesec\', \'0.489427\', 1, \'Analysismemkb\', \'38476.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'0.369201\', 1, \'Factorizationmentotalkb\', \'206304.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.028952\', 1, \'Fbscputimesec\', \'0.086857\', 1, \'Fbsmemorytotalkb\', \'199660.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'458088\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.245536, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 11'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 36756, 'I(1, 2, \'Tetrahedra\', 12281, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 204308, 'I(2, 2, \'Tetrahedra\', 12281, false, 1, \'Disk\', \'5.05 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 327244, 'I(4, 2, \'Tetrahedra\', 12281, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'3 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 2, 0, 551772, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 80904, false, 3, \'Matrix bandwidth\', 21.4207, \'%5.1f\', 1, \'Disk\', \'318 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 551772, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'561 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113676, 'I(1, 0, \'Adaptive Pass 11\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795538982')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'80904\', 1, \'Matrixbw\', \'21.442801\', 1, \'Matrixnnz\', \'1734809\', 1, \'Rootdim\', \'116\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'21004800000.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'7083\', 1, \'Factornnz\', \'14194644\', 1, \'Factorestflops\', \'8013370000\', 1, \'Fbsestflops\', \'47775304\', 1, \'Rootfactestflops\', \'520791\', 1, \'Rootfbsestflops\', \'6728\', 1, \'Analysistimesec\', \'0.572583\', 1, \'Analysismemkb\', \'50200.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'0.558191\', 1, \'Factorizationmentotalkb\', \'278267.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.045256\', 1, \'Fbscputimesec\', \'0.135770\', 1, \'Fbsmemorytotalkb\', \'269548.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'551772\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.146223, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 12'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 41168, 'I(1, 2, \'Tetrahedra\', 15972, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 212408, 'I(2, 2, \'Tetrahedra\', 15972, false, 1, \'Disk\', \'9.42 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 372492, 'I(4, 2, \'Tetrahedra\', 15972, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'5 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 3, 0, 666392, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 105150, false, 3, \'Matrix bandwidth\', 21.4982, \'%5.1f\', 1, \'Disk\', \'412 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 666392, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'720 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113684, 'I(1, 0, \'Adaptive Pass 12\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795538989')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'105150\', 1, \'Matrixbw\', \'21.515400\', 1, \'Matrixnnz\', \'2262348\', 1, \'Rootdim\', \'234\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'20973000704.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'9128\', 1, \'Factornnz\', \'19697451\', 1, \'Factorestflops\', \'12310900000\', 1, \'Fbsestflops\', \'66647412\', 1, \'Rootfactestflops\', \'4272234\', 1, \'Rootfbsestflops\', \'27378\', 1, \'Analysistimesec\', \'0.698676\', 1, \'Analysismemkb\', \'65056.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'0.655042\', 1, \'Factorizationmentotalkb\', \'371317.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.048918\', 1, \'Fbscputimesec\', \'0.146754\', 1, \'Fbsmemorytotalkb\', \'353308.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'666392\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.166741, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 13'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 47020, 'I(1, 2, \'Tetrahedra\', 20766, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 225648, 'I(2, 2, \'Tetrahedra\', 20766, false, 1, \'Disk\', \'9.8 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 2, 0, 429368, 'I(4, 2, \'Tetrahedra\', 20766, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 2, 0, 4, 0, 837576, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 136510, false, 3, \'Matrix bandwidth\', 21.5701, \'%5.1f\', 1, \'Disk\', \'535 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 837576, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'923 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113628, 'I(1, 0, \'Adaptive Pass 13\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795538996')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'136510\', 1, \'Matrixbw\', \'21.584101\', 1, \'Matrixnnz\', \'2946452\', 1, \'Rootdim\', \'198\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'20933799936.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'11846\', 1, \'Factornnz\', \'26748981\', 1, \'Factorestflops\', \'18215400000\', 1, \'Fbsestflops\', \'90953988\', 1, \'Rootfactestflops\', \'2588364\', 1, \'Rootfbsestflops\', \'19602\', 1, \'Analysistimesec\', \'0.960118\', 1, \'Analysismemkb\', \'84796.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'0.895197\', 1, \'Factorizationmentotalkb\', \'503122.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.065225\', 1, \'Fbscputimesec\', \'0.195676\', 1, \'Fbsmemorytotalkb\', \'484644.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'837576\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.222097, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 14'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 1, 0, 1, 0, 54188, 'I(1, 2, \'Tetrahedra\', 26998, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 239812, 'I(2, 2, \'Tetrahedra\', 26998, false, 1, \'Disk\', \'13.8 KB\')', true, true)
				ProfileItem('Matrix Assembly', 1, 0, 2, 0, 504200, 'I(4, 2, \'Tetrahedra\', 26998, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'4 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 2, 0, 6, 0, 1048084, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 177046, false, 3, \'Matrix bandwidth\', 21.6477, \'%5.1f\', 1, \'Disk\', \'693 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 1048084, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.17 MB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113668, 'I(1, 0, \'Adaptive Pass 14\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795539004')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'177046\', 1, \'Matrixbw\', \'21.658600\', 1, \'Matrixnnz\', \'3834560\', 1, \'Rootdim\', \'114\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'20980000768.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'15399\', 1, \'Factornnz\', \'36589961\', 1, \'Factorestflops\', \'27130800000\', 1, \'Fbsestflops\', \'124462370\', 1, \'Rootfactestflops\', \'494378\', 1, \'Rootfbsestflops\', \'6498\', 1, \'Analysistimesec\', \'1.299500\', 1, \'Analysismemkb\', \'110440.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'1.244400\', 1, \'Factorizationmentotalkb\', \'677279.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.092905\', 1, \'Fbscputimesec\', \'0.278715\', 1, \'Fbsmemorytotalkb\', \'643640.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'1048084\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.135115, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 15'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 1, 0, 1, 0, 62936, 'I(1, 2, \'Tetrahedra\', 35107, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 257268, 'I(2, 2, \'Tetrahedra\', 35107, false, 1, \'Disk\', \'19.3 KB\')', true, true)
				ProfileItem('Matrix Assembly', 1, 0, 3, 0, 596560, 'I(4, 2, \'Tetrahedra\', 35107, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 3, 0, 9, 0, 1330668, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 229530, false, 3, \'Matrix bandwidth\', 21.7266, \'%5.1f\', 1, \'Disk\', \'898 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 1, 0, 1330668, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.52 MB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113672, 'I(1, 0, \'Adaptive Pass 15\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795539014')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'229530\', 1, \'Matrixbw\', \'21.734900\', 1, \'Matrixnnz\', \'4988812\', 1, \'Rootdim\', \'130\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'20917999616.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'19853\', 1, \'Factornnz\', \'49652469\', 1, \'Factorestflops\', \'39872200000\', 1, \'Fbsestflops\', \'169315699\', 1, \'Rootfactestflops\', \'732875\', 1, \'Rootfbsestflops\', \'8450\', 1, \'Analysistimesec\', \'1.709230\', 1, \'Analysismemkb\', \'143716.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'1.748310\', 1, \'Factorizationmentotalkb\', \'901810.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.117048\', 1, \'Fbscputimesec\', \'0.351143\', 1, \'Fbsmemorytotalkb\', \'863884.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'1330668\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.0949262, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 16'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 1, 0, 1, 0, 75028, 'I(1, 2, \'Tetrahedra\', 45642, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 282244, 'I(2, 2, \'Tetrahedra\', 45642, false, 1, \'Disk\', \'23.7 KB\')', true, true)
				ProfileItem('Matrix Assembly', 1, 0, 4, 0, 721224, 'I(4, 2, \'Tetrahedra\', 45642, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 5, 0, 13, 0, 1727052, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 297426, false, 3, \'Matrix bandwidth\', 21.8007, \'%5.1f\', 1, \'Disk\', \'1.14 MB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 1, 0, 1727052, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.97 MB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113680, 'I(1, 0, \'Adaptive Pass 16\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795539028')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'297426\', 1, \'Matrixbw\', \'21.807301\', 1, \'Matrixnnz\', \'6486060\', 1, \'Rootdim\', \'138\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'20736299008.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'25735\', 1, \'Factornnz\', \'68309175\', 1, \'Factorestflops\', \'61214400000\', 1, \'Fbsestflops\', \'232662011\', 1, \'Rootfactestflops\', \'876630\', 1, \'Rootfbsestflops\', \'9522\', 1, \'Analysistimesec\', \'2.341540\', 1, \'Analysismemkb\', \'186840.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'2.535370\', 1, \'Factorizationmentotalkb\', \'1241100.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.171660\', 1, \'Fbscputimesec\', \'0.514979\', 1, \'Fbsmemorytotalkb\', \'1175360.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'1727052\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.101192, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 17'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 2, 0, 2, 0, 89860, 'I(1, 2, \'Tetrahedra\', 59342, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 313340, 'I(2, 2, \'Tetrahedra\', 59342, false, 1, \'Disk\', \'32.4 KB\')', true, true)
				ProfileItem('Matrix Assembly', 2, 0, 6, 0, 885360, 'I(4, 2, \'Tetrahedra\', 59342, false, 2, \'P1 Triangles\', 88, false, 2, \'P2 Triangles\', 92, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 7, 0, 18, 0, 2255700, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 385390, false, 3, \'Matrix bandwidth\', 21.8713, \'%5.1f\', 1, \'Disk\', \'1.47 MB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 2, 0, 2255700, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'2.57 MB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113684, 'I(1, 0, \'Adaptive Pass 17\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795539044')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'385390\', 1, \'Matrixbw\', \'21.876499\', 1, \'Matrixnnz\', \'8431000\', 1, \'Rootdim\', \'132\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'20623300608.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'33250\', 1, \'Factornnz\', \'93978109\', 1, \'Factorestflops\', \'94003800000\', 1, \'Fbsestflops\', \'321736638\', 1, \'Rootfactestflops\', \'767229\', 1, \'Rootfbsestflops\', \'8712\', 1, \'Analysistimesec\', \'2.994730\', 1, \'Analysismemkb\', \'242972.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'3.574800\', 1, \'Factorizationmentotalkb\', \'1687820.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.216107\', 1, \'Fbscputimesec\', \'0.648320\', 1, \'Fbsmemorytotalkb\', \'1590850.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'2255700\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.1029, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 18'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, 'AnsysEDT profile')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 3, 0, 3, 0, 108676, 'I(1, 2, \'Tetrahedra\', 77153, false)', true, true)
			$end 'ProfileGroup'
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Simulation Summary'
			$begin 'StartInfo'
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'107 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:03\', 1, \'Total Memory\', \'215 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:01:49\', 1, \'Average memory/process\', \'2.15 GB\', 1, \'Max memory/process\', \'2.15 GB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 59342, false, 2, \'Max matrix size\', 385390, false, 1, \'Matrix bandwidth\', \'21.9\')', 0)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Setup1: Mesh size (82295 volume elements) is greater than the limit for simulation in Ansys Electronics Desktop Student.\')', false, true)
		ProfileFootnote('I(2, 1, \'Stop Time\', \'11/24/2026 22:20:51\', 1, \'Status\', \'Engine Detected Error\')', 2)
	$end 'ProfileGroup'
	$begin 'ProfileGroup'
		MajorVer=2025
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '11/24/2026 22:24:06')
			I(1, 'Host', 'LAPTOP-BL1RK8OD')
			I(1, 'Processor', '16')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2025.2.4')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:00:05')
			I(1, 'ComEngine Memory', '105 M')
		$end 'TotalInfo'
		GroupOptions=8
		TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Executing From\', \'D:\\\\ANYSYS HFSS STUDENT\\\\ANSYS Inc\\\\ANSYS Student\\\\v252\\\\AnsysEM\\\\HFSSCOMENGINE.exe\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='HPC'
			$begin 'StartInfo'
				I(1, 'Type', 'Auto')
				I(1, 'MPI Vendor', 'Intel')
				I(1, 'MPI Version', '2021')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions(Memory=8)
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'LAPTOP-BL1RK8OD\', 1, \'Memory\', \'23.6 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'5.68 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 102 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/24/2026 22:24:07')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:05')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Adaptive Pass 18'
				$begin 'StartInfo'
					I(1, 'Frequency', '900MHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, 'AnsysEDT profile')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 4, 0, 4, 0, 108284, 'I(1, 2, \'Tetrahedra\', 77153, false)', true, true)
			$end 'ProfileGroup'
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Simulation Summary'
			$begin 'StartInfo'
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'102 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'0 Bytes\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:05\', 1, \'Total Memory\', \'0 Bytes\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Setup1: Mesh size (82295 volume elements) is greater than the limit for simulation in Ansys Electronics Desktop Student.\')', false, true)
		ProfileFootnote('I(2, 1, \'Stop Time\', \'11/24/2026 22:24:12\', 1, \'Status\', \'Engine Detected Error\')', 2)
	$end 'ProfileGroup'
$end 'Profile'
