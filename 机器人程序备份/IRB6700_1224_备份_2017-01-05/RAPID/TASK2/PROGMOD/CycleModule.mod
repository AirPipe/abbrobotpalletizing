
MODULE CycleModule
    PERS bool LineA_CountFull:=FALSE;
    PERS bool LineB_CountFull:=FALSE;
    PERS bool LineC_CountFull:=FALSE;
    PERS bool LineA_CountNot:=FALSE;
    PERS bool LineB_CountNot:=FALSE;
    PERS bool LineC_CountNot:=FALSE; 
    PERS num LineA_Count:=4;
    PERS num LineB_Count:=1;
    PERS num LineC_Count:=2;
	PROC CycleMain()
    ResetCount; 
	ENDPROC
 PROC ResetCount()
    IF Di13_LineAReadyPluse = 1 THEN
       LineA_CountFull:=FALSE;
       LineA_Count:=0;
       LineA_CountNot := FALSE;
      ENDIF  
      IF Di14_LineBReadyPluse = 1 THEN
       LineB_CountFull:=FALSE;
       LineB_Count:=0;
       LineB_CountNot := FALSE;
      ENDIF  
      IF Di15_LineCReadyPluse = 1 THEN
       LineC_CountFull:=FALSE;
       LineC_Count:=0;
       LineC_CountNot := FALSE;
      ENDIF  
      
  ENDPROC
ENDMODULE