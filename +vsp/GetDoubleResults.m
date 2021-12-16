function varargout = GetDoubleResults(varargin)
  [varargout{1:nargout}] = vspMEX(256, varargin{:});
end
