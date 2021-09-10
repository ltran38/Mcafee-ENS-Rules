Rule {
	Initiator {
		Match PROCESS {
			Include OBJECT_NAME {-v "WINWORD.EXE"}
			Include OBJECT_NAME {-v "Excel.exe"}
			Include OBJECT_NAME {-v "Powerpnt.exe"}
			}
	}
	Target {
		Match FILE {
			Include -access "CREATE"
			Include OBJECT_NAME {-v "*.cab"}
			Include OBJECT_NAME {-v "*.html"}
			Include OBJECT_NAME {-v "*.cpl"}
			}
	}
}