C0Q1P5	; VEN/SMH - KIDS not transporting Security Codes; workaround. ; 10/17/12 12:12pm
	;;1.0;QUALITY MEASURES;**5**;Oct 17, 2012
	;;
	; PEPs: TRAN, POST
	;
	; ZEXCEPT: XPDGREF
TRAN	; Pre-transport hook
	M @XPDGREF@(1130580001.101)=^DIC(1130580001.101)
	M @XPDGREF@(1130580001.201)=^DIC(1130580001.201)
	M @XPDGREF@(1130580001.401)=^DIC(1130580001.401)
	QUIT
	;
	; ZEXCEPT: XPDGREF
POST	; Post-install hook
	M ^DIC(1130580001.101)=@XPDGREF@(1130580001.101)
	M ^DIC(1130580001.201)=@XPDGREF@(1130580001.201)
	M ^DIC(1130580001.401)=@XPDGREF@(1130580001.401)
	QUIT
