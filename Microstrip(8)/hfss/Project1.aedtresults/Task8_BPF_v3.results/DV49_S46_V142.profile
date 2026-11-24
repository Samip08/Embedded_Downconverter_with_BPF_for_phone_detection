$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2025
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '11/24/2026 22:35:14')
			I(1, 'Host', 'LAPTOP-BL1RK8OD')
			I(1, 'Processor', '16')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2025.2.4')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:04:38')
			I(1, 'ComEngine Memory', '113 M')
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
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'LAPTOP-BL1RK8OD\', 1, \'Memory\', \'23.6 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'5.7 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'2\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 106 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/24/2026 22:35:14')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:05')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Manual Refine', 1, 0, 1, 0, 48392, 'I(2, 2, \'Tetrahedra\', 12454, false, 0, \'StripSeed\')', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 32436, 'I(1, 2, \'Tetrahedra\', 12454, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 201852, 'I(2, 2, \'Tetrahedra\', 12454, false, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 1, 0, 1, 0, 220204, 'I(2, 2, \'Tetrahedra\', 12454, false, 1, \'Disk\', \'74.7 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 32032, 'I(1, 2, \'Tetrahedra\', 12610, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/24/2026 22:35:19')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:01:17')
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
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 206284, 'I(2, 2, \'Tetrahedra\', 12610, false, 1, \'Disk\', \'4.67 KB\')', true, true)
				ProfileItem('Matrix Assembly', 1, 0, 5, 0, 888156, 'I(4, 2, \'Tetrahedra\', 12610, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 4, 0, 12, 0, 1849332, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 238457, false, 3, \'Matrix bandwidth\', 42.2776, \'%5.1f\', 1, \'Disk\', \'935 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 1, 0, 1849332, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.75 MB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 111624, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795539927')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'238457\', 1, \'Matrixbw\', \'42.291901\', 1, \'Matrixnnz\', \'10084811\', 1, \'Rootdim\', \'569\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'20720599040.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'19860\', 1, \'Factornnz\', \'70717566\', 1, \'Factorestflops\', \'83209800000\', 1, \'Fbsestflops\', \'250399175\', 1, \'Rootfactestflops\', \'61408165\', 1, \'Rootfbsestflops\', \'161880\', 1, \'Analysistimesec\', \'1.257980\', 1, \'Analysismemkb\', \'269388.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'3.167320\', 1, \'Factorizationmentotalkb\', \'1324890.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.169920\', 1, \'Fbscputimesec\', \'0.509759\', 1, \'Fbsmemorytotalkb\', \'1230100.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'1849332\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 40888, 'I(1, 2, \'Tetrahedra\', 15144, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 212048, 'I(2, 2, \'Tetrahedra\', 15144, false, 1, \'Disk\', \'8.66 KB\')', true, true)
				ProfileItem('Matrix Assembly', 2, 0, 6, 0, 1031952, 'I(4, 2, \'Tetrahedra\', 15144, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 6, 0, 16, 0, 2277012, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 286544, false, 3, \'Matrix bandwidth\', 42.3206, \'%5.1f\', 1, \'Disk\', \'1.09 MB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 2, 0, 2277012, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'763 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 111844, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795539939')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'286544\', 1, \'Matrixbw\', \'42.332802\', 1, \'Matrixnnz\', \'12130211\', 1, \'Rootdim\', \'539\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'20631300096.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'23900\', 1, \'Factornnz\', \'90717348\', 1, \'Factorestflops\', \'119217000000\', 1, \'Fbsestflops\', \'321508427\', 1, \'Rootfactestflops\', \'52198015\', 1, \'Rootfbsestflops\', \'145260\', 1, \'Analysistimesec\', \'1.578590\', 1, \'Analysismemkb\', \'324148.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'4.211610\', 1, \'Factorizationmentotalkb\', \'1698140.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.200791\', 1, \'Fbscputimesec\', \'0.602373\', 1, \'Fbsmemorytotalkb\', \'1569040.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'2277012\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.308238, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 43368, 'I(1, 2, \'Tetrahedra\', 18175, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 219324, 'I(2, 2, \'Tetrahedra\', 18175, false, 1, \'Disk\', \'8.66 KB\')', true, true)
				ProfileItem('Matrix Assembly', 2, 0, 7, 0, 1202080, 'I(4, 2, \'Tetrahedra\', 18175, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'4 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 7, 0, 20, 0, 2721720, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 344309, false, 3, \'Matrix bandwidth\', 42.3309, \'%5.1f\', 1, \'Disk\', \'1.32 MB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 2, 0, 2721720, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'870 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113508, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795539954')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'344309\', 1, \'Matrixbw\', \'42.341099\', 1, \'Matrixnnz\', \'14578427\', 1, \'Rootdim\', \'593\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'20474099712.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'28720\', 1, \'Factornnz\', \'110970000\', 1, \'Factorestflops\', \'153039000000\', 1, \'Fbsestflops\', \'393272799\', 1, \'Rootfactestflops\', \'69510469\', 1, \'Rootfbsestflops\', \'175824\', 1, \'Analysistimesec\', \'1.966290\', 1, \'Analysismemkb\', \'389712.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'5.180490\', 1, \'Factorizationmentotalkb\', \'2049040.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.271901\', 1, \'Fbscputimesec\', \'0.815704\', 1, \'Fbsmemorytotalkb\', \'1908700.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'2721720\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.303587, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 47364, 'I(1, 2, \'Tetrahedra\', 21814, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 229708, 'I(2, 2, \'Tetrahedra\', 21814, false, 1, \'Disk\', \'12.6 KB\')', true, true)
				ProfileItem('Matrix Assembly', 3, 0, 9, 0, 1409164, 'I(4, 2, \'Tetrahedra\', 21814, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 9, 0, 27, 0, 3335984, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 413834, false, 3, \'Matrix bandwidth\', 42.3258, \'%5.1f\', 1, \'Disk\', \'1.58 MB\')', true, true)
				ProfileItem('Field Recovery', 1, 0, 3, 0, 3335984, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1e+03 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113576, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795539971')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'413834\', 1, \'Matrixbw\', \'42.334400\', 1, \'Matrixnnz\', \'17519432\', 1, \'Rootdim\', \'680\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'20328300544.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'34493\', 1, \'Factornnz\', \'139263063\', 1, \'Factorestflops\', \'210274000000\', 1, \'Fbsestflops\', \'492863688\', 1, \'Rootfactestflops\', \'104812024\', 1, \'Rootfbsestflops\', \'231200\', 1, \'Analysistimesec\', \'2.393960\', 1, \'Analysismemkb\', \'468548.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'6.703750\', 1, \'Factorizationmentotalkb\', \'2577670.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.345726\', 1, \'Fbscputimesec\', \'1.037180\', 1, \'Fbsmemorytotalkb\', \'2394610.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'3335984\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.260584, \'%.5f\')', 0)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 51392, 'I(1, 2, \'Tetrahedra\', 26181, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 240412, 'I(2, 2, \'Tetrahedra\', 26181, false, 1, \'Disk\', \'13.4 KB\')', true, true)
				ProfileItem('Matrix Assembly', 3, 0, 10, 0, 1654748, 'I(4, 2, \'Tetrahedra\', 26181, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 12, 0, 33, 0, 3998020, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 496928, false, 3, \'Matrix bandwidth\', 42.3434, \'%5.1f\', 1, \'Disk\', \'1.9 MB\')', true, true)
				ProfileItem('Field Recovery', 1, 0, 4, 0, 3998020, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.13 MB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 113580, 'I(1, 0, \'Adaptive Pass 5\')', true, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='APIPms'
					$begin 'StartInfo'
						I(1, 'Timesinceepock', '1795539993')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, ' ')
					$end 'TotalInfo'
					GroupOptions=16
					TaskDataOptions(Memory=8)
					ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'496928\', 1, \'Matrixbw\', \'42.350601\', 1, \'Matrixnnz\', \'21045185\', 1, \'Rootdim\', \'707\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
					ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'20177199104.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
					ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'41467\', 1, \'Factornnz\', \'170222178\', 1, \'Factorestflops\', \'269712000000\', 1, \'Fbsestflops\', \'602155758\', 1, \'Rootfactestflops\', \'117799159\', 1, \'Rootfbsestflops\', \'249924\', 1, \'Analysistimesec\', \'2.873420\', 1, \'Analysismemkb\', \'563044.000000\')', false, true)
					ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'4\', 1, \'Factorizationtimesec\', \'8.200460\', 1, \'Factorizationmentotalkb\', \'3143310.000000\')', false, true)
					ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'fullsolve\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'false\', 1, \'Fbsnumcores\', \'4\', 1, \'Fbsnumsolvestotal\', \'4\', 1, \'Fbsnumsolves\', \'3\', 1, \'Fbsavgsolvetime1solvesec\', \'0.345487\', 1, \'Fbscputimesec\', \'1.036460\', 1, \'Fbsmemorytotalkb\', \'2906050.000000\')', false, true)
					ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'3998020\', 1, \'Maxdiskkb\', \'0\')', false, true)
				$end 'ProfileGroup'
				ProfileFootnote('I(1, 3, \'Max Mag. Delta S\', 0.161206, \'%.5f\')', 0)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes did not converge\')', 1)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2025
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '11/24/2026 22:36:37')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:03:15')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'HPC\', \'Enabled\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2025
				MinorVer=2
				Name='Solution - Sweep'
				$begin 'StartInfo'
					I(0, 'Interpolating HFSS Frequency Sweep, Solving Distributed - up to 4 frequencies in parallel')
					I(1, 'Time', '11/24/2026 22:36:37')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:03:15')
				$end 'TotalInfo'
				GroupOptions=4
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'From 800MHz to 1GHz, 201 Frequencies\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 900MHz has already been solved\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 1GHz'
					$begin 'StartInfo'
						I(0, 'LAPTOP-BL1RK8OD')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:46')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 264960, 'I(2, 2, \'Tetrahedra\', 26181, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 10, 0, 10, 0, 693180, 'I(4, 2, \'Tetrahedra\', 26181, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 34, 0, 34, 0, 1556848, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 496928, false, 3, \'Matrix bandwidth\', 42.3434, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.9 MB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 1556848, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795540045')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'496928\', 1, \'Matrixbw\', \'42.350601\', 1, \'Matrixnnz\', \'21045185\', 1, \'Rootdim\', \'707\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'4200950016.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'41472\', 1, \'Factornnz\', \'171009453\', 1, \'Factorestflops\', \'274230000000\', 1, \'Fbsestflops\', \'603036008\', 1, \'Rootfactestflops\', \'117799159\', 1, \'Rootfbsestflops\', \'249924\', 1, \'Analysistimesec\', \'4.969340\', 1, \'Analysismemkb\', \'516862.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'29.133900\', 1, \'Factorizationmentotalkb\', \'516862.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.001179\', 1, \'Fbscputimesec\', \'0.001179\', 1, \'Fbsmemorytotalkb\', \'439488.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'516862\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 800MHz'
					$begin 'StartInfo'
						I(0, 'LAPTOP-BL1RK8OD')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:46')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 265884, 'I(2, 2, \'Tetrahedra\', 26181, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 10, 0, 10, 0, 694888, 'I(4, 2, \'Tetrahedra\', 26181, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'57 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 35, 0, 34, 0, 1557752, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 496928, false, 3, \'Matrix bandwidth\', 42.3434, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.9 MB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 1557752, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.34 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795540045')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'496928\', 1, \'Matrixbw\', \'42.350601\', 1, \'Matrixnnz\', \'21045185\', 1, \'Rootdim\', \'707\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'4200000000.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'41472\', 1, \'Factornnz\', \'171009453\', 1, \'Factorestflops\', \'274230000000\', 1, \'Fbsestflops\', \'603036008\', 1, \'Rootfactestflops\', \'117799159\', 1, \'Rootfbsestflops\', \'249924\', 1, \'Analysistimesec\', \'5.199450\', 1, \'Analysismemkb\', \'516862.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'29.269500\', 1, \'Factorizationmentotalkb\', \'516862.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.001093\', 1, \'Fbscputimesec\', \'0.001093\', 1, \'Fbsmemorytotalkb\', \'439456.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'516862\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 850MHz'
					$begin 'StartInfo'
						I(0, 'LAPTOP-BL1RK8OD')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:46')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 264084, 'I(2, 2, \'Tetrahedra\', 26181, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 10, 0, 10, 0, 693340, 'I(4, 2, \'Tetrahedra\', 26181, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'12 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 35, 0, 34, 0, 1555944, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 496928, false, 3, \'Matrix bandwidth\', 42.3434, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.9 MB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 1555944, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795540046')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'496928\', 1, \'Matrixbw\', \'42.350601\', 1, \'Matrixnnz\', \'21045185\', 1, \'Rootdim\', \'707\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'4201809920.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'41472\', 1, \'Factornnz\', \'171009453\', 1, \'Factorestflops\', \'274230000000\', 1, \'Fbsestflops\', \'603036008\', 1, \'Rootfactestflops\', \'117799159\', 1, \'Rootfbsestflops\', \'249924\', 1, \'Analysistimesec\', \'5.169170\', 1, \'Analysismemkb\', \'516862.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'29.364700\', 1, \'Factorizationmentotalkb\', \'516862.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.000804\', 1, \'Fbscputimesec\', \'0.000804\', 1, \'Fbsmemorytotalkb\', \'440248.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'516862\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 950MHz'
					$begin 'StartInfo'
						I(0, 'LAPTOP-BL1RK8OD')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:46')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 264096, 'I(2, 2, \'Tetrahedra\', 26181, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 10, 0, 10, 0, 693380, 'I(4, 2, \'Tetrahedra\', 26181, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 34, 0, 34, 0, 1556072, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 496928, false, 3, \'Matrix bandwidth\', 42.3434, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.9 MB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 1556072, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795540046')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'496928\', 1, \'Matrixbw\', \'42.350601\', 1, \'Matrixnnz\', \'21045185\', 1, \'Rootdim\', \'707\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'4201710080.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'41472\', 1, \'Factornnz\', \'171009453\', 1, \'Factorestflops\', \'274230000000\', 1, \'Fbsestflops\', \'603036008\', 1, \'Rootfactestflops\', \'117799159\', 1, \'Rootfbsestflops\', \'249924\', 1, \'Analysistimesec\', \'4.709510\', 1, \'Analysismemkb\', \'516862.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'29.404100\', 1, \'Factorizationmentotalkb\', \'516862.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.000749\', 1, \'Fbscputimesec\', \'0.000749\', 1, \'Fbsmemorytotalkb\', \'439444.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'516862\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 1GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 800MHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 900MHz; S Matrix Error =  57.702%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 850MHz; S Matrix Error =  98.572%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 950MHz; S Matrix Error =   5.870%\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 975MHz'
					$begin 'StartInfo'
						I(0, 'LAPTOP-BL1RK8OD')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:42')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 266336, 'I(2, 2, \'Tetrahedra\', 26181, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 10, 0, 10, 0, 695328, 'I(4, 2, \'Tetrahedra\', 26181, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 31, 0, 30, 0, 1522240, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 496928, false, 3, \'Matrix bandwidth\', 42.3434, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.61 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 1522240, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795540110')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'496928\', 1, \'Matrixbw\', \'42.350601\', 1, \'Matrixnnz\', \'21045185\', 1, \'Rootdim\', \'707\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'4198739968.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'41472\', 1, \'Factornnz\', \'171009453\', 1, \'Factorestflops\', \'274230000000\', 1, \'Fbsestflops\', \'603036008\', 1, \'Rootfactestflops\', \'117799159\', 1, \'Rootfbsestflops\', \'249924\', 1, \'Analysistimesec\', \'1.630950\', 1, \'Analysismemkb\', \'518803.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'28.767200\', 1, \'Factorizationmentotalkb\', \'518803.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.001141\', 1, \'Fbscputimesec\', \'0.001141\', 1, \'Fbsmemorytotalkb\', \'403048.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'518803\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 925MHz'
					$begin 'StartInfo'
						I(0, 'LAPTOP-BL1RK8OD')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:42')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 266984, 'I(2, 2, \'Tetrahedra\', 26181, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 10, 0, 10, 0, 694864, 'I(4, 2, \'Tetrahedra\', 26181, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 31, 0, 30, 0, 1523208, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 496928, false, 3, \'Matrix bandwidth\', 42.3434, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.62 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 1523208, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795540111')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'496928\', 1, \'Matrixbw\', \'42.350601\', 1, \'Matrixnnz\', \'21045185\', 1, \'Rootdim\', \'707\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'4199190016.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'41472\', 1, \'Factornnz\', \'171009453\', 1, \'Factorestflops\', \'274230000000\', 1, \'Fbsestflops\', \'603036008\', 1, \'Rootfactestflops\', \'117799159\', 1, \'Rootfbsestflops\', \'249924\', 1, \'Analysistimesec\', \'1.404410\', 1, \'Analysismemkb\', \'518803.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'28.942600\', 1, \'Factorizationmentotalkb\', \'518803.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.001284\', 1, \'Fbscputimesec\', \'0.001284\', 1, \'Fbsmemorytotalkb\', \'404644.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'518803\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 875MHz'
					$begin 'StartInfo'
						I(0, 'LAPTOP-BL1RK8OD')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:42')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 263752, 'I(2, 2, \'Tetrahedra\', 26181, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 10, 0, 10, 0, 692284, 'I(4, 2, \'Tetrahedra\', 26181, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'8 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 30, 0, 30, 0, 1520064, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 496928, false, 3, \'Matrix bandwidth\', 42.3434, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.62 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 1520064, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795540111')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'496928\', 1, \'Matrixbw\', \'42.350601\', 1, \'Matrixnnz\', \'21045185\', 1, \'Rootdim\', \'707\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'4201779968.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'41472\', 1, \'Factornnz\', \'171009453\', 1, \'Factorestflops\', \'274230000000\', 1, \'Fbsestflops\', \'603036008\', 1, \'Rootfactestflops\', \'117799159\', 1, \'Rootfbsestflops\', \'249924\', 1, \'Analysistimesec\', \'1.346900\', 1, \'Analysismemkb\', \'518803.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'28.638100\', 1, \'Factorizationmentotalkb\', \'518803.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.001436\', 1, \'Fbscputimesec\', \'0.001436\', 1, \'Fbsmemorytotalkb\', \'403932.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'518803\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 825MHz'
					$begin 'StartInfo'
						I(0, 'LAPTOP-BL1RK8OD')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:42')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 263796, 'I(2, 2, \'Tetrahedra\', 26181, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 10, 0, 10, 0, 692684, 'I(4, 2, \'Tetrahedra\', 26181, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'26 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 30, 0, 30, 0, 1519924, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 496928, false, 3, \'Matrix bandwidth\', 42.3434, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.62 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 1519924, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.34 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795540111')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'496928\', 1, \'Matrixbw\', \'42.350601\', 1, \'Matrixnnz\', \'21045185\', 1, \'Rootdim\', \'707\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'4201370112.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'41472\', 1, \'Factornnz\', \'171009453\', 1, \'Factorestflops\', \'274230000000\', 1, \'Fbsestflops\', \'603036008\', 1, \'Rootfactestflops\', \'117799159\', 1, \'Rootfbsestflops\', \'249924\', 1, \'Analysistimesec\', \'1.442690\', 1, \'Analysismemkb\', \'518803.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'28.347000\', 1, \'Factorizationmentotalkb\', \'518803.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.000680\', 1, \'Fbscputimesec\', \'0.000680\', 1, \'Fbsmemorytotalkb\', \'403620.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'518803\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 975MHz; S Matrix Error =   2.442%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 925MHz; S Matrix Error =  11.183%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 875MHz; S Matrix Error =   2.610%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 9, Frequency: 825MHz; S Matrix Error =   1.870%\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 114608, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 887.5MHz'
					$begin 'StartInfo'
						I(0, 'LAPTOP-BL1RK8OD')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:41')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 264708, 'I(2, 2, \'Tetrahedra\', 26181, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 10, 0, 10, 0, 693752, 'I(4, 2, \'Tetrahedra\', 26181, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'4 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 30, 0, 29, 0, 1520864, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 496928, false, 3, \'Matrix bandwidth\', 42.3434, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.62 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 1520864, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795540173')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'496928\', 1, \'Matrixbw\', \'42.350601\', 1, \'Matrixnnz\', \'21045185\', 1, \'Rootdim\', \'707\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'4200270080.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'41472\', 1, \'Factornnz\', \'171009453\', 1, \'Factorestflops\', \'274230000000\', 1, \'Fbsestflops\', \'603036008\', 1, \'Rootfactestflops\', \'117799159\', 1, \'Rootfbsestflops\', \'249924\', 1, \'Analysistimesec\', \'1.378430\', 1, \'Analysismemkb\', \'518803.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'28.069600\', 1, \'Factorizationmentotalkb\', \'518803.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.002229\', 1, \'Fbscputimesec\', \'0.002229\', 1, \'Fbsmemorytotalkb\', \'403636.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'518803\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 862.5MHz'
					$begin 'StartInfo'
						I(0, 'LAPTOP-BL1RK8OD')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:42')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 265660, 'I(2, 2, \'Tetrahedra\', 26181, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 10, 0, 10, 0, 694372, 'I(4, 2, \'Tetrahedra\', 26181, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'8 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 30, 0, 30, 0, 1521720, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 496928, false, 3, \'Matrix bandwidth\', 42.3434, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.62 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 1521720, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795540174')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'496928\', 1, \'Matrixbw\', \'42.350601\', 1, \'Matrixnnz\', \'21045185\', 1, \'Rootdim\', \'707\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'4199650048.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'41472\', 1, \'Factornnz\', \'171009453\', 1, \'Factorestflops\', \'274230000000\', 1, \'Fbsestflops\', \'603036008\', 1, \'Rootfactestflops\', \'117799159\', 1, \'Rootfbsestflops\', \'249924\', 1, \'Analysistimesec\', \'1.353420\', 1, \'Analysismemkb\', \'518803.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'28.286200\', 1, \'Factorizationmentotalkb\', \'518803.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.001173\', 1, \'Fbscputimesec\', \'0.001173\', 1, \'Fbsmemorytotalkb\', \'403920.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'518803\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 912.5MHz'
					$begin 'StartInfo'
						I(0, 'LAPTOP-BL1RK8OD')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:42')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 263796, 'I(2, 2, \'Tetrahedra\', 26181, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 10, 0, 10, 0, 691820, 'I(4, 2, \'Tetrahedra\', 26181, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 30, 0, 30, 0, 1519876, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 496928, false, 3, \'Matrix bandwidth\', 42.3434, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.62 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 1519876, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795540174')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'496928\', 1, \'Matrixbw\', \'42.350601\', 1, \'Matrixnnz\', \'21045185\', 1, \'Rootdim\', \'707\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'4202210048.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'41472\', 1, \'Factornnz\', \'171009453\', 1, \'Factorestflops\', \'274230000000\', 1, \'Fbsestflops\', \'603036008\', 1, \'Rootfactestflops\', \'117799159\', 1, \'Rootfbsestflops\', \'249924\', 1, \'Analysistimesec\', \'1.346980\', 1, \'Analysismemkb\', \'518803.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'28.550600\', 1, \'Factorizationmentotalkb\', \'518803.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.001023\', 1, \'Fbscputimesec\', \'0.001023\', 1, \'Fbsmemorytotalkb\', \'404360.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'518803\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2025
					MinorVer=2
					Name='Frequency - 837.5MHz'
					$begin 'StartInfo'
						I(0, 'LAPTOP-BL1RK8OD')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:41')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 263640, 'I(2, 2, \'Tetrahedra\', 26181, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 10, 0, 10, 0, 692392, 'I(4, 2, \'Tetrahedra\', 26181, false, 2, \'P1 Triangles\', 64, false, 2, \'P2 Triangles\', 58, false, 1, \'Disk\', \'13 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 30, 0, 29, 0, 1519536, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 496928, false, 3, \'Matrix bandwidth\', 42.3434, \'%5.1f\', 2, \'S-matrix only solve\', 2, false, 1, \'Disk\', \'1.62 KB\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 1519536, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.34 KB\')', true, false)
					$begin 'ProfileGroup'
						MajorVer=2025
						MinorVer=2
						Name='APIPms1'
						$begin 'StartInfo'
							I(1, 'Timesinceepock', '1795540174')
						$end 'StartInfo'
						$begin 'TotalInfo'
							I(0, ' ')
						$end 'TotalInfo'
						GroupOptions=16
						TaskDataOptions('CPU Time'=8, 'Real Time'=8)
						ProfileItem('solverinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Solvertype\', \'shared_memory\', 1, \'Precision\', \'double\', 1, \'Solversymmetry\', \'complex_sym\', 1, \'Matrixdim\', \'496928\', 1, \'Matrixbw\', \'42.350601\', 1, \'Matrixnnz\', \'21045185\', 1, \'Rootdim\', \'707\', 1, \'Mathtype\', \'mkl\', 1, \'Mpitasks\', \'1\', 1, \'Threadspertasks\', \'0\')', false, true)
						ProfileItem('sysinfo', 0, 0, 0, 0, 0, 'I(12, 1, \'Os\', \'win\', 1, \'Cpuid\', \'13th Gen Intel(R) Core(TM) i7-13620H\', 1, \'CpuPhysicCores\', \'10\', 1, \'CpuLogicCores\', \'16\', 1, \'Cpufreqkhz\', \'4201629952.000000\', 1, \'Cpucachelinesizebytes\', \'64\', 1, \'Cpuestlastlevelcachesizemb\', \'30.000000\', 1, \'Cpuestgflops\', \'696.000000\', 1, \'Memorybwestkbps\', \'76.800003\', 1, \'Numanodes\', \'1\', 1, \'Virtualmemkb\', \'137439000000.000000\', 1, \'Pagesizekb\', \'4096\')', false, true)
						ProfileItem('analysisinfo', 0, 0, 0, 0, 0, 'I(9, 1, \'Analysisstatus\', \'valid\', 1, \'Numsupernodes\', \'41472\', 1, \'Factornnz\', \'171009453\', 1, \'Factorestflops\', \'274230000000\', 1, \'Fbsestflops\', \'603036008\', 1, \'Rootfactestflops\', \'117799159\', 1, \'Rootfbsestflops\', \'249924\', 1, \'Analysistimesec\', \'1.368980\', 1, \'Analysismemkb\', \'518803.000000\')', false, true)
						ProfileItem('factorinfo', 0, 0, 0, 0, 0, 'I(4, 1, \'Fatorizationstatus\', \'valid\', 1, \'Factorizationnumcores\', \'1\', 1, \'Factorizationtimesec\', \'27.949400\', 1, \'Factorizationmentotalkb\', \'518803.000000\')', false, true)
						ProfileItem('fbsinfo', 0, 0, 0, 0, 0, 'I(10, 1, \'Fbstatus\', \'valid\', 1, \'Fbstype\', \'partial_dense\', 1, \'Fbsmt\', \'false\', 1, \'Fbsmrhs\', \'true\', 1, \'Fbsnumcores\', \'1\', 1, \'Fbsnumsolvestotal\', \'2\', 1, \'Fbsnumsolves\', \'1\', 1, \'Fbsavgsolvetime1solvesec\', \'0.001432\', 1, \'Fbscputimesec\', \'0.001432\', 1, \'Fbsmemorytotalkb\', \'403656.000000\')', false, true)
						ProfileItem('solverprofile', 0, 0, 0, 0, 0, 'I(2, 1, \'Maxmemkb\', \'518803\', 1, \'Maxdiskkb\', \'0\')', false, true)
					$end 'ProfileGroup'
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 10, Frequency: 887.5MHz; S Matrix Error =   4.357%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 11, Frequency: 862.5MHz; S Matrix Error =   0.125%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 12, Frequency: 912.5MHz; S Matrix Error =   0.210%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 13, Frequency: 837.5MHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 114632, 'I(1, 0, \'Frequency Group #3; Interpolating frequency sweep\')', true, true)
				ProfileFootnote('I(1, 0, \'Interpolating sweep converged and is passive\')', 0)
				ProfileFootnote('I(1, 0, \'HFSS: Distributed Interpolating sweep\')', 0)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'106 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:05\', 1, \'Total Memory\', \'262 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:01:17\', 1, \'Average memory/process\', \'3.81 GB\', 1, \'Max memory/process\', \'3.81 GB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:03:15\', 1, \'Average memory/process\', \'1.46 GB\', 1, \'Max memory/process\', \'1.49 GB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 26181, false, 2, \'Max matrix size\', 496928, false, 1, \'Matrix bandwidth\', \'42.3\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'11/24/2026 22:39:53\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
