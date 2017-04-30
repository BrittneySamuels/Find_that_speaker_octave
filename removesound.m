function result = removesound(file)
    %read file
    [Y1,fs] = audioread(file);
    
    %filter out everything that's below a certain threshold.
    %Get the mean value and calculate a threshold
    
    fft_values = fft(Y1);
    mean_value = mean(abs(fft_values));
    threshold  = 0.8*mean_value; % Fine-tune this
  
    %Remove everything that's below the threshold -we assume that it corresponds to noise
     for i = 1:length(fft_values)
         if abs(fft_values(i)) < threshold
            fft_values(i) = 0;
         end   
     end
    %display (fft_values);
    
    %Get the filtered samples
     filtered_samples = ifft(fft_values);
     audiowrite('Obama2ifftfilter.wav', filtered_samples, fs);
     [result,fs]=audioread('Obama2ifftfilter.wav');
     %sound(y,fs,16);
end