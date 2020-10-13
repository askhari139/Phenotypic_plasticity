function dydt = NRF2(t, y, Act_of_XToSNAIL,Num_of_XToSNAIL,Trd_of_XToSNAIL,Inh_of_miR34ToSNAIL,Num_of_miR34ToSNAIL,Trd_of_miR34ToSNAIL,Inh_of_SNAILToSNAIL,Num_of_SNAILToSNAIL,Trd_of_SNAILToSNAIL,Inh_of_SNAILTomiR34,Num_of_SNAILTomiR34,Trd_of_SNAILTomiR34,Inh_of_SNAILTomiR200,Num_of_SNAILTomiR200,Trd_of_SNAILTomiR200,Act_of_SNAILToZEB,Num_of_SNAILToZEB,Trd_of_SNAILToZEB,Inh_of_miR200ToZEB,Num_of_miR200ToZEB,Trd_of_miR200ToZEB,Inh_of_miR200ToKEAP1,Num_of_miR200ToKEAP1,Trd_of_miR200ToKEAP1,Act_of_ZEBToZEB,Num_of_ZEBToZEB,Trd_of_ZEBToZEB,Inh_of_ZEBTomiR34,Num_of_ZEBTomiR34,Trd_of_ZEBTomiR34,Inh_of_ZEBTomiR200,Num_of_ZEBTomiR200,Trd_of_ZEBTomiR200,Inh_of_ZEBToEcadherin,Num_of_ZEBToEcadherin,Trd_of_ZEBToEcadherin,Inh_of_EcadherinToZEB,Num_of_EcadherinToZEB,Trd_of_EcadherinToZEB,Inh_of_EcadherinToNRF2,Num_of_EcadherinToNRF2,Trd_of_EcadherinToNRF2,Inh_of_KEAP1ToNRF2,Num_of_KEAP1ToNRF2,Trd_of_KEAP1ToNRF2,Inh_of_NRF2ToSNAIL,Num_of_NRF2ToSNAIL,Trd_of_NRF2ToSNAIL,Prod_of_X,Deg_of_X,Prod_of_miR34,Deg_of_miR34,Prod_of_SNAIL,Deg_of_SNAIL,Prod_of_miR200,Deg_of_miR200,Prod_of_ZEB,Deg_of_ZEB,Prod_of_Ecadherin,Deg_of_Ecadherin,Prod_of_KEAP1,Deg_of_KEAP1,Prod_of_NRF2,Deg_of_NRF2)
X = y(1);
miR34 = y(2);
SNAIL = y(3);
miR200 = y(4);
ZEB = y(5);
Ecadherin = y(6);
KEAP1 = y(7);
NRF2 = y(8);
HillsX_SNAIL = (1 + (Act_of_XToSNAIL - 1)*X^Num_of_XToSNAIL/(X^Num_of_XToSNAIL + Trd_of_XToSNAIL^Num_of_XToSNAIL))/Act_of_XToSNAIL;
HillsmiR34_SNAIL = 1 + (Inh_of_miR34ToSNAIL - 1)*miR34^Num_of_miR34ToSNAIL/(miR34^Num_of_miR34ToSNAIL + Trd_of_miR34ToSNAIL^Num_of_miR34ToSNAIL);
HillsSNAIL_SNAIL = 1 + (Inh_of_SNAILToSNAIL - 1)*SNAIL^Num_of_SNAILToSNAIL/(SNAIL^Num_of_SNAILToSNAIL + Trd_of_SNAILToSNAIL^Num_of_SNAILToSNAIL);
HillsSNAIL_miR34 = 1 + (Inh_of_SNAILTomiR34 - 1)*SNAIL^Num_of_SNAILTomiR34/(SNAIL^Num_of_SNAILTomiR34 + Trd_of_SNAILTomiR34^Num_of_SNAILTomiR34);
HillsSNAIL_miR200 = 1 + (Inh_of_SNAILTomiR200 - 1)*SNAIL^Num_of_SNAILTomiR200/(SNAIL^Num_of_SNAILTomiR200 + Trd_of_SNAILTomiR200^Num_of_SNAILTomiR200);
HillsSNAIL_ZEB = (1 + (Act_of_SNAILToZEB - 1)*SNAIL^Num_of_SNAILToZEB/(SNAIL^Num_of_SNAILToZEB + Trd_of_SNAILToZEB^Num_of_SNAILToZEB))/Act_of_SNAILToZEB;
HillsmiR200_ZEB = 1 + (Inh_of_miR200ToZEB - 1)*miR200^Num_of_miR200ToZEB/(miR200^Num_of_miR200ToZEB + Trd_of_miR200ToZEB^Num_of_miR200ToZEB);
HillsmiR200_KEAP1 = 1 + (Inh_of_miR200ToKEAP1 - 1)*miR200^Num_of_miR200ToKEAP1/(miR200^Num_of_miR200ToKEAP1 + Trd_of_miR200ToKEAP1^Num_of_miR200ToKEAP1);
HillsZEB_ZEB = (1 + (Act_of_ZEBToZEB - 1)*ZEB^Num_of_ZEBToZEB/(ZEB^Num_of_ZEBToZEB + Trd_of_ZEBToZEB^Num_of_ZEBToZEB))/Act_of_ZEBToZEB;
HillsZEB_miR34 = 1 + (Inh_of_ZEBTomiR34 - 1)*ZEB^Num_of_ZEBTomiR34/(ZEB^Num_of_ZEBTomiR34 + Trd_of_ZEBTomiR34^Num_of_ZEBTomiR34);
HillsZEB_miR200 = 1 + (Inh_of_ZEBTomiR200 - 1)*ZEB^Num_of_ZEBTomiR200/(ZEB^Num_of_ZEBTomiR200 + Trd_of_ZEBTomiR200^Num_of_ZEBTomiR200);
HillsZEB_Ecadherin = 1 + (Inh_of_ZEBToEcadherin - 1)*ZEB^Num_of_ZEBToEcadherin/(ZEB^Num_of_ZEBToEcadherin + Trd_of_ZEBToEcadherin^Num_of_ZEBToEcadherin);
HillsEcadherin_ZEB = 1 + (Inh_of_EcadherinToZEB - 1)*Ecadherin^Num_of_EcadherinToZEB/(Ecadherin^Num_of_EcadherinToZEB + Trd_of_EcadherinToZEB^Num_of_EcadherinToZEB);
HillsEcadherin_NRF2 = 1 + (Inh_of_EcadherinToNRF2 - 1)*Ecadherin^Num_of_EcadherinToNRF2/(Ecadherin^Num_of_EcadherinToNRF2 + Trd_of_EcadherinToNRF2^Num_of_EcadherinToNRF2);
HillsKEAP1_NRF2 = 1 + (Inh_of_KEAP1ToNRF2 - 1)*KEAP1^Num_of_KEAP1ToNRF2/(KEAP1^Num_of_KEAP1ToNRF2 + Trd_of_KEAP1ToNRF2^Num_of_KEAP1ToNRF2);
HillsNRF2_SNAIL = 1 + (Inh_of_NRF2ToSNAIL - 1)*NRF2^Num_of_NRF2ToSNAIL/(NRF2^Num_of_NRF2ToSNAIL + Trd_of_NRF2ToSNAIL^Num_of_NRF2ToSNAIL);
dydt = [Prod_of_X - Deg_of_X*X
Prod_of_miR34*HillsSNAIL_miR34*HillsZEB_miR34 - Deg_of_miR34*miR34
Prod_of_SNAIL*HillsX_SNAIL*HillsmiR34_SNAIL*HillsSNAIL_SNAIL*HillsNRF2_SNAIL - Deg_of_SNAIL*SNAIL
Prod_of_miR200*HillsSNAIL_miR200*HillsZEB_miR200 - Deg_of_miR200*miR200
Prod_of_ZEB*HillsSNAIL_ZEB*HillsmiR200_ZEB*HillsZEB_ZEB*HillsEcadherin_ZEB - Deg_of_ZEB*ZEB
Prod_of_Ecadherin*HillsZEB_Ecadherin - Deg_of_Ecadherin*Ecadherin
Prod_of_KEAP1*HillsmiR200_KEAP1 - Deg_of_KEAP1*KEAP1
Prod_of_NRF2*HillsEcadherin_NRF2*HillsKEAP1_NRF2 - Deg_of_NRF2*NRF2];
