function dydt = repressors_5(t, y, Act_of_n0Ton1,Num_of_n0Ton1,Trd_of_n0Ton1,Inh_of_n0Ton9,Num_of_n0Ton9,Trd_of_n0Ton9,Act_of_n1Ton2,Num_of_n1Ton2,Trd_of_n1Ton2,Inh_of_n1Ton8,Num_of_n1Ton8,Trd_of_n1Ton8,Act_of_n2Ton3,Num_of_n2Ton3,Trd_of_n2Ton3,Inh_of_n2Ton7,Num_of_n2Ton7,Trd_of_n2Ton7,Act_of_n3Ton4,Num_of_n3Ton4,Trd_of_n3Ton4,Inh_of_n3Ton6,Num_of_n3Ton6,Trd_of_n3Ton6,Inh_of_n4Ton5,Num_of_n4Ton5,Trd_of_n4Ton5,Inh_of_n5Ton4,Num_of_n5Ton4,Trd_of_n5Ton4,Act_of_n5Ton6,Num_of_n5Ton6,Trd_of_n5Ton6,Inh_of_n6Ton3,Num_of_n6Ton3,Trd_of_n6Ton3,Act_of_n6Ton7,Num_of_n6Ton7,Trd_of_n6Ton7,Inh_of_n7Ton2,Num_of_n7Ton2,Trd_of_n7Ton2,Act_of_n7Ton8,Num_of_n7Ton8,Trd_of_n7Ton8,Inh_of_n8Ton1,Num_of_n8Ton1,Trd_of_n8Ton1,Act_of_n8Ton9,Num_of_n8Ton9,Trd_of_n8Ton9,Inh_of_n9Ton0,Num_of_n9Ton0,Trd_of_n9Ton0,Prod_of_n0,Deg_of_n0,Prod_of_n1,Deg_of_n1,Prod_of_n2,Deg_of_n2,Prod_of_n3,Deg_of_n3,Prod_of_n4,Deg_of_n4,Prod_of_n5,Deg_of_n5,Prod_of_n6,Deg_of_n6,Prod_of_n7,Deg_of_n7,Prod_of_n8,Deg_of_n8,Prod_of_n9,Deg_of_n9)
n0 = y(1);
n1 = y(2);
n2 = y(3);
n3 = y(4);
n4 = y(5);
n5 = y(6);
n6 = y(7);
n7 = y(8);
n8 = y(9);
n9 = y(10);
Hillsn0_n1 = (1 + (Act_of_n0Ton1 - 1)*n0^Num_of_n0Ton1/(n0^Num_of_n0Ton1 + Trd_of_n0Ton1^Num_of_n0Ton1))/Act_of_n0Ton1;
Hillsn0_n9 = 1 + (Inh_of_n0Ton9 - 1)*n0^Num_of_n0Ton9/(n0^Num_of_n0Ton9 + Trd_of_n0Ton9^Num_of_n0Ton9);
Hillsn1_n2 = (1 + (Act_of_n1Ton2 - 1)*n1^Num_of_n1Ton2/(n1^Num_of_n1Ton2 + Trd_of_n1Ton2^Num_of_n1Ton2))/Act_of_n1Ton2;
Hillsn1_n8 = 1 + (Inh_of_n1Ton8 - 1)*n1^Num_of_n1Ton8/(n1^Num_of_n1Ton8 + Trd_of_n1Ton8^Num_of_n1Ton8);
Hillsn2_n3 = (1 + (Act_of_n2Ton3 - 1)*n2^Num_of_n2Ton3/(n2^Num_of_n2Ton3 + Trd_of_n2Ton3^Num_of_n2Ton3))/Act_of_n2Ton3;
Hillsn2_n7 = 1 + (Inh_of_n2Ton7 - 1)*n2^Num_of_n2Ton7/(n2^Num_of_n2Ton7 + Trd_of_n2Ton7^Num_of_n2Ton7);
Hillsn3_n4 = (1 + (Act_of_n3Ton4 - 1)*n3^Num_of_n3Ton4/(n3^Num_of_n3Ton4 + Trd_of_n3Ton4^Num_of_n3Ton4))/Act_of_n3Ton4;
Hillsn3_n6 = 1 + (Inh_of_n3Ton6 - 1)*n3^Num_of_n3Ton6/(n3^Num_of_n3Ton6 + Trd_of_n3Ton6^Num_of_n3Ton6);
Hillsn4_n5 = 1 + (Inh_of_n4Ton5 - 1)*n4^Num_of_n4Ton5/(n4^Num_of_n4Ton5 + Trd_of_n4Ton5^Num_of_n4Ton5);
Hillsn5_n4 = 1 + (Inh_of_n5Ton4 - 1)*n5^Num_of_n5Ton4/(n5^Num_of_n5Ton4 + Trd_of_n5Ton4^Num_of_n5Ton4);
Hillsn5_n6 = (1 + (Act_of_n5Ton6 - 1)*n5^Num_of_n5Ton6/(n5^Num_of_n5Ton6 + Trd_of_n5Ton6^Num_of_n5Ton6))/Act_of_n5Ton6;
Hillsn6_n3 = 1 + (Inh_of_n6Ton3 - 1)*n6^Num_of_n6Ton3/(n6^Num_of_n6Ton3 + Trd_of_n6Ton3^Num_of_n6Ton3);
Hillsn6_n7 = (1 + (Act_of_n6Ton7 - 1)*n6^Num_of_n6Ton7/(n6^Num_of_n6Ton7 + Trd_of_n6Ton7^Num_of_n6Ton7))/Act_of_n6Ton7;
Hillsn7_n2 = 1 + (Inh_of_n7Ton2 - 1)*n7^Num_of_n7Ton2/(n7^Num_of_n7Ton2 + Trd_of_n7Ton2^Num_of_n7Ton2);
Hillsn7_n8 = (1 + (Act_of_n7Ton8 - 1)*n7^Num_of_n7Ton8/(n7^Num_of_n7Ton8 + Trd_of_n7Ton8^Num_of_n7Ton8))/Act_of_n7Ton8;
Hillsn8_n1 = 1 + (Inh_of_n8Ton1 - 1)*n8^Num_of_n8Ton1/(n8^Num_of_n8Ton1 + Trd_of_n8Ton1^Num_of_n8Ton1);
Hillsn8_n9 = (1 + (Act_of_n8Ton9 - 1)*n8^Num_of_n8Ton9/(n8^Num_of_n8Ton9 + Trd_of_n8Ton9^Num_of_n8Ton9))/Act_of_n8Ton9;
Hillsn9_n0 = 1 + (Inh_of_n9Ton0 - 1)*n9^Num_of_n9Ton0/(n9^Num_of_n9Ton0 + Trd_of_n9Ton0^Num_of_n9Ton0);
dydt = [Prod_of_n0*Hillsn9_n0 - Deg_of_n0*n0
Prod_of_n1*Hillsn0_n1*Hillsn8_n1 - Deg_of_n1*n1
Prod_of_n2*Hillsn1_n2*Hillsn7_n2 - Deg_of_n2*n2
Prod_of_n3*Hillsn2_n3*Hillsn6_n3 - Deg_of_n3*n3
Prod_of_n4*Hillsn3_n4*Hillsn5_n4 - Deg_of_n4*n4
Prod_of_n5*Hillsn4_n5 - Deg_of_n5*n5
Prod_of_n6*Hillsn3_n6*Hillsn5_n6 - Deg_of_n6*n6
Prod_of_n7*Hillsn2_n7*Hillsn6_n7 - Deg_of_n7*n7
Prod_of_n8*Hillsn1_n8*Hillsn7_n8 - Deg_of_n8*n8
Prod_of_n9*Hillsn0_n9*Hillsn8_n9 - Deg_of_n9*n9];
