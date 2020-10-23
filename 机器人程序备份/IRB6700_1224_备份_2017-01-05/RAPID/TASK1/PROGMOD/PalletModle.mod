MODULE PalletModle
    
    PROC PlaceLinePro()   
        WaitUntil  PalletTypeNo>0 AND PalletLineNo>0 ;
        !WaitUntil GOutput(CatchSuckNo_Go) > 0 ;
        TEST PalletLineNo
            CASE 1:
                WaitUntil LineA_CountFull=FALSE AND Di16_LineAReady=1;                                                 
                    MoveL ApproachLineA,SpeedMax,z200,tool1\WObj:=wobj0;             
                    wobj_Pallet:=wobj_A;
                    IF LineA_CountNot =FALSE  THEN
                      Incr LineA_Count;  
                    ENDIF
                    LineA_CountNot := FALSE;
                    nCount:=LineA_Count;
                    SetGO LineA_Count_GO,LineA_Count;
                    WaitDI Di16_LineAReady ,1;           
                    PalletPro;                                                 
            CASE 2:
                WaitUntil LineB_CountFull=FALSE AND Di17_LineBReady=1;                                  
                    MoveL ApproachLineA,SpeedMax,z200,tool1\WObj:=wobj0;
                    MoveL ApproachLineB,SpeedMax,z200,tool1\WObj:=wobj0;
                    wobj_Pallet:=wobj_B;
                    IF LineB_CountNot =FALSE  THEN
                      Incr LineB_Count;  
                    ENDIF
                    LineB_CountNot := FALSE;
                    nCount:=LineB_Count;
                    SetGO LineB_Count_GO,LineB_Count;
                    WaitDI Di17_LineBReady ,1;
                    PalletPro;
                   
            CASE 3:
                WaitUntil LineC_CountFull=FALSE AND Di18_LineCReady=1;                                  
                    MoveL ApproachLineA,SpeedMax,z200,tool1\WObj:=wobj0;
                    MoveL ApproachLineC,SpeedMax,z200,tool1\WObj:=wobj0;               
                    wobj_Pallet:=wobj_C;
                    IF LineC_CountNot =FALSE  THEN
                      Incr LineC_Count;  
                    ENDIF
                    LineC_CountNot := FALSE;
                    nCount:=LineC_Count;
                    SetGO LineC_Count_GO,LineC_Count;
                    WaitDI Di18_LineCReady ,1;                    
                    PalletPro;
                                
            CASE 4:
                !bGetPosition:=FALSE;
            DEFAULT:
                TPERASE;
                TPWRITE "The data 'nPallet' is error,please check it!";
                Stop;
            ENDTEST      
    ENDPROC   
            
    
    PROC PalletType1()  
            
            !1Ceng...........
            TEST nCount       
            CASE 1:
                MoveJ Offs(PalletType1Base0,X_OffsGain,Y_OffsGain,Z_OffsGain+TagetBox_Height*1), SpeedMax, z20, tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType1Base0,0,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType1Base0,0,0,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 2:
                 MoveJ Offs(PalletType1Base0,-X_OffsGain - TagetBox_Width,0,Z_OffsGain + TagetBox_Height * 1), SpeedMax, z20, tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType1Base0,-TagetBox_Width,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType1Base0,-TagetBox_Width,0,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
             !2Ceng...........
            CASE 3:
                MoveJ Offs(PalletType1Base0,X_OffsGain,Y_OffsGain,Z_OffsGain+TagetBox_Height*2), SpeedMax, z20, tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType1Base0,0,0,Z_OffsGain+TagetBox_Height*1),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType1Base0,0,0,Z_OffsGain+TagetBox_Height*2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 4:
                 MoveJ Offs(PalletType1Base0,-X_OffsGain-TagetBox_Width,0,Z_OffsGain+TagetBox_Height*2), SpeedMax, z20, tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType1Base0,-TagetBox_Width,0,Z_OffsGain+TagetBox_Height*1),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType1Base0,-TagetBox_Width,0,Z_OffsGain+TagetBox_Height*2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
             !3Ceng...........
            CASE 5:
                MoveJ Offs(PalletType1Base0,X_OffsGain,Y_OffsGain,Z_OffsGain+TagetBox_Height*3), SpeedMax, z20, tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType1Base0,0,0,Z_OffsGain+TagetBox_Height*2),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType1Base0,0,0,Z_OffsGain+TagetBox_Height*3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 6:
                 MoveJ Offs(PalletType1Base0,-X_OffsGain-TagetBox_Width,0,Z_OffsGain+TagetBox_Height*3), SpeedMax, z20, tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType1Base0,-TagetBox_Width,0,Z_OffsGain+TagetBox_Height*2),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType1Base0,-TagetBox_Width,0,Z_OffsGain+TagetBox_Height*3),SpeedMax,fine,tool1\WObj:=wobj_Pallet;
                 TEST PalletLineNo
                  CASE 1:
                    PulseDO\PLength:=2, Do16_Line1CountFull;
                    LineA_CountFull:=TRUE;
                    LineA_Count:=0;
                  CASE 2:            
                   PulseDO\PLength:=2, Do17_Line2CountFull;
                    LineB_CountFull:=TRUE;
                    LineB_Count:=0;
                  CASE 3:
                    PulseDO\PLength:=2, Do18_Line3CountFull;
                    LineC_CountFull:=TRUE;
                    LineC_Count:=0;
                ENDTEST 
            ENDTEST
    ENDPROC
   
    
    PROC PalletType2()
            !1Ceng...........
            TEST nCount       
            CASE 1:
                MoveJ Offs(PalletType2Base0,X_OffsGain,Y_OffsGain,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType2Base0,0,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType2Base0,0,0,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 2:
                MoveJ Offs(PalletType2Base0,-X_OffsGain - TagetBox_Width*1,0,Z_OffsGain + TagetBox_Height * 1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType2Base0,-TagetBox_Width*1,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType2Base0,-TagetBox_Width*1,0,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 3:
                MoveJ Offs(PalletType2Base0,-X_OffsGain - TagetBox_Width*2,0,Z_OffsGain + TagetBox_Height * 1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType2Base0,-TagetBox_Width*2,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType2Base0,-TagetBox_Width*2,0,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            !2Ceng...........  
            CASE 4:
                MoveJ Offs(PalletType2Base0,X_OffsGain,Y_OffsGain,Z_OffsGain+TagetBox_Height*2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType2Base0,0,0,Z_OffsGain+TagetBox_Height*1),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType2Base0,0,0,Z_OffsGain+TagetBox_Height*2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 5:
                MoveJ Offs(PalletType2Base0,-X_OffsGain - TagetBox_Width*1,0,Z_OffsGain + TagetBox_Height * 2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType2Base0,-TagetBox_Width*1,0,Z_OffsGain+TagetBox_Height*1),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType2Base0,-TagetBox_Width*1,0,Z_OffsGain+TagetBox_Height*2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 6:
                MoveJ Offs(PalletType2Base0,-X_OffsGain - TagetBox_Width*2,0,Z_OffsGain + TagetBox_Height * 2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType2Base0,-TagetBox_Width*2,0,Z_OffsGain+TagetBox_Height*1),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType2Base0,-TagetBox_Width*2,0,Z_OffsGain+TagetBox_Height * 2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            !3Ceng...........  
            CASE 7:
                MoveJ Offs(PalletType2Base0,X_OffsGain,Y_OffsGain,Z_OffsGain+TagetBox_Height*3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType2Base0,0,0,Z_OffsGain+TagetBox_Height*2),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType2Base0,0,0,Z_OffsGain+TagetBox_Height*3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 8:
                MoveJ Offs(PalletType2Base0,-X_OffsGain - TagetBox_Width*1,0,Z_OffsGain + TagetBox_Height * 3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType2Base0,-TagetBox_Width*1,0,Z_OffsGain+TagetBox_Height*2),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType2Base0,-TagetBox_Width*1,0,Z_OffsGain+TagetBox_Height*3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 9:
                MoveJ Offs(PalletType2Base0,-X_OffsGain - TagetBox_Width*2,0,Z_OffsGain + TagetBox_Height * 3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType2Base0,-TagetBox_Width*2,0,Z_OffsGain+TagetBox_Height*2),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType2Base0,-TagetBox_Width*2,0,Z_OffsGain+TagetBox_Height * 3),SpeedMax,fine,tool1\WObj:=wobj_Pallet;
                TEST PalletLineNo
                  CASE 1:
                    PulseDO\PLength:=2, Do16_Line1CountFull;
                    LineA_CountFull:=TRUE;
                    LineA_Count:=0;
                  CASE 2:            
                   PulseDO\PLength:=2, Do17_Line2CountFull;
                    LineB_CountFull:=TRUE;
                    LineB_Count:=0;
                  CASE 3:
                    PulseDO\PLength:=2, Do18_Line3CountFull;
                    LineC_CountFull:=TRUE;
                    LineC_Count:=0;
                ENDTEST 
            ENDTEST
    ENDPROC
    
     
     
      PROC PalletType3()
            TEST nCount       
            CASE 1:
                MoveJ Offs(PalletType3Base0,X_OffsGain,Y_OffsGain,Z_OffsGain+TagetBox_Height*1),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType3Base0,0,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType3Base0,0,0,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 2:
                 MoveJ Offs(PalletType3Base0,-X_OffsGain - TagetBox_Width,0,Z_OffsGain + TagetBox_Height * 1),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType3Base0,-TagetBox_Width,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType3Base0,-TagetBox_Width,0,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
             !2Ceng...........
            CASE 3:
                MoveJ Offs(PalletType3Base0,X_OffsGain,Y_OffsGain,Z_OffsGain+TagetBox_Height*2),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType3Base0,0,0,Z_OffsGain+TagetBox_Height*1),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType3Base0,0,0,Z_OffsGain+TagetBox_Height*2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 4:
                MoveJ Offs(PalletType3Base0,-X_OffsGain-TagetBox_Width,0,Z_OffsGain+TagetBox_Height*2),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType3Base0,-TagetBox_Width,0,Z_OffsGain+TagetBox_Height*1),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType3Base0,-TagetBox_Width,0,Z_OffsGain+TagetBox_Height*2),SpeedMax,fine,tool1\WObj:=wobj_Pallet;
                 TEST PalletLineNo
                  CASE 1:
                    PulseDO\PLength:=2, Do16_Line1CountFull;
                    LineA_CountFull:=TRUE;
                    LineA_Count:=0;
                  CASE 2:            
                   PulseDO\PLength:=2, Do17_Line2CountFull;
                    LineB_CountFull:=TRUE;
                    LineB_Count:=0;
                  CASE 3:
                    PulseDO\PLength:=2, Do18_Line3CountFull;
                    LineC_CountFull:=TRUE;
                    LineC_Count:=0;
                ENDTEST 
            ENDTEST
      ENDPROC
      
        
        
         PROC PalletType5()
            
            TEST nCount     
            CASE 1:
                MoveJ Offs(PalletType5Base0,0,0,Z_OffsGain + TagetBox_Height * 1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base0,0,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base0,0,0,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 2:
                MoveJ Offs(PalletType5Base0,X_OffsGain,Y_OffsGain+TagetBox_Width*1,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base0,0,TagetBox_Width*1,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 3:
                MoveJ Offs(PalletType5Base180,-X_OffsGain,-Y_OffsGain,Z_OffsGain + TagetBox_Height * 1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base180,0,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base180,0,0,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 4:
                MoveJ Offs(PalletType5Base180,-X_OffsGain,-Y_OffsGain - TagetBox_Width * 1 + 10,Z_OffsGain + TagetBox_Height * 1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base180,0,-TagetBox_Width * 1,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base180,0,-TagetBox_Width*1,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
             !!!!2*Ceng
            CASE 5:
                MoveJ Offs(PalletType5Base0,0,0,Z_OffsGain + TagetBox_Height * 2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base0,0,0,Z_OffsGain+TagetBox_Height*1),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base0,0,0,Z_OffsGain+TagetBox_Height*2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 6:
                MoveJ Offs(PalletType5Base0,X_OffsGain,Y_OffsGain+TagetBox_Width*1,Z_OffsGain+TagetBox_Height*2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*1),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 7:
                MoveJ Offs(PalletType5Base180,-X_OffsGain,-Y_OffsGain,Z_OffsGain+TagetBox_Height*2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base180,0,0,Z_OffsGain+TagetBox_Height*1),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base180,0,0,Z_OffsGain+TagetBox_Height*2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 8:
                MoveJ Offs(PalletType5Base180,-X_OffsGain,-Y_OffsGain - TagetBox_Width * 1 + 10,Z_OffsGain + TagetBox_Height * 2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base180,0,-TagetBox_Width * 1,Z_OffsGain+TagetBox_Height*1),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base180,0,-TagetBox_Width*1,Z_OffsGain+TagetBox_Height*2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
           !!!!3*Ceng
           CASE 9:
                MoveJ Offs(PalletType5Base0,0,0,Z_OffsGain + TagetBox_Height * 3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base0,0,0,Z_OffsGain+TagetBox_Height*2),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base0,0,0,Z_OffsGain+TagetBox_Height*3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 10:
                MoveJ Offs(PalletType5Base0,X_OffsGain,Y_OffsGain+TagetBox_Width*1,Z_OffsGain+TagetBox_Height*3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*2),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 11:
                MoveJ Offs(PalletType5Base180,-X_OffsGain,-Y_OffsGain,Z_OffsGain+TagetBox_Height*3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base180,0,0,Z_OffsGain+TagetBox_Height*2),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base180,0,0,Z_OffsGain+TagetBox_Height*3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 12:
                MoveJ Offs(PalletType5Base180,-X_OffsGain,-Y_OffsGain - TagetBox_Width * 1 + 10,Z_OffsGain + TagetBox_Height * 3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base180,0,-TagetBox_Width * 1,Z_OffsGain+TagetBox_Height*2),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base180,0,-TagetBox_Width*1,Z_OffsGain+TagetBox_Height*3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
           !!!!4*Ceng
            CASE 13:
                MoveJ Offs(PalletType5Base0,0,0,Z_OffsGain + TagetBox_Height * 4),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base0,0,0,Z_OffsGain+TagetBox_Height*3),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base0,0,0,Z_OffsGain+TagetBox_Height*4),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 14:
                MoveJ Offs(PalletType5Base0,X_OffsGain,Y_OffsGain+TagetBox_Width*1,Z_OffsGain+TagetBox_Height*4),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*3),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*4),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 15:
                MoveJ Offs(PalletType5Base180,-X_OffsGain,-Y_OffsGain,Z_OffsGain+TagetBox_Height*4),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base180,0,0,Z_OffsGain+TagetBox_Height*3),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base180,0,0,Z_OffsGain+TagetBox_Height*4),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 16:
                MoveJ Offs(PalletType5Base180,-X_OffsGain,-Y_OffsGain - TagetBox_Width * 1 + 10,Z_OffsGain + TagetBox_Height * 4),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base180,0,-TagetBox_Width * 1,Z_OffsGain+TagetBox_Height*3),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base180,0,-TagetBox_Width*1,Z_OffsGain+TagetBox_Height*4),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
           !!!!5*Ceng
            CASE 17:
                MoveJ Offs(PalletType5Base0,0,0,Z_OffsGain + TagetBox_Height * 5),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base0,0,0,Z_OffsGain+TagetBox_Height*4),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base0,0,0,Z_OffsGain+TagetBox_Height*5),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 18:
                MoveJ Offs(PalletType5Base0,X_OffsGain,Y_OffsGain+TagetBox_Width*1,Z_OffsGain+TagetBox_Height*5),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*4),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*5),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 19:
                MoveJ Offs(PalletType5Base180,-X_OffsGain,-Y_OffsGain,Z_OffsGain+TagetBox_Height*5),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base180,0,0,Z_OffsGain+TagetBox_Height*4),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base180,0,0,Z_OffsGain+TagetBox_Height*5),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 20:
                MoveJ Offs(PalletType5Base180,-X_OffsGain,-Y_OffsGain - TagetBox_Width * 1 + 10,Z_OffsGain + TagetBox_Height * 5),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType5Base180,0,-TagetBox_Width * 1,Z_OffsGain+TagetBox_Height*4),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType5Base180,0,-TagetBox_Width*1,Z_OffsGain+TagetBox_Height*5),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                TEST PalletLineNo
                  CASE 1:
                    PulseDO\PLength:=2, Do16_Line1CountFull;
                    LineA_CountFull:=TRUE;
                    LineA_Count:=0;
                  CASE 2:            
                   PulseDO\PLength:=2, Do17_Line2CountFull;
                    LineB_CountFull:=TRUE;
                    LineB_Count:=0;
                  CASE 3:
                    PulseDO\PLength:=2, Do18_Line3CountFull;
                    LineC_CountFull:=TRUE;
                    LineC_Count:=0;
                ENDTEST 
          ENDTEST
         ENDPROC
         
          PROC PalletType6() 
             TEST nCount
            CASE 1:
                MoveJ Offs(PalletType6Base0,-X_OffsGain,-Y_OffsGain,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType6Base0,0,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType6Base0,0,0,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 2:
                MoveJ Offs(PalletType6Base0,-X_OffsGain,-Y_OffsGain-TagetBox_Height*1,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType6Base0,0,-TagetBox_Height*1,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType6Base0,0,-TagetBox_Height*1,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 3:
                MoveJ Offs(PalletType6Base0,-X_OffsGain,-Y_OffsGain-TagetBox_Height*2,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType6Base0,0,-TagetBox_Height*2,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType6Base0,0,-TagetBox_Height*2,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 4:
                MoveJ Offs(PalletType6Base180,-X_OffsGain,Y_OffsGain,Z_OffsGain + TagetBox_Width * 1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType6Base180,0,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType6Base180,0,0,TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 5:
                MoveJ Offs(PalletType6Base180,-X_OffsGain,Y_OffsGain + TagetBox_Height * 1,Z_OffsGain + TagetBox_Width * 1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType6Base180,0,TagetBox_Height*1,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType6Base180,0,TagetBox_Height*1,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 6:
                MoveJ Offs(PalletType6Base180,-X_OffsGain,Y_OffsGain + TagetBox_Height * 2,Z_OffsGain + TagetBox_Width * 1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType6Base180,0,TagetBox_Height*2,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType6Base180,0,TagetBox_Height*2,Z_OffsGain+TagetBox_Width*1),SpeedMax,fine,tool1\WObj:=wobj_Pallet;
                 TEST PalletLineNo
                  CASE 1:
                    PulseDO\PLength:=2, Do16_Line1CountFull;
                    LineA_CountFull:=TRUE;
                    LineA_Count:=0;
                  CASE 2:            
                   PulseDO\PLength:=2, Do17_Line2CountFull;
                    LineB_CountFull:=TRUE;
                    LineB_Count:=0;
                  CASE 3:
                    PulseDO\PLength:=2, Do18_Line3CountFull;
                    LineC_CountFull:=TRUE;
                    LineC_Count:=0;
                ENDTEST 
             ENDTEST           
          ENDPROC
          
           PROC PalletType7()
            
           TEST nCount
            CASE 1:
                MoveJ Offs(PalletType7Base0,-X_OffsGain,-Y_OffsGain,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType7Base0,0,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType7Base0,0,0,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 2:
                MoveJ Offs(PalletType7Base0,-X_OffsGain,-Y_OffsGain-TagetBox_Height*1,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType7Base0,0,-TagetBox_Height*1,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType7Base0,0,-TagetBox_Height*1,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 3:
                MoveJ Offs(PalletType7Base0,-X_OffsGain,-Y_OffsGain-TagetBox_Height*2,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType7Base0,0,-TagetBox_Height*2,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType7Base0,0,-TagetBox_Height*2,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 4:
                MoveJ Offs(PalletType7Base180,-X_OffsGain,Y_OffsGain,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType7Base180,0,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType7Base180,0,0,TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 5:
                MoveJ Offs(PalletType7Base180,-X_OffsGain,Y_OffsGain+TagetBox_Height*1,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType7Base180,0,TagetBox_Height*1,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType7Base180,0,TagetBox_Height*1,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 6:
                MoveJ Offs(PalletType7Base180,-X_OffsGain,Y_OffsGain + TagetBox_Height * 2,Z_OffsGain + TagetBox_Width * 1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType7Base180,0,TagetBox_Height*2,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType7Base180,0,TagetBox_Height*2,Z_OffsGain+TagetBox_Width*1),SpeedMax,fine,tool1\WObj:=wobj_Pallet;
                 TEST PalletLineNo
                  CASE 1:
                    PulseDO\PLength:=2, Do16_Line1CountFull;
                    LineA_CountFull:=TRUE;
                    LineA_Count:=0;
                  CASE 2:            
                   PulseDO\PLength:=2, Do17_Line2CountFull;
                    LineB_CountFull:=TRUE;
                    LineB_Count:=0;
                  CASE 3:
                    PulseDO\PLength:=2, Do18_Line3CountFull;
                    LineC_CountFull:=TRUE;
                    LineC_Count:=0;
                ENDTEST 
           ENDTEST
           ENDPROC
           
           PROC PalletType8()
            
             TEST nCount
            CASE 1:
                MoveJ Offs(PalletType8Base0,X_OffsGain,Y_OffsGain,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType8Base0,0,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType8Base0,0,0,Z_OffsGain + TagetBox_Width * 1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 2:
                MoveJ Offs(PalletType8Base180,-X_OffsGain,Y_OffsGain,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType8Base180,0,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType8Base180,0,0,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 3:
                MoveJ Offs(PalletType8Base90,X_OffsGain,Y_OffsGain,Z_OffsGain + TagetBox_Width * 1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType8Base90,0,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType8Base90,0,0,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 4:
                MoveJ Offs(PalletType8Base90,X_OffsGain + TagetBox_Height * 1,Y_OffsGain,Z_OffsGain + TagetBox_Width * 1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType8Base90,TagetBox_Height*1,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType8Base90,TagetBox_Height*1,0,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 5:
                MoveJ Offs(PalletType8Base90,X_OffsGain + TagetBox_Height * 2,Y_OffsGain,Z_OffsGain + TagetBox_Width * 1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType8Base90,TagetBox_Height*2,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType8Base90,TagetBox_Height*2,0,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 6:
                MoveJ Offs(PalletType8Base90,X_OffsGain + TagetBox_Height * 3,Y_OffsGain,Z_OffsGain + TagetBox_Width * 1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType8Base90,TagetBox_Height*3,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType8Base90,TagetBox_Height*3,0,Z_OffsGain+TagetBox_Width*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 7:
                MoveJ Offs(PalletType8Base90,X_OffsGain + TagetBox_Height * 4,Y_OffsGain,Z_OffsGain + TagetBox_Width * 1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType8Base90,TagetBox_Height*4,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType8Base90,TagetBox_Height*4,0,Z_OffsGain+TagetBox_Width*1),SpeedMax,fine,tool1\WObj:=wobj_Pallet; 
                 TEST PalletLineNo
                  CASE 1:
                    PulseDO\PLength:=2, Do16_Line1CountFull;
                    LineA_CountFull:=TRUE;
                    LineA_Count:=0;
                  CASE 2:            
                   PulseDO\PLength:=2, Do17_Line2CountFull;
                    LineB_CountFull:=TRUE;
                    LineB_Count:=0;
                  CASE 3:
                    PulseDO\PLength:=2, Do18_Line3CountFull;
                    LineC_CountFull:=TRUE;
                    LineC_Count:=0;
                ENDTEST 
          ENDTEST
           ENDPROC  
           
            
            
            PROC PalletType4()
             !!!!1*Ceng
            TEST nCount     
            CASE 1:
                MoveJ Offs(PalletType4Base0,0,0,Z_OffsGain + TagetBox_Height * 1),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base0,0,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base0,0,0,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 2:
                MoveJ Offs(PalletType4Base0,X_OffsGain,Y_OffsGain+TagetBox_Width*1,Z_OffsGain+TagetBox_Height*1),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base0,0,TagetBox_Width*1,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 3:
                MoveJ Offs(PalletType4Base180,-X_OffsGain,-Y_OffsGain,Z_OffsGain + TagetBox_Height * 1),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base180,0,0,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base180,0,0,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 4:
                MoveJ Offs(PalletType4Base180,-X_OffsGain,-Y_OffsGain - TagetBox_Width * 1 + 10,Z_OffsGain + TagetBox_Height * 1),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base180,0,-TagetBox_Width * 1,Z_OffsGain),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base180,0,-TagetBox_Width*1,Z_OffsGain+TagetBox_Height*1),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
             !!!!2*Ceng
            CASE 5:
                MoveJ Offs(PalletType4Base0,0,0,Z_OffsGain + TagetBox_Height * 2),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base0,0,0,Z_OffsGain+TagetBox_Height*1),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base0,0,0,Z_OffsGain+TagetBox_Height*2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 6:
                MoveJ Offs(PalletType4Base0,X_OffsGain,Y_OffsGain+TagetBox_Width*1,Z_OffsGain+TagetBox_Height*2),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*1),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 7:
                MoveJ Offs(PalletType4Base180,-X_OffsGain,-Y_OffsGain,Z_OffsGain+TagetBox_Height*2),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base180,0,0,Z_OffsGain+TagetBox_Height*1),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base180,0,0,Z_OffsGain+TagetBox_Height*2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 8:
                MoveJ Offs(PalletType4Base180,-X_OffsGain,-Y_OffsGain - TagetBox_Width * 1 + 10,Z_OffsGain + TagetBox_Height * 2),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base180,0,-TagetBox_Width * 1,Z_OffsGain+TagetBox_Height*1),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base180,0,-TagetBox_Width*1,Z_OffsGain+TagetBox_Height*2),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
           !!!!3*Ceng
           CASE 9:
                MoveJ Offs(PalletType4Base0,0,0,Z_OffsGain + TagetBox_Height * 3),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base0,0,0,Z_OffsGain+TagetBox_Height*2),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base0,0,0,Z_OffsGain+TagetBox_Height*3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 10:
                MoveJ Offs(PalletType4Base0,X_OffsGain,Y_OffsGain+TagetBox_Width*1,Z_OffsGain+TagetBox_Height*3),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*2),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 11:
                MoveJ Offs(PalletType4Base180,-X_OffsGain,-Y_OffsGain,Z_OffsGain+TagetBox_Height*3),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base180,0,0,Z_OffsGain+TagetBox_Height*2),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base180,0,0,Z_OffsGain+TagetBox_Height*3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 12:
                MoveJ Offs(PalletType4Base180,-X_OffsGain,-Y_OffsGain - TagetBox_Width * 1 + 10,Z_OffsGain + TagetBox_Height * 3),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base180,0,-TagetBox_Width * 1,Z_OffsGain+TagetBox_Height*2),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base180,0,-TagetBox_Width*1,Z_OffsGain+TagetBox_Height*3),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
           !!!!4*Ceng
            CASE 13:
                MoveJ Offs(PalletType4Base0,0,0,Z_OffsGain + TagetBox_Height * 4),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base0,0,0,Z_OffsGain+TagetBox_Height*3),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base0,0,0,Z_OffsGain+TagetBox_Height*4),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 14:
                MoveJ Offs(PalletType4Base0,X_OffsGain,Y_OffsGain+TagetBox_Width*1,Z_OffsGain+TagetBox_Height*4),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*3),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*4),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 15:
                MoveJ Offs(PalletType4Base180,-X_OffsGain,-Y_OffsGain,Z_OffsGain+TagetBox_Height*4),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base180,0,0,Z_OffsGain+TagetBox_Height*3),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base180,0,0,Z_OffsGain+TagetBox_Height*4),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 16:
                MoveJ Offs(PalletType4Base180,-X_OffsGain,-Y_OffsGain - TagetBox_Width * 1 + 10,Z_OffsGain + TagetBox_Height * 4),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base180,0,-TagetBox_Width * 1,Z_OffsGain+TagetBox_Height*3),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base180,0,-TagetBox_Width*1,Z_OffsGain+TagetBox_Height*4),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
           !!!!5*Ceng
            CASE 17:
                MoveJ Offs(PalletType4Base0,0,0,Z_OffsGain + TagetBox_Height * 5),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base0,0,0,Z_OffsGain+TagetBox_Height*4),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base0,0,0,Z_OffsGain+TagetBox_Height*5),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 18:
                MoveJ Offs(PalletType4Base0,X_OffsGain,Y_OffsGain+TagetBox_Width*1,Z_OffsGain+TagetBox_Height*5),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*4),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base0,0,TagetBox_Width*1,Z_OffsGain+TagetBox_Height*5),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 19:
                MoveJ Offs(PalletType4Base180,-X_OffsGain,-Y_OffsGain,Z_OffsGain+TagetBox_Height*5),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base180,0,0,Z_OffsGain+TagetBox_Height*4),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base180,0,0,Z_OffsGain+TagetBox_Height*5),SpeedMax,z50,tool1\WObj:=wobj_Pallet;
            CASE 20:
                MoveJ Offs(PalletType4Base180,-X_OffsGain,-Y_OffsGain - TagetBox_Width * 1 + 10,Z_OffsGain + TagetBox_Height * 5),SpeedMax,z20,tool1\WObj:=wobj_Pallet;
                MoveL Offs(PalletType4Base180,0,-TagetBox_Width * 1,Z_OffsGain+TagetBox_Height*4),v400,fine,tool1\WObj:=wobj_Pallet;
                CatchSuckOffPro;
                MoveJ Offs(PalletType4Base180,0,-TagetBox_Width*1,Z_OffsGain+TagetBox_Height*5),SpeedMax,fine,tool1\WObj:=wobj_Pallet;
                 TEST PalletLineNo
                  CASE 1:
                    PulseDO\PLength:=2, Do16_Line1CountFull;
                    LineA_CountFull:=TRUE;
                    LineA_Count:=0;
                  CASE 2:            
                   PulseDO\PLength:=2, Do17_Line2CountFull;
                    LineB_CountFull:=TRUE;
                    LineB_Count:=0;
                  CASE 3:
                    PulseDO\PLength:=2, Do18_Line3CountFull;
                    LineC_CountFull:=TRUE;
                    LineC_Count:=0;
                ENDTEST 
          ENDTEST
        ENDPROC
        PROC PalletPro()   
        !!!Box7,8,9,14,15_PalletType4!!!
        TEST PalletTypeNo  
            CASE 1,2,3,5:
             PalletType1;
            CASE 4:
             PalletType2;
            CASE 6:
             PalletType3;
            CASE 7,8,9,14,15:
             PalletType4; 
            CASE 10:
             PalletType5; 
            CASE 11:
             PalletType6;
            CASE 12:
             PalletType7;
            CASE 13:
             PalletType8;
        ENDTEST
        PulseDO\PLength:=2, Do24_PalletOver;     
    ENDPROC
     PROC PalletCountPro()
        WaitUntil  PalletTypeNo>0 AND PalletLineNo>0  ;  
        TEST PalletLineNo
        CASE 1:
            !Incr LineA_Count;
            IF PalletTypeNo=1 OR PalletTypeNo=2 OR PalletTypeNo=3 OR PalletTypeNo=5 OR PalletTypeNo=11 OR PalletTypeNo=12 THEN
                IF LineA_Count>=6 THEN
                    PulseDO\PLength:=2, Do16_Line1CountFull;
                    LineA_CountFull:=TRUE;
                    LineA_Count:=0;
                ENDIF
            ELSEIF PalletTypeNo=6 THEN
                IF LineA_Count>=4 THEN
                    PulseDO\PLength:=2, Do16_Line1CountFull;
                    LineA_CountFull:=TRUE;
                    LineA_Count:=0;
                ENDIF
            ELSEIF PalletTypeNo=7 OR PalletTypeNo=8 OR PalletTypeNo=9 THEN
                IF LineA_Count>=20 THEN
                    PulseDO\PLength:=2, Do16_Line1CountFull;
                    LineA_CountFull:=TRUE;
                    LineA_Count:=0;
                ENDIF
            ELSEIF PalletTypeNo=13 THEN
                IF LineA_Count>=7 THEN
                    PulseDO\PLength:=2, Do16_Line1CountFull;
                    LineA_CountFull:=TRUE;
                    LineA_Count:=0;
                ENDIF
            ENDIF
           
        CASE 2:
            !Incr LineB_Count;
            IF PalletTypeNo=1 OR PalletTypeNo=2 OR PalletTypeNo=3 OR PalletTypeNo=5 OR PalletTypeNo=11 OR PalletTypeNo=12 THEN
                IF LineB_Count>=6 THEN
                   PulseDO\PLength:=2, Do17_Line2CountFull;
                    LineB_CountFull:=TRUE;
                    LineB_Count:=0;
                ENDIF
            ELSEIF PalletTypeNo=6 THEN
                IF LineB_Count>=4 THEN
                    PulseDO\PLength:=2, Do17_Line2CountFull;
                    LineB_CountFull:=TRUE;
                    LineB_Count:=0;
                ENDIF
            ELSEIF PalletTypeNo=7 OR PalletTypeNo=8 OR PalletTypeNo=9 THEN
                IF LineB_Count>=20 THEN
                    PulseDO\PLength:=2, Do17_Line2CountFull;
                    LineB_CountFull:=TRUE;
                    LineB_Count:=0;
                ENDIF
                ELSEIF PalletTypeNo=13 THEN
                IF LineB_Count>=7 THEN
                    PulseDO\PLength:=2, Do17_Line2CountFull;
                    LineB_CountFull:=TRUE;
                    LineB_Count:=0;
                ENDIF
            ENDIF
            
        CASE 3:
            !Incr LineC_Count;
            IF PalletTypeNo=1 OR PalletTypeNo=2 OR PalletTypeNo=3 OR PalletTypeNo=5 OR PalletTypeNo=11 OR PalletTypeNo=12 THEN
                IF LineC_Count>=6 THEN
                    PulseDO\PLength:=2, Do18_Line3CountFull;
                    LineC_CountFull:=TRUE;
                    LineC_Count:=0;
                ENDIF
            ELSEIF PalletTypeNo=6 THEN
                IF LineC_Count>=4 THEN
                    PulseDO\PLength:=2, Do18_Line3CountFull;
                    LineC_CountFull:=TRUE;
                    LineC_Count:=0;
                ENDIF
            ELSEIF PalletTypeNo=7 OR PalletTypeNo=8 OR PalletTypeNo=9 THEN
                IF LineC_Count>=20 THEN
                    PulseDO\PLength:=2, Do18_Line3CountFull;
                    LineC_CountFull:=TRUE;
                    LineC_Count:=0;
                ENDIF
            ELSEIF PalletTypeNo=13 THEN
                IF LineC_Count>=7 THEN
                    PulseDO\PLength:=2, Do18_Line3CountFull;
                    LineC_CountFull:=TRUE;
                    LineC_Count:=0;
                ENDIF
            ENDIF

        DEFAULT:
            TPERASE;
            TPWRITE "The data 'nPalletNo' is error,please check it!";
            Stop;
        ENDTEST
        PalletTypeNo:= 0;
        PalletLineNo:= 0;
    ENDPROC
    
    
    
    
ENDMODULE