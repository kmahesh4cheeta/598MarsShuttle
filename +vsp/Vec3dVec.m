classdef  Vec3dVec < SwigRef
  methods
    function this = swig_this(self)
      this = vspMEX(3, self);
    end
    function varargout = pop(self,varargin)
      [varargout{1:nargout}] = vspMEX(121, self, varargin{:});
    end
    function varargout = brace(self,varargin)
      [varargout{1:nargout}] = vspMEX(122, self, varargin{:});
    end
    function varargout = setbrace(self,varargin)
      [varargout{1:nargout}] = vspMEX(123, self, varargin{:});
    end
    function varargout = append(self,varargin)
      [varargout{1:nargout}] = vspMEX(124, self, varargin{:});
    end
    function varargout = empty(self,varargin)
      [varargout{1:nargout}] = vspMEX(125, self, varargin{:});
    end
    function varargout = size(self,varargin)
      [varargout{1:nargout}] = vspMEX(126, self, varargin{:});
    end
    function varargout = swap(self,varargin)
      [varargout{1:nargout}] = vspMEX(127, self, varargin{:});
    end
    function varargout = begin(self,varargin)
      [varargout{1:nargout}] = vspMEX(128, self, varargin{:});
    end
    function varargout = end(self,varargin)
      [varargout{1:nargout}] = vspMEX(129, self, varargin{:});
    end
    function varargout = rbegin(self,varargin)
      [varargout{1:nargout}] = vspMEX(130, self, varargin{:});
    end
    function varargout = rend(self,varargin)
      [varargout{1:nargout}] = vspMEX(131, self, varargin{:});
    end
    function varargout = clear(self,varargin)
      [varargout{1:nargout}] = vspMEX(132, self, varargin{:});
    end
    function varargout = get_allocator(self,varargin)
      [varargout{1:nargout}] = vspMEX(133, self, varargin{:});
    end
    function varargout = pop_back(self,varargin)
      [varargout{1:nargout}] = vspMEX(134, self, varargin{:});
    end
    function varargout = erase(self,varargin)
      [varargout{1:nargout}] = vspMEX(135, self, varargin{:});
    end
    function self = Vec3dVec(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = vspMEX(136, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.SwigClear();
      end
    end
    function varargout = push_back(self,varargin)
      [varargout{1:nargout}] = vspMEX(137, self, varargin{:});
    end
    function varargout = front(self,varargin)
      [varargout{1:nargout}] = vspMEX(138, self, varargin{:});
    end
    function varargout = back(self,varargin)
      [varargout{1:nargout}] = vspMEX(139, self, varargin{:});
    end
    function varargout = assign(self,varargin)
      [varargout{1:nargout}] = vspMEX(140, self, varargin{:});
    end
    function varargout = resize(self,varargin)
      [varargout{1:nargout}] = vspMEX(141, self, varargin{:});
    end
    function varargout = insert(self,varargin)
      [varargout{1:nargout}] = vspMEX(142, self, varargin{:});
    end
    function varargout = reserve(self,varargin)
      [varargout{1:nargout}] = vspMEX(143, self, varargin{:});
    end
    function varargout = capacity(self,varargin)
      [varargout{1:nargout}] = vspMEX(144, self, varargin{:});
    end
    function delete(self)
        if self.swigPtr
          vspMEX(145, self);
          self.SwigClear();
        end
    end
  end
  methods(Static)
  end
end
