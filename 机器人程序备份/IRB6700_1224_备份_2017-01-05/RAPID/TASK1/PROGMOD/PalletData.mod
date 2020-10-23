MODULE PalletData
    !!!AbovePick_Base0Pos
    
    PERS num AbovePick0OffsX:=0;
    PERS num AbovePick0OffsY:=0;
    PERS num AbovePick0OffsZ:=-20;
    PERS num AbovePick90OffsX:=0;
    PERS num AbovePick90OffsY:=0;
    PERS num AbovePick90OffsZ:=-20;
    PERS robtarget AbovePick_TagetPos;
    CONST robtarget AbovePick_Base0Pos:=[[-1230.83,2061.16,-784.10],[0.00252968,0.999874,0.0155246,-0.00228142],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePick_Base90Pos:=[[-1126.48,2176.10,-776.75],[0.0019872,-0.717324,0.696737,-0.000453681],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePick_Leave1:=[[-887.20,1419.27,818.82],[0.00675505,0.668839,-0.74325,0.0136969],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePick_Leave2:=[[1262.91,152.23,865.00],[0.00985594,0.00912925,-0.999907,-0.00221858],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !!!LevelPick_BasePos
    PERS num LevelPick_OffsZ:=0;
    PERS num LevelPickOffsX:=0;
    PERS num LevelPickOffsY:=20;
    PERS num LevelPickOffsZ:=0;
    PERS robtarget LevelPick_TagetPos;
    CONST robtarget LevelPick_BasePos:=[[-1145.48,2800.05,-74.43],[0.696049,-0.717967,-0.00339614,0.0052206],[1,-2,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LevelPick_Leave1:=[[-958.84,1383.92,731.37],[0.00342651,0.719746,-0.694228,0.000280599],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LevelPick_Leave2:=[[1262.91,152.23,865.00],[0.00985594,0.00912925,-0.999907,-0.00221858],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
      
    PERS robtarget PalletType1Base0;
   
    
    PERS robtarget PalletType2Base0;
    
    
    PERS robtarget PalletType3Base0;
    
    
    PERS robtarget PalletType4Base0;
    PERS robtarget PalletType4Base180;
    
    PERS robtarget PalletType5Base0;
    PERS robtarget PalletType5Base180;
    
    PERS robtarget PalletType6Base0;
    PERS robtarget PalletType6Base180;
    
    PERS robtarget PalletType7Base0;
    PERS robtarget PalletType7Base180;
    
    PERS robtarget PalletType8Base0;
    PERS robtarget PalletType8Base90;
    PERS robtarget PalletType8Base180;
    !!!!!!!!Box1_PalletType1__ 
    PERS num TagetBox1_Width:=554;
    PERS num TagetBox1_Long:=709;
    PERS num TagetBox1_Height:=308;
    PERS num X1_OffsGain:=20;
    PERS num Y1_OffsGain:=20;
    PERS num Z1_OffsGain:=10;
    CONST robtarget Box1Base0:=[[-121.15,64.98,253.64],[0.00474055,-0.000892873,-0.999986,0.00216806],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
       !!!!!!!!Box2_PalletType1__ 
    PERS num TagetBox2_Width:=589;
    PERS num TagetBox2_Long:=728;
    PERS num TagetBox2_Height:=388;
    PERS num X2_OffsGain:=20;
    PERS num Y2_OffsGain:=20;
    PERS num Z2_OffsGain:=10;
    CONST robtarget Box2Base0:=[[-100.69,68.58,350.47],[0.00159126,0.000832277,0.999989,-0.00437805],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !!!!!!!!Box3_PalletType1__ 
    PERS num TagetBox3_Width:=590;
    PERS num TagetBox3_Long:=710;
    PERS num TagetBox3_Height:=335;
    PERS num X3_OffsGain:=20;
    PERS num Y3_OffsGain:=20;
    PERS num Z3_OffsGain:=10;
    CONST robtarget Box3Base0:=[[-103.88,64.38,277.86],[0.000335593,0.00169032,-0.999988,0.00448112],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
     !!!!!!!!Box4_PalletType2__ 
    PERS num TagetBox4_Width:=393;
    PERS num TagetBox4_Long:=759;
    PERS num TagetBox4_Height:=294;
    PERS num X4_OffsGain:=20;
    PERS num Y4_OffsGain:=20;
    PERS num Z4_OffsGain:=10;
    CONST robtarget Box4Base0:=[[41.18,95.82,200.40],[0.00196024,0.708311,-0.705885,0.00422383],[-1,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Box4Base90:=[[41.18,95.82,200.39],[0.00421524,0.703039,0.711136,-0.00197669],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Box4Base180:=[[41.18,95.82,200.40],[0.00196024,0.708311,-0.705885,0.00422383],[-1,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Box4Base270:=[[41.18,95.82,200.39],[0.00421524,0.703039,0.711136,-0.00197669],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !!!!!!!!Box5_PalletType1__ 
    PERS num TagetBox5_Width:=595;
    PERS num TagetBox5_Long:=735;
    PERS num TagetBox5_Height:=340;
    PERS num X5_OffsGain:=20;
    PERS num Y5_OffsGain:=20;
    PERS num Z5_OffsGain:=10;
    CONST robtarget Box5Base0:=[[-105.23,58.20,282.28],[0.00494094,-0.000610494,-0.999977,0.00469154],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !!!!!!!!Box6_PalletType3__ 
    PERS num TagetBox6_Width:=545;
    PERS num TagetBox6_Long:=785;
    PERS num TagetBox6_Height:=460;
    PERS num X6_OffsGain:=20;
    PERS num Y6_OffsGain:=20;
    PERS num Z6_OffsGain:=10;
    CONST robtarget Box6Base0:=[[-122.66,87.66,443.17],[0.0029792,-0.00109652,-0.999995,-0.000187487],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
       !!!!!!!!Box7_PalletType4__ 
    PERS num TagetBox7_Width:=391;
    PERS num TagetBox7_Long:=503;
    PERS num TagetBox7_Height:=191;
    PERS num X7_OffsGain:=20;
    PERS num Y7_OffsGain:=20;
    PERS num Z7_OffsGain:=8;
    CONST robtarget Box7Base0:=[[-91.77,110.16,174.83],[0.00120145,0.0022389,0.999995,0.00169025],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Box7Base180:=[[-676.76,78.17,178.71],[0.00168943,-0.999997,0.00146085,-0.0012033],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
     !!!!!!!!Box8_PalletType4__ 
    PERS num TagetBox8_Width:=391;
    PERS num TagetBox8_Long:=503;
    PERS num TagetBox8_Height:=201;
    PERS num X8_OffsGain:=20;
    PERS num Y8_OffsGain:=20;
    PERS num Z8_OffsGain:=8;
    CONST robtarget Box8Base0:=[[-91.77,110.16,184.83],[0.00120145,0.0022389,0.999995,0.00169025],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Box8Base180:=[[-676.76,78.17,188.71],[0.00168943,-0.999997,0.00146085,-0.0012033],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !!!!!!!!Box9_PalletType4__ 
    PERS num TagetBox9_Width:=396;
    PERS num TagetBox9_Long:=579;
    PERS num TagetBox9_Height:=213;
    PERS num X9_OffsGain:=20;
    PERS num Y9_OffsGain:=20;
    PERS num Z9_OffsGain:=10;
    CONST robtarget Box9Base0:=[[-117.12,106.84,200.13],[0.00685104,-0.00263504,-0.999973,-0.000177861],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Box9Base90:=[[-676.16,84.83,220.84],[0.00019725,-0.999918,0.00285859,0.0124749],[-1,0,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Box9Base180:=[[-698.21,81.15,199.92],[0.000171858,-0.99997,0.00362471,0.00685153],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Box9Base270:=[[41.18,95.82,200.39],[0.00421524,0.703039,0.711136,-0.00197669],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
 !!!!!!!!Box10_PalletType5__ 
    PERS num TagetBox10_Width:=390;
    PERS num TagetBox10_Long:=503;
    PERS num TagetBox10_Height:=160;
    PERS num X10_OffsGain:=20;
    PERS num Y10_OffsGain:=20;
    PERS num Z10_OffsGain:=10;
    CONST robtarget Box10Base0:=[[-146.58,104.01,180.32],[0.012457,0.00291426,-0.999918,-0.000290298],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Box10Base180:=[[-647.03,90.48,190.68],[0.00243234,0.999989,0.00395283,-0.000732964],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !!!!!!!!Box11_PalletType6__ 
    PERS num TagetBox11_Width:=440;
    PERS num TagetBox11_Long:=600;
    PERS num TagetBox11_Height:=245;
    PERS num X11_OffsGain:=20;
    PERS num Y11_OffsGain:=20;
    PERS num Z11_OffsGain:=10;
    CONST robtarget Box11Base0:=[[-80.75,115.64,408.03],[0.00298029,-0.00584039,-0.999969,0.00428552],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Box11Base180:=[[-722.63,13.64,407.77],[0.00429024,0.999985,-0.00184706,-0.00302679],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
      !!!!!!!!Box12_PalletType7__ 
    PERS num TagetBox12_Width:=455;
    PERS num TagetBox12_Long:=600;
    PERS num TagetBox12_Height:=235;
    PERS num X12_OffsGain:=20;
    PERS num Y12_OffsGain:=20;
    PERS num Z12_OffsGain:=10;
    CONST robtarget Box12Base0:=[[-79.14,103.53,400.40],[0.00307273,0.00366756,-0.999988,0.000572238],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Box12Base180:=[[-723.73,37.23,413.35],[0.0042833,0.999984,-0.00186171,-0.00304618],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
   !!!!!!!!Box13_PalletType8__ 
    PERS num TagetBox13_Width:=455;
    PERS num TagetBox13_Long:=525;
    PERS num TagetBox13_Height:=235;
    PERS num X13_OffsGain:=20;
    PERS num Y13_OffsGain:=20;
    PERS num Z13_OffsGain:=10;
    CONST robtarget Box13Base0:=[[-79.00,-363.74,436.91],[0.00293828,-0.00610258,-0.999969,0.00399952],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Box13Base90:=[[-664.89,195.09,435.36],[0.000104781,-0.704685,0.709518,0.00178173],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Box13Base180:=[[-700.54,40.01,438.54],[0.00399609,0.999968,-0.00623256,-0.00293808],[-1,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Box13Base270:=[[41.18,95.82,200.39],[0.00421524,0.703039,0.711136,-0.00197669],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    !!!!!!!!Box14_PalletType4__ 
    PERS num TagetBox14_Width:=397;
    PERS num TagetBox14_Long:=510;
    PERS num TagetBox14_Height:=230;
    PERS num X14_OffsGain:=30;
    PERS num Y14_OffsGain:=30;
    PERS num Z14_OffsGain:=8;
    CONST robtarget Box14Base0:=[[-95.22,110.63,206.33],[0.00184758,-0.00572724,-0.999966,-0.00564849],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Box14Base180:=[[-683.47,85.17,205.41],[0.000742633,0.999974,-0.00622315,-0.0036742],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
   
    !!!!!!!!Box15_PalletType4__ 
    PERS num TagetBox15_Width:=397;
    PERS num TagetBox15_Long:=510;
    PERS num TagetBox15_Height:=210;
    PERS num X15_OffsGain:=30;
    PERS num Y15_OffsGain:=30;
    PERS num Z15_OffsGain:=8;
    CONST robtarget Box15Base0:=[[-95.22,110.63,186.33],[0.00184758,-0.00572724,-0.999966,-0.00564849],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Box15Base180:=[[-683.47,85.17,185.41],[0.000742633,0.999974,-0.00622315,-0.0036742],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    
    
    
    
    
    TASK PERS wobjdata wobj_Pick:=[FALSE,TRUE,"",[[-1145.06,1999.7,-48.4267],[0.0137512,-0.00592399,0.00648851,-0.999867]],[[0,0,0],[1,0,0,0]]];
    
    PROC PickModPro()  
     !!!AbovePick_Base0Pos
     MoveL AbovePick_Base0Pos,v100,fine,tool1;
     MoveL AbovePick_Base90Pos,v100,fine,tool1;
     MoveL AbovePick_Leave1,SpeedMax,fine,tool1;      
     MoveL AbovePick_Leave2,SpeedMax,fine,tool1;
     MoveL LevelPick_BasePos, v100, fine, tool1;
     
    ENDPROC
    
    PROC PalletModPro()  
     !!!Box1_PalletLineA_BasePos
     MoveL Box1Base0,v100,fine,tool1\WObj:=wobj_A;
     !!!Box2_PalletLineA_BasePos
     MoveL Box2Base0,v100,fine,tool1\WObj:=wobj_A;
     !!!Box3_PalletLineA_BasePos
     MoveL Box3Base0,v100,fine,tool1\WObj:=wobj_A;
     !!!Box4_PalletLineA_BasePos
     MoveL Box4Base0,v100,fine,tool1\WObj:=wobj_A;
     !!!Box5_PalletLineA_BasePos
     MoveL Box5Base0,v100,fine,tool1\WObj:=wobj_A;
     !!!Box6_PalletLineA_BasePos
     MoveL Box6Base0,v100,fine,tool1\WObj:=wobj_A;
     !!!Box7_PalletLineA_BasePos
     MoveL Box7Base0, v100, fine, tool1\WObj:=wobj_A;
     MoveL Box7Base180, v100, fine, tool1\WObj:=wobj_A;
     !!!Box8_PalletLineA_BasePos
     MoveL Box8Base0,v100,fine,tool1\WObj:=wobj_A;
     MoveL Box8Base180,v100,fine,tool1\WObj:=wobj_A;
     !!!Box9_PalletLineA_BasePos
     MoveL Box9Base0,v100,fine,tool1\WObj:=wobj_A;
     MoveL Box9Base180, v100, fine, tool1\WObj:=wobj_A;
     !!!Box10_PalletLineA_BasePos
     MoveL Box10Base0,v100,fine,tool1\WObj:=wobj_A;
     MoveL Box10Base180,v100,fine,tool1\WObj:=wobj_A;
     !!!Box11_PalletLineA_BasePos
     MoveL Box11Base0,v100,fine,tool1\WObj:=wobj_A;
     MoveL Box11Base180, v100, fine, tool1\WObj:=wobj_A;
     !!!Box12_PalletLineA_BasePos
     MoveL Box12Base0,v100,fine,tool1\WObj:=wobj_A;
     MoveL Box12Base180, v100, fine, tool1\WObj:=wobj_A;
     !!!Box13_PalletLineA_BasePos
     MoveL Box13Base0,v100,fine,tool1\WObj:=wobj_A;
     MoveL Box13Base90, v100, fine, tool1\WObj:=wobj_A;
     MoveL Box13Base180, v100, fine, tool1\WObj:=wobj_A;
     !!!Box14_PalletLineA_BasePos
     MoveL Box14Base0, v100, fine, tool1\WObj:=wobj_A;
     MoveL Box14Base180, v100, fine, tool1\WObj:=wobj_A;
     !!!Box14_PalletLineA_BasePos
     MoveL Box15Base0, v100, fine, tool1\WObj:=wobj_A;
     MoveL Box15Base180, v100, fine, tool1\WObj:=wobj_A;
    ENDPROC
ENDMODULE