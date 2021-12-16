classdef  ErrorMgrSingleton < SwigRef
  methods
    function this = swig_this(self)
      this = vspMEX(3, self);
    end
    function varargout = GetErrorLastCallFlag(self,varargin)
      [varargout{1:nargout}] = vspMEX(180, self, varargin{:});
    end
    function varargout = GetNumTotalErrors(self,varargin)
      [varargout{1:nargout}] = vspMEX(181, self, varargin{:});
    end
    function varargout = PopLastError(self,varargin)
      [varargout{1:nargout}] = vspMEX(182, self, varargin{:});
    end
    function varargout = GetLastError(self,varargin)
      [varargout{1:nargout}] = vspMEX(183, self, varargin{:});
    end
    function varargout = PopErrorAndPrint(self,varargin)
      [varargout{1:nargout}] = vspMEX(184, self, varargin{:});
    end
    function varargout = SilenceErrors(self,varargin)
      [varargout{1:nargout}] = vspMEX(185, self, varargin{:});
    end
    function varargout = PrintOnErrors(self,varargin)
      [varargout{1:nargout}] = vspMEX(186, self, varargin{:});
    end
    function varargout = AddError(self,varargin)
      [varargout{1:nargout}] = vspMEX(187, self, varargin{:});
    end
    function varargout = NoError(self,varargin)
      [varargout{1:nargout}] = vspMEX(188, self, varargin{:});
    end
    function varargout = MessageCallback(self,varargin)
      [varargout{1:nargout}] = vspMEX(189, self, varargin{:});
    end
    function self = ErrorMgrSingleton(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        error('No matching constructor');
      end
    end
  end
  methods(Static)
    function varargout = getInstance(varargin)
     [varargout{1:nargout}] = vspMEX(190, varargin{:});
    end
  end
end
