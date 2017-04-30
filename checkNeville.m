function log_like = checkNeville
  y = evalin( 'base', 'gmmModelNeville' );
  x = evalin( 'base', 'testing_features1' );
  [~,log_like] = posterior(y,x);
end