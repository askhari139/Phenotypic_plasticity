function dydt = Wnt(t, y, Act_of_WntToCtnnb1,Num_of_WntToCtnnb1,Trd_of_WntToCtnnb1,Act_of_Ctnnb1ToLef1,Num_of_Ctnnb1ToLef1,Trd_of_Ctnnb1ToLef1,Inh_of_Cdh1ToCtnnb1,Num_of_Cdh1ToCtnnb1,Trd_of_Cdh1ToCtnnb1,Act_of_Lef1ToTwist1,Num_of_Lef1ToTwist1,Trd_of_Lef1ToTwist1,Act_of_Ctnnb1ToSnai2,Num_of_Ctnnb1ToSnai2,Trd_of_Ctnnb1ToSnai2,Act_of_Snai2ToSnai2,Num_of_Snai2ToSnai2,Trd_of_Snai2ToSnai2,Inh_of_Snai2ToCdh1,Num_of_Snai2ToCdh1,Trd_of_Snai2ToCdh1,Act_of_Twist1ToSnai2,Num_of_Twist1ToSnai2,Trd_of_Twist1ToSnai2,Act_of_Snai2ToTwist1,Num_of_Snai2ToTwist1,Trd_of_Snai2ToTwist1,Inh_of_Snai2ToSnai1,Num_of_Snai2ToSnai1,Trd_of_Snai2ToSnai1,Inh_of_Snai1ToSnai1,Num_of_Snai1ToSnai1,Trd_of_Snai1ToSnai1,Inh_of_Twist1ToCdh1,Num_of_Twist1ToCdh1,Trd_of_Twist1ToCdh1,Act_of_Snai1ToTwist1,Num_of_Snai1ToTwist1,Trd_of_Snai1ToTwist1,Act_of_Twist1ToSnai1,Num_of_Twist1ToSnai1,Trd_of_Twist1ToSnai1,Act_of_Twist1ToZeb1,Num_of_Twist1ToZeb1,Trd_of_Twist1ToZeb1,Act_of_Snai1ToZeb1,Num_of_Snai1ToZeb1,Trd_of_Snai1ToZeb1,Inh_of_Snai1ToCdh1,Num_of_Snai1ToCdh1,Trd_of_Snai1ToCdh1,Inh_of_Zeb1ToEsrp1,Num_of_Zeb1ToEsrp1,Trd_of_Zeb1ToEsrp1,Inh_of_Zeb1ToCdh1,Num_of_Zeb1ToCdh1,Trd_of_Zeb1ToCdh1,Act_of_Irf6ToCdh1,Num_of_Irf6ToCdh1,Trd_of_Irf6ToCdh1,Act_of_Grhl2ToCdh1,Num_of_Grhl2ToCdh1,Trd_of_Grhl2ToCdh1,Inh_of_Grhl2ToZeb1,Num_of_Grhl2ToZeb1,Trd_of_Grhl2ToZeb1,Inh_of_Zeb1ToGrhl2,Num_of_Zeb1ToGrhl2,Trd_of_Zeb1ToGrhl2,Act_of_Esrp1ToGrhl2,Num_of_Esrp1ToGrhl2,Trd_of_Esrp1ToGrhl2,Act_of_Grhl2ToEsrp1,Num_of_Grhl2ToEsrp1,Trd_of_Grhl2ToEsrp1,Act_of_Dlx3ToTrp63,Num_of_Dlx3ToTrp63,Trd_of_Dlx3ToTrp63,Act_of_Grhl2ToDlx3,Num_of_Grhl2ToDlx3,Trd_of_Grhl2ToDlx3,Act_of_Grhl2ToHmgn3,Num_of_Grhl2ToHmgn3,Trd_of_Grhl2ToHmgn3,Act_of_Hmgn3ToTrp63,Num_of_Hmgn3ToTrp63,Trd_of_Hmgn3ToTrp63,Act_of_Trp63ToGrhl2,Num_of_Trp63ToGrhl2,Trd_of_Trp63ToGrhl2,Act_of_Trp63ToIrf6,Num_of_Trp63ToIrf6,Trd_of_Trp63ToIrf6,Act_of_Irf6ToGrhl2,Num_of_Irf6ToGrhl2,Trd_of_Irf6ToGrhl2,Act_of_Grhl2ToIrf6,Num_of_Grhl2ToIrf6,Trd_of_Grhl2ToIrf6,Act_of_Grhl2ToTrp63,Num_of_Grhl2ToTrp63,Trd_of_Grhl2ToTrp63,Prod_of_Wnt,Deg_of_Wnt,Prod_of_Ctnnb1,Deg_of_Ctnnb1,Prod_of_Cdh1,Deg_of_Cdh1,Prod_of_Lef1,Deg_of_Lef1,Prod_of_Snai2,Deg_of_Snai2,Prod_of_Twist1,Deg_of_Twist1,Prod_of_Snai1,Deg_of_Snai1,Prod_of_Zeb1,Deg_of_Zeb1,Prod_of_Irf6,Deg_of_Irf6,Prod_of_Grhl2,Deg_of_Grhl2,Prod_of_Esrp1,Deg_of_Esrp1,Prod_of_Dlx3,Deg_of_Dlx3,Prod_of_Hmgn3,Deg_of_Hmgn3,Prod_of_Trp63,Deg_of_Trp63)
Wnt = y(1);
Ctnnb1 = y(2);
Cdh1 = y(3);
Lef1 = y(4);
Snai2 = y(5);
Twist1 = y(6);
Snai1 = y(7);
Zeb1 = y(8);
Irf6 = y(9);
Grhl2 = y(10);
Esrp1 = y(11);
Dlx3 = y(12);
Hmgn3 = y(13);
Trp63 = y(14);
HillsWnt_Ctnnb1 = (1 + (Act_of_WntToCtnnb1 - 1)*Wnt^Num_of_WntToCtnnb1/(Wnt^Num_of_WntToCtnnb1 + Trd_of_WntToCtnnb1^Num_of_WntToCtnnb1))/Act_of_WntToCtnnb1;
HillsCtnnb1_Lef1 = (1 + (Act_of_Ctnnb1ToLef1 - 1)*Ctnnb1^Num_of_Ctnnb1ToLef1/(Ctnnb1^Num_of_Ctnnb1ToLef1 + Trd_of_Ctnnb1ToLef1^Num_of_Ctnnb1ToLef1))/Act_of_Ctnnb1ToLef1;
HillsCdh1_Ctnnb1 = 1 + (Inh_of_Cdh1ToCtnnb1 - 1)*Cdh1^Num_of_Cdh1ToCtnnb1/(Cdh1^Num_of_Cdh1ToCtnnb1 + Trd_of_Cdh1ToCtnnb1^Num_of_Cdh1ToCtnnb1);
HillsLef1_Twist1 = (1 + (Act_of_Lef1ToTwist1 - 1)*Lef1^Num_of_Lef1ToTwist1/(Lef1^Num_of_Lef1ToTwist1 + Trd_of_Lef1ToTwist1^Num_of_Lef1ToTwist1))/Act_of_Lef1ToTwist1;
HillsCtnnb1_Snai2 = (1 + (Act_of_Ctnnb1ToSnai2 - 1)*Ctnnb1^Num_of_Ctnnb1ToSnai2/(Ctnnb1^Num_of_Ctnnb1ToSnai2 + Trd_of_Ctnnb1ToSnai2^Num_of_Ctnnb1ToSnai2))/Act_of_Ctnnb1ToSnai2;
HillsSnai2_Snai2 = (1 + (Act_of_Snai2ToSnai2 - 1)*Snai2^Num_of_Snai2ToSnai2/(Snai2^Num_of_Snai2ToSnai2 + Trd_of_Snai2ToSnai2^Num_of_Snai2ToSnai2))/Act_of_Snai2ToSnai2;
HillsSnai2_Cdh1 = 1 + (Inh_of_Snai2ToCdh1 - 1)*Snai2^Num_of_Snai2ToCdh1/(Snai2^Num_of_Snai2ToCdh1 + Trd_of_Snai2ToCdh1^Num_of_Snai2ToCdh1);
HillsTwist1_Snai2 = (1 + (Act_of_Twist1ToSnai2 - 1)*Twist1^Num_of_Twist1ToSnai2/(Twist1^Num_of_Twist1ToSnai2 + Trd_of_Twist1ToSnai2^Num_of_Twist1ToSnai2))/Act_of_Twist1ToSnai2;
HillsSnai2_Twist1 = (1 + (Act_of_Snai2ToTwist1 - 1)*Snai2^Num_of_Snai2ToTwist1/(Snai2^Num_of_Snai2ToTwist1 + Trd_of_Snai2ToTwist1^Num_of_Snai2ToTwist1))/Act_of_Snai2ToTwist1;
HillsSnai2_Snai1 = 1 + (Inh_of_Snai2ToSnai1 - 1)*Snai2^Num_of_Snai2ToSnai1/(Snai2^Num_of_Snai2ToSnai1 + Trd_of_Snai2ToSnai1^Num_of_Snai2ToSnai1);
HillsSnai1_Snai1 = 1 + (Inh_of_Snai1ToSnai1 - 1)*Snai1^Num_of_Snai1ToSnai1/(Snai1^Num_of_Snai1ToSnai1 + Trd_of_Snai1ToSnai1^Num_of_Snai1ToSnai1);
HillsTwist1_Cdh1 = 1 + (Inh_of_Twist1ToCdh1 - 1)*Twist1^Num_of_Twist1ToCdh1/(Twist1^Num_of_Twist1ToCdh1 + Trd_of_Twist1ToCdh1^Num_of_Twist1ToCdh1);
HillsSnai1_Twist1 = (1 + (Act_of_Snai1ToTwist1 - 1)*Snai1^Num_of_Snai1ToTwist1/(Snai1^Num_of_Snai1ToTwist1 + Trd_of_Snai1ToTwist1^Num_of_Snai1ToTwist1))/Act_of_Snai1ToTwist1;
HillsTwist1_Snai1 = (1 + (Act_of_Twist1ToSnai1 - 1)*Twist1^Num_of_Twist1ToSnai1/(Twist1^Num_of_Twist1ToSnai1 + Trd_of_Twist1ToSnai1^Num_of_Twist1ToSnai1))/Act_of_Twist1ToSnai1;
HillsTwist1_Zeb1 = (1 + (Act_of_Twist1ToZeb1 - 1)*Twist1^Num_of_Twist1ToZeb1/(Twist1^Num_of_Twist1ToZeb1 + Trd_of_Twist1ToZeb1^Num_of_Twist1ToZeb1))/Act_of_Twist1ToZeb1;
HillsSnai1_Zeb1 = (1 + (Act_of_Snai1ToZeb1 - 1)*Snai1^Num_of_Snai1ToZeb1/(Snai1^Num_of_Snai1ToZeb1 + Trd_of_Snai1ToZeb1^Num_of_Snai1ToZeb1))/Act_of_Snai1ToZeb1;
HillsSnai1_Cdh1 = 1 + (Inh_of_Snai1ToCdh1 - 1)*Snai1^Num_of_Snai1ToCdh1/(Snai1^Num_of_Snai1ToCdh1 + Trd_of_Snai1ToCdh1^Num_of_Snai1ToCdh1);
HillsZeb1_Esrp1 = 1 + (Inh_of_Zeb1ToEsrp1 - 1)*Zeb1^Num_of_Zeb1ToEsrp1/(Zeb1^Num_of_Zeb1ToEsrp1 + Trd_of_Zeb1ToEsrp1^Num_of_Zeb1ToEsrp1);
HillsZeb1_Cdh1 = 1 + (Inh_of_Zeb1ToCdh1 - 1)*Zeb1^Num_of_Zeb1ToCdh1/(Zeb1^Num_of_Zeb1ToCdh1 + Trd_of_Zeb1ToCdh1^Num_of_Zeb1ToCdh1);
HillsIrf6_Cdh1 = (1 + (Act_of_Irf6ToCdh1 - 1)*Irf6^Num_of_Irf6ToCdh1/(Irf6^Num_of_Irf6ToCdh1 + Trd_of_Irf6ToCdh1^Num_of_Irf6ToCdh1))/Act_of_Irf6ToCdh1;
HillsGrhl2_Cdh1 = (1 + (Act_of_Grhl2ToCdh1 - 1)*Grhl2^Num_of_Grhl2ToCdh1/(Grhl2^Num_of_Grhl2ToCdh1 + Trd_of_Grhl2ToCdh1^Num_of_Grhl2ToCdh1))/Act_of_Grhl2ToCdh1;
HillsGrhl2_Zeb1 = 1 + (Inh_of_Grhl2ToZeb1 - 1)*Grhl2^Num_of_Grhl2ToZeb1/(Grhl2^Num_of_Grhl2ToZeb1 + Trd_of_Grhl2ToZeb1^Num_of_Grhl2ToZeb1);
HillsZeb1_Grhl2 = 1 + (Inh_of_Zeb1ToGrhl2 - 1)*Zeb1^Num_of_Zeb1ToGrhl2/(Zeb1^Num_of_Zeb1ToGrhl2 + Trd_of_Zeb1ToGrhl2^Num_of_Zeb1ToGrhl2);
HillsEsrp1_Grhl2 = (1 + (Act_of_Esrp1ToGrhl2 - 1)*Esrp1^Num_of_Esrp1ToGrhl2/(Esrp1^Num_of_Esrp1ToGrhl2 + Trd_of_Esrp1ToGrhl2^Num_of_Esrp1ToGrhl2))/Act_of_Esrp1ToGrhl2;
HillsGrhl2_Esrp1 = (1 + (Act_of_Grhl2ToEsrp1 - 1)*Grhl2^Num_of_Grhl2ToEsrp1/(Grhl2^Num_of_Grhl2ToEsrp1 + Trd_of_Grhl2ToEsrp1^Num_of_Grhl2ToEsrp1))/Act_of_Grhl2ToEsrp1;
HillsDlx3_Trp63 = (1 + (Act_of_Dlx3ToTrp63 - 1)*Dlx3^Num_of_Dlx3ToTrp63/(Dlx3^Num_of_Dlx3ToTrp63 + Trd_of_Dlx3ToTrp63^Num_of_Dlx3ToTrp63))/Act_of_Dlx3ToTrp63;
HillsGrhl2_Dlx3 = (1 + (Act_of_Grhl2ToDlx3 - 1)*Grhl2^Num_of_Grhl2ToDlx3/(Grhl2^Num_of_Grhl2ToDlx3 + Trd_of_Grhl2ToDlx3^Num_of_Grhl2ToDlx3))/Act_of_Grhl2ToDlx3;
HillsGrhl2_Hmgn3 = (1 + (Act_of_Grhl2ToHmgn3 - 1)*Grhl2^Num_of_Grhl2ToHmgn3/(Grhl2^Num_of_Grhl2ToHmgn3 + Trd_of_Grhl2ToHmgn3^Num_of_Grhl2ToHmgn3))/Act_of_Grhl2ToHmgn3;
HillsHmgn3_Trp63 = (1 + (Act_of_Hmgn3ToTrp63 - 1)*Hmgn3^Num_of_Hmgn3ToTrp63/(Hmgn3^Num_of_Hmgn3ToTrp63 + Trd_of_Hmgn3ToTrp63^Num_of_Hmgn3ToTrp63))/Act_of_Hmgn3ToTrp63;
HillsTrp63_Grhl2 = (1 + (Act_of_Trp63ToGrhl2 - 1)*Trp63^Num_of_Trp63ToGrhl2/(Trp63^Num_of_Trp63ToGrhl2 + Trd_of_Trp63ToGrhl2^Num_of_Trp63ToGrhl2))/Act_of_Trp63ToGrhl2;
HillsTrp63_Irf6 = (1 + (Act_of_Trp63ToIrf6 - 1)*Trp63^Num_of_Trp63ToIrf6/(Trp63^Num_of_Trp63ToIrf6 + Trd_of_Trp63ToIrf6^Num_of_Trp63ToIrf6))/Act_of_Trp63ToIrf6;
HillsIrf6_Grhl2 = (1 + (Act_of_Irf6ToGrhl2 - 1)*Irf6^Num_of_Irf6ToGrhl2/(Irf6^Num_of_Irf6ToGrhl2 + Trd_of_Irf6ToGrhl2^Num_of_Irf6ToGrhl2))/Act_of_Irf6ToGrhl2;
HillsGrhl2_Irf6 = (1 + (Act_of_Grhl2ToIrf6 - 1)*Grhl2^Num_of_Grhl2ToIrf6/(Grhl2^Num_of_Grhl2ToIrf6 + Trd_of_Grhl2ToIrf6^Num_of_Grhl2ToIrf6))/Act_of_Grhl2ToIrf6;
HillsGrhl2_Trp63 = (1 + (Act_of_Grhl2ToTrp63 - 1)*Grhl2^Num_of_Grhl2ToTrp63/(Grhl2^Num_of_Grhl2ToTrp63 + Trd_of_Grhl2ToTrp63^Num_of_Grhl2ToTrp63))/Act_of_Grhl2ToTrp63;
dydt = [Prod_of_Wnt - Deg_of_Wnt*Wnt
Prod_of_Ctnnb1*HillsWnt_Ctnnb1*HillsCdh1_Ctnnb1 - Deg_of_Ctnnb1*Ctnnb1
Prod_of_Cdh1*HillsSnai2_Cdh1*HillsTwist1_Cdh1*HillsSnai1_Cdh1*HillsZeb1_Cdh1*HillsIrf6_Cdh1*HillsGrhl2_Cdh1 - Deg_of_Cdh1*Cdh1
Prod_of_Lef1*HillsCtnnb1_Lef1 - Deg_of_Lef1*Lef1
Prod_of_Snai2*HillsCtnnb1_Snai2*HillsSnai2_Snai2*HillsTwist1_Snai2 - Deg_of_Snai2*Snai2
Prod_of_Twist1*HillsLef1_Twist1*HillsSnai2_Twist1*HillsSnai1_Twist1 - Deg_of_Twist1*Twist1
Prod_of_Snai1*HillsSnai2_Snai1*HillsSnai1_Snai1*HillsTwist1_Snai1 - Deg_of_Snai1*Snai1
Prod_of_Zeb1*HillsTwist1_Zeb1*HillsSnai1_Zeb1*HillsGrhl2_Zeb1 - Deg_of_Zeb1*Zeb1
Prod_of_Irf6*HillsTrp63_Irf6*HillsGrhl2_Irf6 - Deg_of_Irf6*Irf6
Prod_of_Grhl2*HillsZeb1_Grhl2*HillsEsrp1_Grhl2*HillsTrp63_Grhl2*HillsIrf6_Grhl2 - Deg_of_Grhl2*Grhl2
Prod_of_Esrp1*HillsZeb1_Esrp1*HillsGrhl2_Esrp1 - Deg_of_Esrp1*Esrp1
Prod_of_Dlx3*HillsGrhl2_Dlx3 - Deg_of_Dlx3*Dlx3
Prod_of_Hmgn3*HillsGrhl2_Hmgn3 - Deg_of_Hmgn3*Hmgn3
Prod_of_Trp63*HillsDlx3_Trp63*HillsHmgn3_Trp63*HillsGrhl2_Trp63 - Deg_of_Trp63*Trp63];
