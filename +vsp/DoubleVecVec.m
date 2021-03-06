classdef  DoubleVecVec < SwigRef
  methods
    function this = swig_this(self)
      this = vspMEX(3, self);
    end
    function varargout = pop(self,varargin)
      [varargout{1:nargout}] = vspMEX(96, self, varargin{:});
    end
    function varargout = brace(self,varargin)
      [varargout{1:nargout}] = vspMEX(97, self, varargin{:});
    end
    function varargout = setbrace(self,varargin)
      [varargout{1:nargout}] = vspMEX(98, self, varargin{:});
    end
    function varargout = append(self,varargin)
      [varargout{1:nargout}] = vspMEX(99, self, varargin{:});
    end
    function varargout = empty(self,varargin)
      [varargout{1:nargout}] = vspMEX(100, self, varargin{:});
    end
    function varargout = size(self,varargin)
      [varargout{1:nargout}] = vspMEX(101, self, varargin{:});
    end
    function varargout = swap(self,varargin)
      [varargout{1:nargout}] = vspMEX(102, self, varargin{:});
    end
    function varargout = begin(self,varargin)
      [varargout{1:nargout}] = vspMEX(103, self, varargin{:});
    end
    function varargout = end(self,varargin)
      [varargout{1:nargout}] = vspMEX(104, self, varargin{:});
    end
    function varargout = rbegin(self,varargin)
      [varargout{1:nargout}] = vspMEX(105, self, varargin{:});
    end
    function varargout = rend(self,varargin)
      [varargout{1:nargout}] = vspMEX(106, self, varargin{:});
    end
    function varargout = clear(self,varargin)
      [varargout{1:nargout}] = vspMEX(107, self, varargin{:});
    end
    function varargout = get_allocator(self,varargin)
      [varargout{1:nargout}] = vspMEX(108, self, varargin{:});
    end
    function varargout = pop_back(self,varargin)
      [varargout{1:nargout}] = vspMEX(109, self, varargin{:});
    end
    function varargout = erase(self,varargin)
      [varargout{1:nargout}] = vspMEX(110, self, varargin{:});
    end
    function self = DoubleVecVec(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = vspMEX(111, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.SwigClear();
      end
    end
    function varargout = push_back(self,varargin)
      [varargout{1:nargout}] = vspMEX(112, self, varargin{:});
    end
    function varargout = front(self,varargin)
      [varargout{1:nargout}] = vspMEX(113, self, varargin{:});
    end
    function varargout = back(self,varargin)
      [varargout{1:nargout}] = vspMEX(114, self, varargin{:});
    end
    function varargout = assign(self,varargin)
      [varargout{1:nargout}] = vspMEX(115, self, varargin{:});
    end
    function varargout = resize(self,varargin)
      [varargout{1:nargout}] = vspMEX(116, self, varargin{:});
    end
    function varargout = insert(self,varargin)
      [varargout{1:nargout}] = vspMEX(117, self, varargin{:});
    end
    function varargout = reserve(self,varargin)
      [varargout{1:nargout}] = vspMEX(118, self, varargin{:});
    end
    function varargout = capacity(self,varargin)
      [varargout{1:nargout}] = vspMEX(119, self, varargin{:});
    end
    function delete(self)
        if self.swigPtr
          vspMEX(120, self);
          self.SwigClear();
        end
    end
  end
  methods(Static)
  end
end
