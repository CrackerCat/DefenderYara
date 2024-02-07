
rule TrojanDownloader_Linux_Simmerph_A{
	meta:
		description = "TrojanDownloader:Linux/Simmerph.A,SIGNATURE_TYPE_MACROHSTR_EXT,0b 00 0b 00 03 00 00 0a 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 31 32 38 2e 36 35 2e 32 30 36 2e 33 35 3a 35 35 35 2f 68 65 6e 72 6f 31 2d 63 72 2e 65 78 65 } //01 00  http://128.65.206.35:555/henro1-cr.exe
		$a_01_1 = {41 72 72 61 79 28 22 61 74 61 44 70 70 41 22 2c 20 22 50 4d 45 54 22 29 } //01 00  Array("ataDppA", "PMET")
		$a_01_2 = {53 74 72 52 65 76 65 72 73 65 } //00 00  StrReverse
		$a_00_3 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}