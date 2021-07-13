
Rule {
	Process {
		Include OBJECT_NAME { -v "spoolsv.exe" }
	}
	Target {
		Match FILE {
			Include OBJECT_NAME { 
            -v "%systemroot%\\System32\\spool\\drivers\\**\\***\\*\\kernelbase.dll"
            -v "%systemroot%\\System32\\spool\\drivers\\**\\***\\*\\unidrv.dll"
						}
			
			Exclude OBJECT_NAME { 
			-v "%systemroot%\\System32\\spool\\drivers\\**\\FXS**.dll"
			-v "%systemroot%\\System32\\spool\\drivers\\**\\HPS**.dll"
			-v "%systemroot%\\System32\\spool\\drivers\\**\\CN**.dll"
						}
			
			Include -access "CREATE"
		}
	}
}