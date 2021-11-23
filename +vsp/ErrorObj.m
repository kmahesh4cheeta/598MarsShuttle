classdef  ErrorObj < SwigRef
  methods
    function this = swig_this(self)
      this = vspMEX(3, self);
    end
    function self = ErrorObj(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = vspMEX(171, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.SwigClear();
      end
    end
    function delete(self)
        if self.swigPtr
          vspMEX(172, self);
          self.SwigClear();
        end
    end
    function varargout = GetErrorCode(self,varargin)
      [varargout{1:nargout}] = vspMEX(173, self, varargin{:});
    end
    function varargout = GetErrorString(self,varargin)
      [varargout{1:nargout}] = vspMEX(174, self, varargin{:});
    end
    function varargout = m_ErrorCode(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = vspMEX(175, self);
      else
        nargoutchk(0, 0)
        vspMEX(176, self, varargin{1});
      end
    end
    function varargout = m_ErrorString(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = vspMEX(177, self);
      else
        nargoutchk(0, 0)
        vspMEX(178, self, varargin{1});
      end
    end
    function varargout = NoError(self,varargin)
      [varargout{1:nargout}] = vspMEX(179, self, varargin{:});
    end
  end
  methods(Static)
  end
end
