
    fs = 8000;
    
    %Load GMMModels
%     gmmModelObama = load('gmmModelObama');
%     gmmModelDoraine = load ('gmmModelDoraine');
%     gmmModelKevin = load ('gmmModelKevin');
%     gmmModelLisa = load ('gmmModelLisa');
%     gmmModelNeville = load ('gmmModelNeville');
    
    %clean and ready test sound sample
    testing_data = removesound('1_train.wav');
    testing_features1  = melcepst(testing_data, fs);
    
    %identify speaker
    x = testspeaker;
    disp (x);
