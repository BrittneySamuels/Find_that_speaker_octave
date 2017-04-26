%pkg load statistics;%% Include voicebox file melcepst.m%melcepst;%% Include gmm library%gmmlibrart;%% Data Inputfs = 8000;training_data1 = wavread('1_train.wav');training_data2 = wavread('2_train.wav');training_data3 = wavread('3_train.wav');training_data4 = wavread('4_train.wav');training_data5 = wavread('5_train.wav');training_data6 = wavread('6_train.wav');training_data7 = wavread('7_train.wav');training_data8 = wavread('8_train.wav');training_data9 = wavread('9_train.wav');training_data10 = wavread('10_train.wav');testing_data1  = wavread('Obama2ifftfilter.wav');%testing_data2  = wavread('02_test.wav');%testing_data3  = wavread('03_test.wav');%% Feature Extraction (MFCCs)training_features1 = melcepst(training_data1, fs);training_features2 = melcepst(training_data2, fs);training_features3 = melcepst(training_data3, fs);training_features4 = melcepst(training_data4, fs);training_features5 = melcepst(training_data5, fs);training_features6 = melcepst(training_data6, fs);training_features7 = melcepst(training_data7, fs);training_features8 = melcepst(training_data8, fs);training_features9 = melcepst(training_data9, fs);training_features10 = melcepst(training_data10, fs);testing_features1  = melcepst(testing_data1, fs);%testing_features2  = melcepst(testing_data2, fs);%testing_features3  = melcepst(testing_data3, fs);%% testing MFCCs%display (training_features1);%display (training_features2);%display (training_features3);%display (training_features4);%display (training_features5);%display (training_features6);%display (testing_features1);%Building GMM ModelMFCCtraindata= [training_features1;training_features2;training_features3;training_features4;training_features5;training_features6;training_features7;training_features8;training_features9;training_features10];GMModel = gmdistribution.fit(MFCCtraindata,10);%display (GMModel);dlmwrite("GMModel.csv",GMModel);%ProbabilityP = posterior(GMModel,testing_features1);%display (P);%mean(P)maxll = max (P, [], 2);%minus maxll to avoid underflowpost = exp(bsxfun(@minus, P, maxll));%density(i) is \sum_j |alpha_j P(x_i| \theta_j)/ exp(maxll(i))density = sum(post,2);%normalize posteriorspost = bsxfun(@rdivide, post, density);logpdf = log(density) + maxll;li = sum(logpdf)