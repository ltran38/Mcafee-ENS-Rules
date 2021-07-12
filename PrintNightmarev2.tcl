
Rule {
	Process {
		Include OBJECT_NAME { -v "spoolsv.exe" }
	}
	Target {
		Match FILE {
			Include OBJECT_NAME { 
            -v "C:\\Windows\\System32\\spool\\drivers\\x64\\3\\kernelbase.dll"
            -v "C:\\Windows\\System32\\spool\\drivers\\x64\\3\\unidrv.dll"
            }
			Include -access "CREATE"
		}
	}
}