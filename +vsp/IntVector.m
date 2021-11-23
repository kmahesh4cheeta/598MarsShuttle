classdef  IntVector < SwigRef
  methods
    function this = swig_this(self)
      this = vspMEX(3, self);
    end
    function varargout = pop(self,varargin)
      [varargout{1:nargout}] = vspMEX(21, self, varargin{:});
    end
    function varargout = brace(self,varargin)
      [varargout{1:nargout}] = vspMEX(22, self, varargin{:});
    end
    function varargout = setbrace(self,varargin)
      [varargout{1:nargout}] = vspMEX(23, self, varargin{:});
    end
    function varargout = append(self,varargin)
      [varargout{1:nargout}] = vspMEX(24, self, varargin{:});
    end
    function varargout = empty(self,varargin)
      [varargout{1:nargout}] = vspMEX(25, self, varargin{:});
    end
    function varargout = size(self,varargin)
      [varargout{1:nargout}] = vspMEX(26, self, varargin{:});
    end
    function varargout = swap(self,varargin)
      [varargout{1:nargout}] = vspMEX(27, self, varargin{:});
    end
    function varargout = begin(self,varargin)
      [varargout{1:nargout}] = vspMEX(28, self, varargin{:});
    end
    function varargout = end(self,varargin)
      [varargout{1:nargout}] = vspMEX(29, self, varargin{:});
    end
    function varargout = rbegin(self,varargin)
      [varargout{1:nargout}] = vspMEX(30, self, varargin{:});
    end
    function varargout = rend(self,varargin)
      [varargout{1:nargout}] = vspMEX(31, self, varargin{:});
    end
    function varargout = clear(self,varargin)
      [varargout{1:nargout}] = vspMEX(32, self, varargin{:});
    end
    function varargout = get_allocator(self,varargin)
      [varargout{1:nargout}] = vspMEX(33, self, varargin{:});
    end
    function varargout = pop_back(self,varargin)
      [varargout{1:nargout}] = vspMEX(34, self, varargin{:});
    end
    function varargout = erase(self,varargin)
      [varargout{1:nargout}] = vspMEX(35, self, varargin{:});
    end
    function self = IntVector(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = vspMEX(36, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.SwigClear();
      end
    end
    function varargout = push_back(self,varargin)
      [varargout{1:nargout}] = vspMEX(37, self, varargin{:});
    end
    function varargout = front(self,varargin)
      [varargout{1:nargout}] = vspMEX(38, self, varargin{:});
    end
    function varargout = back(self,varargin)
      [varargout{1:nargout}] = vspMEX(39, self, varargin{:});
    end
    function varargout = assign(self,varargin)
      [varargout{1:nargout}] = vspMEX(40, self, varargin{:});
    end
    function varargout = resize(self,varargin)
      [varargout{1:nargout}] = vspMEX(41, self, varargin{:});
    end
    function varargout = insert(self,varargin)
      [varargout{1:nargout}] = vspMEX(42, self, varargin{:});
    end
    function varargout = reserve(self,varargin)
      [varargout{1:nargout}] = vspMEX(43, self, varargin{:});
    end
    function varargout = capacity(self,varargin)
      [varargout{1:nargout}] = vspMEX(44, self, varargin{:});
    end
    function delete(self)
        if self.swigPtr
          vspMEX(45, self);
          self.SwigClear();
        end
    end
  end
  methods(Static)
  end
end
