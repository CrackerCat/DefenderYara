
rule VirTool_Win32_CeeInject_gen_IN{
	meta:
		description = "VirTool:Win32/CeeInject.gen!IN,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 4b 72 79 70 74 6f 6e 5c 4b 72 79 70 74 6f 6e 5f 37 2e 31 5c 42 69 6e 5c 53 74 75 62 } //01 00  \Krypton\Krypton_7.1\Bin\Stub
		$a_03_1 = {4e 74 57 72 69 74 65 56 69 00 00 90 05 10 01 00 5a 77 50 72 6f 74 65 63 74 56 69 72 00 90 00 } //01 00 
		$a_03_2 = {ff 70 54 ff 75 90 01 01 ff b5 90 01 02 ff ff ff b5 90 01 02 ff ff ff 55 90 01 01 85 c0 0f 8c 90 09 04 00 50 8b 45 90 00 } //01 00 
		$a_00_3 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}