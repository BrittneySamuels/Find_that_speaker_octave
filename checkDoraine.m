function log_like = checkDoraine
  y = evalin( 'base', 'gmmModelDoraine' );
  x = evalin( 'base', 'testing_features1' );
  [~,log_like] = posterior(y,x);
end