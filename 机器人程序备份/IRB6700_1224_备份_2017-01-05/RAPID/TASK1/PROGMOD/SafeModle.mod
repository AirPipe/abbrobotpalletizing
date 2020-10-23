MODULE SafeModle
  VAR shapedata shapmk1;
  VAR shapedata shapmk2;
  VAR shapedata shapmk3;
  VAR shapedata shapmk4;
  VAR shapedata shapmk5;
  VAR shapedata shapmk6;
  PERS pos PosLMC1:=[1760.01,202.25,981.71];
  PERS pos PosLMC2:=[1660.01,102.25,881.71];
  PERS pos LowLeft2:=[-1490.07,2124.86,-459.71];
  PERS pos HighRight2:=[-621.64,1569.86,-247.4];
  PERS pos LowLeft3:=[1094.48,-2420.69,664.88];
  PERS pos HighRight3:=[2300,-930,1600];
  PERS pos LowLeft4:=[860.85,-2224.83,-709.52];
  PERS pos HighRight4:=[1849.81,-1520,491.92];
  PERS pos LowLeft5:=[-359.6,-2448.68,-710.83];
  PERS pos HighRight5:=[615.37,-1402.27,441.54];
  PERS pos LowLeft6:=[-1663.89,-2364.36,-731.38];
  PERS pos HighRight6:=[-801.75,-1495.44,425.67];
 
  
  PERS wzstationary wzHomepos:=[1];
  PERS wzstationary wzToR2Box:=[2];
  PERS wzstationary wzToR3Box:=[3];
  PERS wzstationary wzToR4Box:=[3];
  PERS wzstationary wzToR5Box:=[4];
  PERS wzstationary wzToR6Box:=[5];
   CONST robtarget PHomePos:=[[1710.01,152.25,931.71],[0.00987333,0.00914557,-0.999907,-0.00220786],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
   CONST robtarget PickLBox2:=[[-1490.07,2124.86,-459.71],[0.0021059,0.999774,0.0209802,-0.00267978],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
   CONST robtarget PickHBox2:=[[-621.64,1569.86,-247.40],[0.00210938,0.999774,0.0209814,-0.00268083],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
   CONST robtarget LBox3:=[[1094.48,-2420.69,664.88],[0.000887661,0.00635974,-0.999944,-0.00837265],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
   CONST robtarget HBox3:=[[2300,-930,1600],[0.018496,-0.999515,-0.0248443,0.0033736],[0,-2,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
   CONST robtarget Line1LBox4:=[[860.85,-2224.83,-709.52],[0.00202486,0.0108037,-0.99994,-0.0003087],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
   CONST robtarget Line1HBox4:=[[1849.81,-1520.00,491.92],[0.0020233,0.0108042,-0.99994,-0.000306101],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
   CONST robtarget Line2LBox5:=[[-359.60,-2448.68,-710.83],[0.00202957,0.0108,-0.99994,-0.00033982],[-2,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
   CONST robtarget Line2HBox5:=[[615.37,-1402.27,441.54],[0.00202942,0.0108004,-0.99994,-0.000340123],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
   CONST robtarget Line3LBox6:=[[-1663.89,-2364.36,-731.38],[0.00203025,0.0108005,-0.99994,-0.000339718],[-2,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
   CONST robtarget Line3HBox6:=[[-801.75,-1495.44,425.67],[0.0020281,0.0108001,-0.99994,-0.000341667],[-2,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
   
  
  
	PROC HomeArea1()
    PosLMC1:=PHomePos.trans;
    PosLMC2:=PHomePos.trans;
    PosLMC1.x:=PosLMC1.x+50;
    PosLMC2.x:=PosLMC2.x-50;
    PosLMC1.y:=PosLMC1.y+50;
    PosLMC2.y:=PosLMC2.y-50;
    PosLMC1.z:=PosLMC1.z+50;
    PosLMC2.z:=PosLMC2.z-50;
    WZBoxDef\Inside,shapmk1,PosLMC1,PosLMC2;
    WZDOSet\Stat,wzHomepos\Inside,shapmk1,Do0_HomePos0,1;
    TPWrite "HomeArea1 is Running";
    !MoveL PHomePos, v1000, fine, tool1;
  ENDPROC
  PROC CatchArea2()
    LowLeft2:=PickLBox2.trans;
    HighRight2:=PickHBox2.trans;  
    WZBoxDef\Inside,shapmk2,LowLeft2,HighRight2;
    WZDOSet\Stat,wzToR2Box\Inside,shapmk2,Do1_CatchAreaPos1,1;
    TPWrite "CatchArea2 is Running";
    !MoveL PickHBox2, v1000, fine, tool1;
    !MoveL PickLBox2, v1000, fine, tool1;
  ENDPROC
  
  PROC Area3()
    LowLeft3:=LBox3.trans;
    HighRight3:=HBox3.trans;  
    WZBoxDef\Inside,shapmk3,LowLeft3,HighRight3;
    WZDOSet\Stat,wzToR3Box\Inside,shapmk3,Do2_AreaPos2,1;
    TPWrite "Power3 Up is Running";
    !MoveL HBox3, v1000, fine, tool1;
    !MoveL LBox3, v1000, fine, tool1; 
  ENDPROC
  
   PROC Area4()
    LowLeft4:=Line1LBox4.trans;
    HighRight4:=Line1HBox4.trans;  
    WZBoxDef\Inside,shapmk4,LowLeft4,HighRight4;
    WZDOSet\Stat,wzToR4Box\Inside,shapmk4,Do3_Line1AreaPos3,1;
    TPWrite "Power4 Up is Running";
    !MoveL Line1HBox4, v1000, fine, tool1;
    !MoveL Line1LBox4, v1000, fine, tool1;
   ENDPROC
  
   PROC Area5()
    LowLeft5:=Line2LBox5.trans;
    HighRight5:=Line2HBox5.trans;  
    WZBoxDef\Inside,shapmk5,LowLeft5,HighRight5;
    WZDOSet\Stat,wzToR5Box\Inside,shapmk5,Do4_Line2AreaPos4,1;
    TPWrite "Power5 Up is Running";
    !MoveL Line2HBox5, v1000, fine, tool1;
    !MoveL Line2LBox5, v1000, fine, tool1;
   ENDPROC
 
  PROC Area6()
    LowLeft6:=Line3LBox6.trans;
    HighRight6:=Line3HBox6.trans;  
    WZBoxDef\Inside,shapmk6,LowLeft6,HighRight6;
    WZDOSet\Stat,wzToR6Box\Inside,shapmk6,Do5_Line3AreaPos5,1;
    TPWrite "Power6 Up is Running";
    !MoveL Line3HBox6, v1000, fine, tool1;
    !MoveL Line3LBox6, v1000, fine, tool1;
   ENDPROC
   
    FUNC bool CurrentPos(robtarget ComparePos,INOUT tooldata TCP)
        VAR num Counter:=0;
        VAR robtarget ActualPos;
        ActualPos:=CRobT(\Tool:=TCP\WObj:=wobj0);
        IF ActualPos.trans.x>ComparePos.trans.x-25 AND ActualPos.trans.x<ComparePos.trans.x+25 Counter:=Counter+1;
        IF ActualPos.trans.y>ComparePos.trans.y-25 AND ActualPos.trans.y<ComparePos.trans.y+25 Counter:=Counter+1;
        IF ActualPos.trans.z>ComparePos.trans.z-25 AND ActualPos.trans.z<ComparePos.trans.z+25 Counter:=Counter+1;
        IF ActualPos.rot.q1>ComparePos.rot.q1-0.1 AND ActualPos.rot.q1<ComparePos.rot.q1+0.1 Counter:=Counter+1;
        IF ActualPos.rot.q2>ComparePos.rot.q2-0.1 AND ActualPos.rot.q2<ComparePos.rot.q2+0.1 Counter:=Counter+1;
        IF ActualPos.rot.q3>ComparePos.rot.q3-0.1 AND ActualPos.rot.q3<ComparePos.rot.q3+0.1 Counter:=Counter+1;
        IF ActualPos.rot.q4>ComparePos.rot.q4-0.1 AND ActualPos.rot.q4<ComparePos.rot.q4+0.1 Counter:=Counter+1;
        RETURN Counter=7;
    ENDFUNC
  
ENDMODULE