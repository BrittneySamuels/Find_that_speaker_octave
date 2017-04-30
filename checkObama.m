function log_like = checkObama
  y = evalin( 'base', 'gmmModelObama' );
  x = evalin( 'base', 'testing_features1' );
  [~,log_like] = posterior(y,x);
end