
rule Backdoor_Linux_Gafgyt_H{
	meta:
		description = "Backdoor:Linux/Gafgyt.H,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {6b 69 6c 6c 65 64 20 70 69 64 3a 20 28 25 73 29 } //01 00  killed pid: (%s)
		$a_00_1 = {3c 3d 3e 3f 40 41 42 43 44 45 46 47 4a 49 4d 4f 50 51 52 53 54 55 56 57 58 5b 5c 5e 5f 60 61 62 63 78 79 7a 7b 7c 7d } //02 00  <=>?@ABCDEFGJIMOPQRSTUVWX[\^_`abcxyz{|}
		$a_00_2 = {24 55 49 43 49 44 45 42 4f 59 24 } //01 00  $UICIDEBOY$
		$a_00_3 = {62 6f 74 6e 65 74 } //00 00  botnet
		$a_00_4 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}