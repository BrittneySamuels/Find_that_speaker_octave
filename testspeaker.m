function resultname = testspeaker
  max = 0;
  if(checkObama > max)
    max = checkObama;
    resultname = "Obama is the speaker";
    disp (max);
  end
  if (checkDoraine < max)
    max = checkDoraine;
    resultname = "Doraine is the speaker";
    disp (max);
  end

  if (checkKevin < max)
    max = checkKevin;
    resultname = "Kevin is the speaker";
    disp (max);
  end
  if (checkNeville < max)
    max = checkNeville;
    resultname = "Neville is the speaker";
    disp (max);
  end
  if (checkLisa < max)
    max = checkLisa;
    resultname = "Lisa is the speaker";
    disp (max);
  end
end