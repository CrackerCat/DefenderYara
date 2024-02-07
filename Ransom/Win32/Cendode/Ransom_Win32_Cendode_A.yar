
rule Ransom_Win32_Cendode_A{
	meta:
		description = "Ransom:Win32/Cendode.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 68 65 20 6f 6e 6c 79 20 77 61 79 20 74 6f 20 72 65 73 74 6f 72 65 20 74 68 65 6d 20 2d 20 70 75 72 63 68 61 73 65 20 74 68 65 20 75 6e 69 71 75 65 20 75 6e 6c 6f 63 6b 20 63 6f 64 65 2e } //01 00  The only way to restore them - purchase the unique unlock code.
		$a_01_1 = {42 55 59 55 4e 4c 4f 43 4b 43 4f 44 45 2e 74 78 74 } //01 00  BUYUNLOCKCODE.txt
		$a_01_2 = {61 6c 6c 66 69 6c 65 73 6c 6f 63 6b 65 64 } //01 00  allfileslocked
		$a_01_3 = {2e 65 6e 63 30 64 65 64 } //00 00  .enc0ded
		$a_00_4 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}