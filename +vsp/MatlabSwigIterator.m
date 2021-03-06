classdef  MatlabSwigIterator < SwigRef
  methods
    function this = swig_this(self)
      this = vspMEX(3, self);
    end
    function delete(self)
        if self.swigPtr
          vspMEX(5, self);
          self.SwigClear();
        end
    end
    function varargout = value(self,varargin)
      [varargout{1:nargout}] = vspMEX(6, self, varargin{:});
    end
    function varargout = incr(self,varargin)
      [varargout{1:nargout}] = vspMEX(7, self, varargin{:});
    end
    function varargout = decr(self,varargin)
      [varargout{1:nargout}] = vspMEX(8, self, varargin{:});
    end
    function varargout = distance(self,varargin)
      [varargout{1:nargout}] = vspMEX(9, self, varargin{:});
    end
    function varargout = equal(self,varargin)
      [varargout{1:nargout}] = vspMEX(10, self, varargin{:});
    end
    function varargout = copy(self,varargin)
      [varargout{1:nargout}] = vspMEX(11, self, varargin{:});
    end
    function varargout = next(self,varargin)
      [varargout{1:nargout}] = vspMEX(12, self, varargin{:});
    end
    function varargout = previous(self,varargin)
      [varargout{1:nargout}] = vspMEX(13, self, varargin{:});
    end
    function varargout = advance(self,varargin)
      [varargout{1:nargout}] = vspMEX(14, self, varargin{:});
    end
    function varargout = eq(self,varargin)
      [varargout{1:nargout}] = vspMEX(15, self, varargin{:});
    end
    function varargout = ne(self,varargin)
      [varargout{1:nargout}] = vspMEX(16, self, varargin{:});
    end
    function varargout = TODOincr(self,varargin)
      [varargout{1:nargout}] = vspMEX(17, self, varargin{:});
    end
    function varargout = TODOdecr(self,varargin)
      [varargout{1:nargout}] = vspMEX(18, self, varargin{:});
    end
    function varargout = plus(self,varargin)
      [varargout{1:nargout}] = vspMEX(19, self, varargin{:});
    end
    function varargout = minus(self,varargin)
      [varargout{1:nargout}] = vspMEX(20, self, varargin{:});
    end
    function self = MatlabSwigIterator(varargin)
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
  end
end
