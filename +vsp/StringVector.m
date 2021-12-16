classdef  StringVector < SwigRef
  methods
    function this = swig_this(self)
      this = vspMEX(3, self);
    end
    function varargout = pop(self,varargin)
      [varargout{1:nargout}] = vspMEX(71, self, varargin{:});
    end
    function varargout = brace(self,varargin)
      [varargout{1:nargout}] = vspMEX(72, self, varargin{:});
    end
    function varargout = setbrace(self,varargin)
      [varargout{1:nargout}] = vspMEX(73, self, varargin{:});
    end
    function varargout = append(self,varargin)
      [varargout{1:nargout}] = vspMEX(74, self, varargin{:});
    end
    function varargout = empty(self,varargin)
      [varargout{1:nargout}] = vspMEX(75, self, varargin{:});
    end
    function varargout = size(self,varargin)
      [varargout{1:nargout}] = vspMEX(76, self, varargin{:});
    end
    function varargout = swap(self,varargin)
      [varargout{1:nargout}] = vspMEX(77, self, varargin{:});
    end
    function varargout = begin(self,varargin)
      [varargout{1:nargout}] = vspMEX(78, self, varargin{:});
    end
    function varargout = end(self,varargin)
      [varargout{1:nargout}] = vspMEX(79, self, varargin{:});
    end
    function varargout = rbegin(self,varargin)
      [varargout{1:nargout}] = vspMEX(80, self, varargin{:});
    end
    function varargout = rend(self,varargin)
      [varargout{1:nargout}] = vspMEX(81, self, varargin{:});
    end
    function varargout = clear(self,varargin)
      [varargout{1:nargout}] = vspMEX(82, self, varargin{:});
    end
    function varargout = get_allocator(self,varargin)
      [varargout{1:nargout}] = vspMEX(83, self, varargin{:});
    end
    function varargout = pop_back(self,varargin)
      [varargout{1:nargout}] = vspMEX(84, self, varargin{:});
    end
    function varargout = erase(self,varargin)
      [varargout{1:nargout}] = vspMEX(85, self, varargin{:});
    end
    function self = StringVector(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = vspMEX(86, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.SwigClear();
      end
    end
    function varargout = push_back(self,varargin)
      [varargout{1:nargout}] = vspMEX(87, self, varargin{:});
    end
    function varargout = front(self,varargin)
      [varargout{1:nargout}] = vspMEX(88, self, varargin{:});
    end
    function varargout = back(self,varargin)
      [varargout{1:nargout}] = vspMEX(89, self, varargin{:});
    end
    function varargout = assign(self,varargin)
      [varargout{1:nargout}] = vspMEX(90, self, varargin{:});
    end
    function varargout = resize(self,varargin)
      [varargout{1:nargout}] = vspMEX(91, self, varargin{:});
    end
    function varargout = insert(self,varargin)
      [varargout{1:nargout}] = vspMEX(92, self, varargin{:});
    end
    function varargout = reserve(self,varargin)
      [varargout{1:nargout}] = vspMEX(93, self, varargin{:});
    end
    function varargout = capacity(self,varargin)
      [varargout{1:nargout}] = vspMEX(94, self, varargin{:});
    end
    function delete(self)
        if self.swigPtr
          vspMEX(95, self);
          self.SwigClear();
        end
    end
  end
  methods(Static)
  end
end
