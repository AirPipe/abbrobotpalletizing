MODULE MainModule
    PERS wobjdata wobj_A:=[FALSE,TRUE,"",[[1180.64,-2076.22,-653.965],[0.721012,-0.000366443,-0.00323544,-0.692915]],[[0,0,0],[1,0,0,0]]];
    PERS wobjdata wobj_B:=[FALSE,TRUE,"",[[-71.9635,-2254.55,-665.707],[0.722132,0.00402081,-0.00185186,-0.691741]],[[0,0,0],[1,0,0,0]]];
    PERS wobjdata wobj_Pallet;
   
    
    PERS tooldata tool1:=[TRUE,[[0,0,800],[1,0,0,0]],[20,[0,0,150],[1,0,0,0],0,0,0]];
    PERS loaddata load1:=[20,[0,0,300],[1,0,0,0],0,0,0.1];
    PERS jointtarget jposhome:=[[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS jointtarget CatchHome:=[[118.767,-36.7671,44.3437,-1.3657,80.8449,25.1449],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS jointtarget RHome:=[[7.40962,-42.8045,45.0116,0.387026,88.8855,6.35021],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ApproachLineA:=[[1183.37,-1054.49,985.50],[0.00200923,0.0107853,-0.99994,-0.000291645],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ApproachLineB:=[[-85.40,-1176.73,924.81],[0.00200908,0.0107855,-0.99994,-0.000290805],[-2,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ApproachLineC:=[[-1261.07,-1229.92,924.81],[0.00200873,0.0107847,-0.99994,-0.000291223],[-2,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget HOME:=[[1118.39,152.28,1090.77],[0.00988406,0.0091386,-0.999907,-0.0022186],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
     
    PERS robtarget PalletTaget0;
    PERS robtarget PalletTaget2;
    PERS robtarget PalletTaget3;
    PERS robtarget PickTagetPos;
   
    VAR triggdata HookAct;
    VAR triggdata HookOff;
    PERS bool LineA_CountFull:=FALSE;
    PERS bool LineB_CountFull:=FALSE;
    PERS bool LineC_CountFull:=FALSE; 
    PERS bool LineA_CountNot:=FALSE;
    PERS bool LineB_CountNot:=FALSE;
    PERS bool LineC_CountNot:=FALSE; 
    PERS bool bReady:=TRUE;
    PERS num TagetBox_Width;
    PERS num TagetBox_Long;
    PERS num TagetBox_Height;
    PERS num X_OffsGain;
    PERS num Y_OffsGain;
    PERS num Z_OffsGain;
   
    PERS num LineA_Count:=4;
    PERS num LineB_Count:=1;
    PERS num LineC_Count:=2;
    PERS num nCount;
    PERS num PalleNo;
    VAR intnum APalletReset_Bool;
    VAR intnum BPalletReset_Bool;
    VAR intnum CPalletReset_Bool;
    PERS speeddata SpeedMin:=[1000,200,6000,1000];
    PERS speeddata SpeedMid:=[2500,300,6000,1000];
    PERS speeddata SpeedMax:=[4000,500,6000,1000];
    PERS speeddata SpeedEmpty:=[6000,2000,6000,1000];
    PERS wobjdata wobj_C:=[FALSE,TRUE,"",[[-1313.66,-2166.8,-673.768],[0.720035,-0.000253174,0.00353249,-0.693929]],[[0,0,0],[1,0,0,0]]];
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    PERS num PalletTypeNo:=0;
    PERS num PalletLineNo:=0;
    VAR robtarget BackPiont1;
    VAR jointtarget BackPiont2;
    CONST robtarget AbovePick_Leave11:=[[-802.44,1317.58,576.25],[0.00321191,0.746589,-0.665272,-0.00294475],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePick_Leave21:=[[1158.63,523.76,861.74],[0.00830577,0.27152,-0.962393,-0.00264901],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePick_Leave31:=[[-656.13,1093.00,824.00],[0.0169431,0.843645,-0.535993,0.0262366],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePick_Leave12:=[[1262.91,152.27,865.00],[0.0098598,0.00914551,-0.999907,-0.00221925],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget BackPiont11:=[[1118.43,152.26,751.45],[0.00986952,0.00914616,-0.999907,-0.00220967],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PHomePos10:=[[1118.39,152.28,1090.77],[0.00988424,0.0091391,-0.999907,-0.00221857],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    
    PROC main()
        VelSet 35, 2000;
        WaitTime 0.3;
        InitAll;
        WHILE TRUE DO
            VelSet 65, 4000;
            IF Di23_AllowCatchBox = 1 THEN
                PalletTypeNo:= PalletTypeNo_Gi;
                PalletLineNo:= PalletLineNo_Gi; 
                PickPro;
                PlaceLinePro;
                !PalletCountPro;
                !VelSet 95, 6000;
                PlaceLeavePro;
            ENDIF    
            WaitTime 0.2;
        ENDWHILE
    ENDPROC

    PROC InitAll()
        VelSet 35, 3000;
        ConfL\OFF;
        ConfJ\OFF;
        LineA_CountNot := FALSE;
        LineB_CountNot := FALSE;
        LineC_CountNot := FALSE;
        LineA_CountFull:=FALSE;
        LineB_CountFull:=FALSE;
        LineC_CountFull:=FALSE;
        PalletTypeNo:= 0;            
        PalletLineNo:= 0; 
        TagetBox_Width:=0;
        TagetBox_Long:=0;
        TagetBox_Height:=0;
        X_OffsGain:=0;
        Y_OffsGain:=0;
        Z_OffsGain:=0;
        !LineA_Count:=1;
        !LineB_Count:=1;
        !LineC_Count:=1;
        nCount:=0;
        TriggEquip HookAct,100,0.1\DOp:=Do22_FVBcmd,1;
        TriggEquip HookOff,100\Start,0.1\DOp:=Do21_FVAcmd,1;
        IDelete APalletReset_Bool;
        CONNECT APalletReset_Bool WITH tEjectPallet_A;
        ISignalDI Di13_LineAReadyPluse,0,APalletReset_Bool;
        IDelete BPalletReset_Bool;
        CONNECT BPalletReset_Bool WITH tEjectPallet_B;
        ISignalDI Di14_LineBReadyPluse,0,BPalletReset_Bool;
        IDelete CPalletReset_Bool;
        CONNECT CPalletReset_Bool WITH tEjectPallet_C;
        ISignalDI Di15_LineCReadyPluse,0,CPalletReset_Bool;
        HomePos;
    ENDPROC
    TRAP tEjectPallet_A
        !LineA_Count:=1;
        LineA_CountFull:=FALSE;
    ENDTRAP

    TRAP tEjectPallet_B
        !LineB_Count:=1;
        LineB_CountFull:=FALSE;
    ENDTRAP

    TRAP tEjectPallet_C
        !LineC_Count:=1;
        LineC_CountFull:=FALSE;
    ENDTRAP
    
    
    
    

    PROC PlaceLeavePro()
        Waittime 0.3;
        WaitUntil GOutput(CatchSuckNo_Go) = 0 ;   
        PalletTypeNo:= 0;            
        PalletLineNo:= 0; 
        BackPiont1:=CRobT(\Tool:=tool1\WObj:=wobj0);
        BackPiont2:=CJointT();
        BackPiont1.trans.z:=Home.trans.z;
        MoveL BackPiont1,SpeedMax,z10,tool1;
        !BackPiont2.robax.rax_6:=RHome.robax.rax_6;
        BackPiont2.robax.rax_5:=RHome.robax.rax_5;
        BackPiont2.robax.rax_4:=RHome.robax.rax_4;
        BackPiont2.robax.rax_3:=RHome.robax.rax_3;
        BackPiont2.robax.rax_2:=RHome.robax.rax_2;
        MoveAbsj BackPiont2,SpeedMax,z100,tool1;
        MoveAbsJ RHome\NoEOffs, SpeedEmpty, z100, tool1;
        MoveAbsJ CatchHome\NoEOffs, SpeedEmpty, z100, tool1;
    ENDPROC

    

    PROC CatchSuckOffPro()  
        IF PalletLineNo = 1 AND   Suck_Gi  = 0  THEN
             LineA_CountNot:=True;
        ELSEIF PalletLineNo = 2 AND Suck_Gi  = 0  THEN
             LineB_CountNot:=True;
        ELSEIF PalletLineNo = 3 AND Suck_Gi  = 0 THEN
             LineC_CountNot:=True;
        ELSE
        ENDIF
        Waittime 0.1;
        SetGO CatchSuckNo_Go,0;
        Waittime 1.2;
        GripLoad Load0;
    ENDPROC

   

    


    PROC HomePos()
        VAR robtarget pActualPos;
        VAR jointtarget calib_pos;
        IF NOT CurrentPos(Home,tool1) THEN
            pActualpos:=CRobT(\Tool:=tool1\WObj:=wobj0);
            calib_pos:=CJointT();
            pActualpos.trans.z:=Home.trans.z;
            MoveL pActualpos,v500,z10,tool1;
            calib_pos.robax.rax_6:=RHome.robax.rax_6;
            calib_pos.robax.rax_5:=RHome.robax.rax_5;
            calib_pos.robax.rax_4:=RHome.robax.rax_4;
            calib_pos.robax.rax_3:=RHome.robax.rax_3;
            calib_pos.robax.rax_2:=RHome.robax.rax_2;
            MoveAbsj calib_pos, v400, z150, tool1;
            MoveAbsJ RHome\NoEOffs, v400, z150, tool1;
            MoveJ PHomePos, v400, fine, tool1;
         ENDIF
    ENDPROC

    

   

    

   

    PROC ManualPro()
        MoveJ AbovePick_Leave1,v1000,fine,tool1;
        MoveJ AbovePick_Leave2,v1000,fine,tool1;
        MoveJ ApproachLineA,v1000,fine,tool1;
        MoveJ ApproachLineB,v1000,fine,tool1;
        MoveJ ApproachLineC,v1000,fine,tool1;
   
    ENDPROC
	PROC Test1()
		MoveJ [[1639.82,-1691.71,-154.89],[0.019027,-0.0612846,0.99706,0.0418768],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z100, tool1;
		MoveJ [[1639.83,-1691.73,508.79],[0.0190349,-0.0612844,0.99706,0.0418683],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, fine, tool1;
	ENDPROC

   
ENDMODULE