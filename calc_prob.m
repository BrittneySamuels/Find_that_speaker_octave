function li = calc_prob(P)
  maxll = max (P, [], 2);
  %minus maxll to avoid underflow
  post = exp(bsxfun(@minus, P, maxll));
  %density(i) is \sum_j |alpha_j P(x_i| \theta_j)/ exp(maxll(i))
  density = sum(post,2);
  %normalize posteriors
  post = bsxfun(@rdivide, post, density);
  logpdf = log(density) + maxll;
  li = sum(logpdf);
end