clear allsf='xrayl.txt';x=load(sf);function res = prange (x)  x=sort(x(:));  n=length(x);  res = x(n)-x(1);endfunction res = pmean(x)  n=length(x(:));  res = sum(vec(x))/n;end#средннее и размахfunction [rx, nx] = sinlos (x)  rx = prange(x);  nx = pmean(x);
end
[rng, mn] = sinlos(x)