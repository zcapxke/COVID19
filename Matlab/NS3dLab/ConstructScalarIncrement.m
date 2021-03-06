FT = fftn(T);

dT = (-U.*real(ifftn(iKX.*FT)) - V.*real(ifftn(iKY.*FT)) - W.*real(ifftn(iKZ.*FT))  - ...
      real(ifftn(iKX.*fftn(U.*T))) - real(ifftn(iKY.*fftn(V.*T))) - real(ifftn(iKZ.*fftn(W.*T))))*dt/2 ...
     + nu*dt*real(ifftn(DiffIF.*FT));

