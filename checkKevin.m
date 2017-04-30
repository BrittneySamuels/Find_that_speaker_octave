function log_like = checkKevin
  y = evalin( 'base', 'gmmModelKevin' );
  x = evalin( 'base', 'testing_features1' );
  [~,log_like] = posterior(y,x);
end