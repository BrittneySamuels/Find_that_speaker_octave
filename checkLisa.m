function log_like = checkLisa
  y = evalin( 'base', 'gmmModelLisa' );
  x = evalin( 'base', 'testing_features1' );
  [~,log_like] = posterior(y,x);
end