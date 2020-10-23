MODULE CatchModle
    
    PROC PickPro()
        WaitUntil  PalletTypeNo>0 AND PalletLineNo>0 AND DI23_AllowCatchBox=1 ;     
        MoveAbsJ CatchHome\NoEOffs, SpeedMax, z100, tool1;
        WaitTime 0;
        TEST PalletTypeNo
   	     CASE 1:       
            TagetBox_Width:=TagetBox1_Width;
            TagetBox_Long:=TagetBox1_Long;
            TagetBox_Height:=TagetBox1_Height;
            AbovePick_TagetPos:=Offs(AbovePick_Base90Pos,AbovePick90OffsX + (TagetBox_Long -610) / 2,AbovePick90OffsY - (TagetBox_Width - 400 ) / 2,AbovePick90OffsZ + TagetBox_Height);
            X_OffsGain:=X1_OffsGain;
            Y_OffsGain:=Y1_OffsGain;
            Z_OffsGain:=Z1_OffsGain;  
            PalletType1Base0:=Box1Base0; 
            AbovePick90Pro;
         CASE 2:
            TagetBox_Width:=TagetBox2_Width;
            TagetBox_Long:=TagetBox2_Long;
            TagetBox_Height:=TagetBox2_Height;
            AbovePick_TagetPos:=Offs(AbovePick_Base90Pos,AbovePick90OffsX + (TagetBox_Long -610) / 2,AbovePick90OffsY - (TagetBox_Width - 400 ) / 2,AbovePick90OffsZ + TagetBox_Height);
            X_OffsGain:=X2_OffsGain;
            Y_OffsGain:=Y2_OffsGain;
            Z_OffsGain:=Z2_OffsGain;  
            PalletType1Base0:=Box2Base0;           
            AbovePick90Pro;
         CASE 3:
            TagetBox_Width:=TagetBox3_Width;
            TagetBox_Long:=TagetBox3_Long;
            TagetBox_Height:=TagetBox3_Height;
            AbovePick_TagetPos:=Offs(AbovePick_Base90Pos,AbovePick90OffsX + (TagetBox_Long -610) / 2,AbovePick90OffsY - (TagetBox_Width - 400 ) / 2,AbovePick90OffsZ + TagetBox_Height);
            X_OffsGain:=X3_OffsGain;
            Y_OffsGain:=Y3_OffsGain;
            Z_OffsGain:=Z3_OffsGain;  
            PalletType1Base0:=Box3Base0;   
            AbovePick90Pro;
         CASE 4:
            TagetBox_Width:=TagetBox4_Width;
            TagetBox_Long:=TagetBox4_Long;
            TagetBox_Height:=TagetBox4_Height;
            AbovePick_TagetPos:=Offs(AbovePick_Base90Pos,AbovePick90OffsX + (TagetBox_Long -610) / 2,AbovePick90OffsY - (TagetBox_Width - 400 ) / 2,AbovePick90OffsZ + TagetBox_Height);
            X_OffsGain:=X4_OffsGain;
            Y_OffsGain:=Y4_OffsGain;
            Z_OffsGain:=Z4_OffsGain;  
            PalletType2Base0:=Box4Base0;  
            AbovePick90Pro;
         CASE 5:
            TagetBox_Width:=TagetBox5_Width;
            TagetBox_Long:=TagetBox5_Long;
            TagetBox_Height:=TagetBox5_Height;
            AbovePick_TagetPos:=Offs(AbovePick_Base90Pos,AbovePick90OffsX + (TagetBox_Long -610) / 2,AbovePick90OffsY - (TagetBox_Width - 400 ) / 2,AbovePick90OffsZ + TagetBox_Height);
            X_OffsGain:=X5_OffsGain;
            Y_OffsGain:=Y5_OffsGain;
            Z_OffsGain:=Z5_OffsGain;  
            PalletType1Base0:=Box5Base0; 
            AbovePick90Pro;
         CASE 6:
            TagetBox_Width:=TagetBox6_Width;
            TagetBox_Long:=TagetBox6_Long;
            TagetBox_Height:=TagetBox6_Height;
            AbovePick_TagetPos:=Offs(AbovePick_Base90Pos,AbovePick90OffsX + (TagetBox_Long -610) / 2,AbovePick90OffsY - (TagetBox_Width - 400 ) / 2,AbovePick90OffsZ + TagetBox_Height);
            X_OffsGain:=X6_OffsGain;
            Y_OffsGain:=Y6_OffsGain;
            Z_OffsGain:=Z6_OffsGain;  
            PalletType3Base0:=Box6Base0;
            AbovePick90Pro;
         CASE 7:
            TagetBox_Width:=TagetBox7_Width;
            TagetBox_Long:=TagetBox7_Long;
            TagetBox_Height:=TagetBox7_Height;
            AbovePick_TagetPos:=Offs(AbovePick_Base0Pos,AbovePick0OffsX + (TagetBox_Long -400) / 2,AbovePick0OffsY - (TagetBox_Width - 200 ) / 2,AbovePick0OffsZ + TagetBox_Height);
            X_OffsGain:=X7_OffsGain;
            Y_OffsGain:=Y7_OffsGain;
            Z_OffsGain:=Z7_OffsGain;  
            PalletType4Base0:=Box7Base0;
            PalletType4Base180:=Box7Base180;
            AbovePick0Pro;
         CASE 8:
            TagetBox_Width:=TagetBox8_Width;
            TagetBox_Long:=TagetBox8_Long;
            TagetBox_Height:=TagetBox8_Height;
            AbovePick_TagetPos:=Offs(AbovePick_Base0Pos,AbovePick0OffsX + (TagetBox_Long -400) / 2,AbovePick0OffsY - (TagetBox_Width - 200 ) / 2,AbovePick0OffsZ + TagetBox_Height);
            X_OffsGain:=X8_OffsGain;
            Y_OffsGain:=Y8_OffsGain;
            Z_OffsGain:=Z8_OffsGain;  
            PalletType4Base0:=Box8Base0;
            PalletType4Base180:=Box8Base180;
            AbovePick0Pro;
         CASE 9:
            TagetBox_Width:=TagetBox9_Width;
            TagetBox_Long:=TagetBox9_Long;
            TagetBox_Height:=TagetBox9_Height;
            AbovePick_TagetPos:=Offs(AbovePick_Base0Pos,AbovePick0OffsX + (TagetBox_Long -400) / 2,AbovePick0OffsY - (TagetBox_Width - 200 ) / 2,AbovePick0OffsZ + TagetBox_Height);
            X_OffsGain:=X9_OffsGain;
            Y_OffsGain:=Y9_OffsGain;
            Z_OffsGain:=Z9_OffsGain;  
            PalletType4Base0:=Box9Base0;
            PalletType4Base180:=Box9Base180;
            AbovePick0Pro;             
         !!NO USE
         CASE 10:
            TagetBox_Width:=TagetBox10_Width;
            TagetBox_Long:=TagetBox10_Long;
            TagetBox_Height:=TagetBox10_Height;
            AbovePick_TagetPos:=Offs(AbovePick_Base0Pos,AbovePick0OffsX + (TagetBox_Long -400) / 2,AbovePick0OffsY - (TagetBox_Width - 200 ) / 2,AbovePick0OffsZ + TagetBox_Height);
            X_OffsGain:=X10_OffsGain;
            Y_OffsGain:=Y10_OffsGain;
            Z_OffsGain:=Z10_OffsGain;  
            PalletType5Base0:=Box10Base0;
            PalletType5Base180:=Box10Base180;
            AbovePick0Pro;
            !!!!Level!!
         CASE 11:
            TagetBox_Width:=TagetBox11_Width;
            TagetBox_Long:=TagetBox11_Long;
            TagetBox_Height:=TagetBox11_Height;
            AbovePick_TagetPos:=Offs(AbovePick_Base0Pos,AbovePick0OffsX + (TagetBox_Width - 400) / 2,AbovePick0OffsY - (TagetBox_Long - 200) / 2,AbovePick0OffsZ + TagetBox_Height);
            LevelPick_TagetPos:=Offs(LevelPick_BasePos,LevelPickOffsX,LevelPickOffsY - TagetBox_Width,LevelPickOffsZ);        
            X_OffsGain:=X11_OffsGain;
            Y_OffsGain:=Y11_OffsGain;
            Z_OffsGain:=Z11_OffsGain;  
            PalletType6Base0:=Box11Base0;
            PalletType6Base180:=Box11Base180;
            LevelPickPro;
         CASE 12:
            TagetBox_Width:=TagetBox12_Width;
            TagetBox_Long:=TagetBox12_Long;
            TagetBox_Height:=TagetBox12_Height;
            AbovePick_TagetPos:=Offs(AbovePick_Base0Pos,AbovePick0OffsX + (TagetBox_Width - 400) / 2,AbovePick0OffsY - (TagetBox_Long - 200) / 2,AbovePick0OffsZ + TagetBox_Height);
            LevelPick_TagetPos:=Offs(LevelPick_BasePos,LevelPickOffsX,LevelPickOffsY - TagetBox_Width,LevelPickOffsZ);  
            X_OffsGain:=X12_OffsGain;
            Y_OffsGain:=Y12_OffsGain;
            Z_OffsGain:=Z12_OffsGain;  
            PalletType7Base0:=Box12Base0;
            PalletType7Base180:=Box12Base180;
            LevelPickPro;
         CASE 13:
            TagetBox_Width:=TagetBox13_Width;
            TagetBox_Long:=TagetBox13_Long;
            TagetBox_Height:=TagetBox13_Height;
            AbovePick_TagetPos:=Offs(AbovePick_Base0Pos,AbovePick0OffsX + (TagetBox_Width - 400) / 2,AbovePick0OffsY - (TagetBox_Long - 200) / 2,AbovePick0OffsZ + TagetBox_Height);
            LevelPick_TagetPos:=Offs(LevelPick_BasePos,LevelPickOffsX,LevelPickOffsY - TagetBox_Width,LevelPickOffsZ);  
            X_OffsGain:=X13_OffsGain;
            Y_OffsGain:=Y13_OffsGain;
            Z_OffsGain:=Z13_OffsGain;  
            PalletType8Base0:=Box13Base0;
            PalletType8Base90:=Box13Base90;
            PalletType8Base180:=Box13Base180;
            LevelPickPro;  
         CASE 14:
            TagetBox_Width:=TagetBox14_Width;
            TagetBox_Long:=TagetBox14_Long;
            TagetBox_Height:=TagetBox14_Height;
            AbovePick_TagetPos:=Offs(AbovePick_Base0Pos,AbovePick0OffsX + (TagetBox_Long -400) / 2,AbovePick0OffsY - (TagetBox_Width - 200 ) / 2,AbovePick0OffsZ + TagetBox_Height);
            X_OffsGain:=X14_OffsGain;
            Y_OffsGain:=Y14_OffsGain;
            Z_OffsGain:=Z14_OffsGain;  
            PalletType4Base0:=Box14Base0;
            PalletType4Base180:=Box14Base180;
            AbovePick0Pro;
         CASE 15:
            TagetBox_Width:=TagetBox15_Width;
            TagetBox_Long:=TagetBox15_Long;
            TagetBox_Height:=TagetBox15_Height;
            AbovePick_TagetPos:=Offs(AbovePick_Base0Pos,AbovePick0OffsX + (TagetBox_Long -400) / 2,AbovePick0OffsY - (TagetBox_Width - 200 ) / 2,AbovePick0OffsZ + TagetBox_Height);
            X_OffsGain:=X15_OffsGain;
            Y_OffsGain:=Y15_OffsGain;
            Z_OffsGain:=Z15_OffsGain;  
            PalletType4Base0:=Box15Base0;
            PalletType4Base180:=Box15Base180;
            AbovePick0Pro;
           DEFAULT:
                TPERASE;
                TPWRITE "The data 'nPallet' is error,please check it!";
                Stop;
        ENDTEST
       
        
        
    ENDPROC
    
    
    
    
    
    PROC AbovePick0Pro() 
        AbovePickStart:
        MoveJ Offs(AbovePick_TagetPos,0,0,100),SpeedMax,z50,tool1\WObj:=wobj0;
        MoveL Offs(AbovePick_TagetPos,0,0,10),SpeedMid,z50,tool1\WObj:=wobj0;
        MoveL Offs(AbovePick_TagetPos,0,0,0),SpeedMin,fine,tool1\WObj:=wobj0;
        MoveL AbovePick_TagetPos,SpeedMid,fine,tool1\WObj:=wobj0;
        SetGO CatchSuckNo_Go, 2;
        WaitUntil SuckSenserGi=2;
        WaitTime 1;
        GripLoad load1;
        MoveL Offs(AbovePick_TagetPos,0,0,140), SpeedMax, fine, tool1\WObj:=wobj0;
        WaitTime 2;
         IF Di24_BoxNg=1 THEN
         GOTO BoxNG1;   
         ELSE
           GOTO BoxOK1; 
        ENDIF
        BoxNG1:
        MoveL AbovePick_TagetPos,SpeedMid,fine,tool1\WObj:=wobj0;
        SetGO CatchSuckNo_Go, 0;
        PulseDO\PLength:=1, Do26_BoxNgErr;
        GOTO AbovePickStart;   
        BoxOK1:
        MoveL Offs(AbovePick_TagetPos,0,0,500),SpeedMax,z50,tool1\WObj:=wobj0;
        MoveJ AbovePick_Leave1,SpeedMax,fine,tool1\WObj:=wobj0; 
        PulseDO\PLength:=1, Do25_CatchOver;
        MoveAbsJ CatchHome\NoEOffs, SpeedMax, z100, tool1;  
        MoveAbsJ RHome\NoEOffs, SpeedMax, z100, tool1; 
    ENDPROC
    
    PROC AbovePick90Pro() 
        !AbovePick_TagetPos:=Offs(AbovePick_Base90Pos,AbovePick0OffsX + TagetBox_Long / 2,AbovePick0OffsY - TagetBox_Width / 2,AbovePick0OffsZ + 400);
        MoveJ Offs(AbovePick_TagetPos,0,0,100),SpeedMax,z50,tool1\WObj:=wobj0;
        MoveL Offs(AbovePick_TagetPos,0,0,10),SpeedMid,z50,tool1\WObj:=wobj0;
        MoveL Offs(AbovePick_TagetPos,0,0,0),SpeedMin,fine,tool1\WObj:=wobj0;
        !MoveL AbovePick_TagetPos,SpeedMid,fine,tool1\WObj:=wobj0;
        SetGO CatchSuckNo_Go, 3;
        WaitUntil SuckSenserGi=3;
        WaitTime 1;
        WaitUntil Di19_SuckSenser1=1 AND Di20_SuckSenser2=1;
        GripLoad load1;
        MoveL Offs(AbovePick_TagetPos,0,0,120), SpeedMid, z100, tool1\WObj:=wobj0;
        MoveL Offs(AbovePick_TagetPos,0,0,500),SpeedMax,fine,tool1\WObj:=wobj0; 
        PulseDO\PLength:=1, Do25_CatchOver;
        MoveAbsJ CatchHome\NoEOffs, SpeedMax, z100, tool1;  
        MoveAbsJ RHome\NoEOffs, SpeedMax, z100, tool1;
    ENDPROC
    
    
    
    PROC LevelPickPro() 
        LevePickStart: 
        MoveJ Offs(AbovePick_TagetPos,0,0,100),SpeedMax,z50,tool1\WObj:=wobj0;
        MoveL Offs(AbovePick_TagetPos,0,0,10),SpeedMid,z50,tool1\WObj:=wobj0;
        MoveL Offs(AbovePick_TagetPos,0,0,0),SpeedMin,fine,tool1\WObj:=wobj0;
        !MoveL AbovePick_TagetPos,SpeedMid,fine,tool1\WObj:=wobj0;
        SetGO CatchSuckNo_Go, 2;
        WaitUntil SuckSenserGi = 2;
        GripLoad load1;
        MoveL Offs(AbovePick_TagetPos,0,0,150), SpeedMax, fine, tool1\WObj:=wobj0;
        IF Di24_BoxNg=1 THEN
         GOTO BoxNG2;   
         ELSE
           GOTO BoxOK2; 
        ENDIF
        BoxNG2:
        MoveL AbovePick_TagetPos,SpeedMid,fine,tool1\WObj:=wobj0;
        SetGO CatchSuckNo_Go, 0;
        !WaitUntil SuckSenserGi=1;
        MoveL Offs(AbovePick_TagetPos,0,0,150), SpeedMax, fine, tool1\WObj:=wobj0;
        PulseDO\PLength:=1, Do26_BoxNgErr;
        WaitTime 2;
        Goto LevePickStart;
        BoxOK2:
        MoveL RelTool(AbovePick_TagetPos,350,0,-200\Rx:=0\Ry:=0\Rz:=0), SpeedMid, fine, tool1\WObj:=wobj0;
        MoveL RelTool(AbovePick_TagetPos,350,0,-200\Rx:=0\Ry:=0\Rz:=-90), SpeedMid, fine, tool1\WObj:=wobj0;
        MoveL RelTool(AbovePick_TagetPos,350,0,0\Rx:=0\Ry:=0\Rz:=-90), SpeedMin, fine, tool1\WObj:=wobj0;
         SetGO CatchSuckNo_Go, 0;
         WaitTime 0.3;
        MoveL RelTool(AbovePick_TagetPos,350,0,-200\Rx:=0\Ry:=0\Rz:=-90), SpeedMid, fine, tool1\WObj:=wobj0;
        MoveL RelTool(AbovePick_TagetPos,0,0,-200\Rx:=0\Ry:=0\Rz:=-90), SpeedEmpty, fine, tool1\WObj:=wobj0;
        PulseDO\PLength:=1, Do23_TurnOver;
        MoveL RelTool(AbovePick_TagetPos,0,0,-200\Rx:=0\Ry:=0\Rz:=0), SpeedEmpty, z50, tool1\WObj:=wobj0;
        WaitUntil Di23_AllowCatchBox = 1 ;
        MoveL Offs(LevelPick_TagetPos,0,-50,300), SpeedEmpty, z50, tool1\WObj:=wobj0;
        MoveL Offs(LevelPick_TagetPos,0,-50,10), SpeedMid, z50, tool1\WObj:=wobj0;
        MoveL Offs(LevelPick_TagetPos,0,0,10), SpeedMin, fine, tool1\WObj:=wobj0;
        !MoveL LevelPick_TagetPos,SpeedMid,fine,tool1\WObj:=wobj0;
        PulseDO\PLength:=1, Do21_FVAcmd;
        SetGO CatchSuckNo_Go, 1;
        WaitUntil SuckSenserGi=1;
        MoveL Offs(LevelPick_TagetPos,0,-LevelPickOffsY,0), SpeedMid, z50, tool1\WObj:=wobj0;
        GripLoad load1;
        MoveL Offs(LevelPick_TagetPos,0,-LevelPickOffsY,300), SpeedMid, z50, tool1\WObj:=wobj0;
        MoveL RelTool(AbovePick_TagetPos,0,0,-400\Rx:=0\Ry:=0\Rz:=0), SpeedMax, fine, tool1\WObj:=wobj0;
        PulseDO\PLength:=1, Do25_CatchOver;
        MoveL AbovePick_Leave1, SpeedMid, fine, tool1\WObj:=wobj0;
        PulseDO\PLength:=1, Do22_FVBcmd;
        !PulseDO\PLength:=1, Do25_CatchOver;
        MoveAbsJ CatchHome\NoEOffs, SpeedMax, z100, tool1;  
        MoveAbsJ RHome\NoEOffs, SpeedMax, z100, tool1;
    ENDPROC

    

   

    

  
ENDMODULE