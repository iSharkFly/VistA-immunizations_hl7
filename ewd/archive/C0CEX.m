C0CEX	  ; CCDCCR/GPL - C0E ROUTINE FOR ^zewd GLOBAL; 3/1/10
 ;;1.0;C0C;;Mar 1, 2010 ;
SETZEWD(ZROUTINE,ZAPP,ZPAGE) ;USED BY THE ZEWD CROSS REFERENCE TO 
 ; SET THE ^zewd GLOBAL FOR EWD FOR A PAGE
 N ZR
 I $G(ZAPP)="" Q  ;
 I $G(ZPAGE)="" Q  ;
 I $G(ZROUTINE)="" Q  ;
 S ZR=$$GET1^DIQ(9.8,ZROUTINE_",",.01,"E") ; EXTERNAL NAME OF ROUTINE
 S ^zewd("routineMap",ZAPP,ZPAGE)=ZR ; SET THE EWD MAPPING GLOBAL
 Q
 ;
KILLZEWD(ZROUTINE,ZAPP,ZPAGE) ;USED BY THE ZEWD CROSS REFERENCE TO
 ; KILL THE ^zewd GLOBAL FOR EWD FOR A PAGE
 I $G(ZAPP)="" Q  ;
 I $G(ZPAGE)="" Q  ;
 K ^zewd("routineMap",ZAPP,ZPAGE)
 Q
