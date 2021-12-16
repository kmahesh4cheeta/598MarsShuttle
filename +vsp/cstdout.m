function varargout = cstdout(varargin)
  narginchk(0,1)
  if nargin==0
    nargoutchk(0,1)
    varargout{1} = vspMEX(525);
  else
    nargoutchk(0,0)
    vspMEX(526,varargin{1});
  end
end
