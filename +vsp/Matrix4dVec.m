classdef  Matrix4dVec < SwigRef
  methods
    function this = swig_this(self)
      this = vspMEX(3, self);
    end
    function varargout = pop(self,varargin)
      [varargout{1:nargout}] = vspMEX(146, self, varargin{:});
    end
    function varargout = brace(self,varargin)
      [varargout{1:nargout}] = vspMEX(147, self, varargin{:});
    end
    function varargout = setbrace(self,varargin)
      [varargout{1:nargout}] = vspMEX(148, self, varargin{:});
    end
    function varargout = append(self,varargin)
      [varargout{1:nargout}] = vspMEX(149, self, varargin{:});
    end
    function varargout = empty(self,varargin)
      [varargout{1:nargout}] = vspMEX(150, self, varargin{:});
    end
    function varargout = size(self,varargin)
      [varargout{1:nargout}] = vspMEX(151, self, varargin{:});
    end
    function varargout = swap(self,varargin)
      [varargout{1:nargout}] = vspMEX(152, self, varargin{:});
    end
    function varargout = begin(self,varargin)
      [varargout{1:nargout}] = vspMEX(153, self, varargin{:});
    end
    function varargout = end(self,varargin)
      [varargout{1:nargout}] = vspMEX(154, self, varargin{:});
    end
    function varargout = rbegin(self,varargin)
      [varargout{1:nargout}] = vspMEX(155, self, varargin{:});
    end
    function varargout = rend(self,varargin)
      [varargout{1:nargout}] = vspMEX(156, self, varargin{:});
    end
    function varargout = clear(self,varargin)
      [varargout{1:nargout}] = vspMEX(157, self, varargin{:});
    end
    function varargout = get_allocator(self,varargin)
      [varargout{1:nargout}] = vspMEX(158, self, varargin{:});
    end
    function varargout = pop_back(self,varargin)
      [varargout{1:nargout}] = vspMEX(159, self, varargin{:});
    end
    function varargout = erase(self,varargin)
      [varargout{1:nargout}] = vspMEX(160, self, varargin{:});
    end
    function self = Matrix4dVec(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = vspMEX(161, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.SwigClear();
      end
    end
    function varargout = push_back(self,varargin)
      [varargout{1:nargout}] = vspMEX(162, self, varargin{:});
    end
    function varargout = front(self,varargin)
      [varargout{1:nargout}] = vspMEX(163, self, varargin{:});
    end
    function varargout = back(self,varargin)
      [varargout{1:nargout}] = vspMEX(164, self, varargin{:});
    end
    function varargout = assign(self,varargin)
      [varargout{1:nargout}] = vspMEX(165, self, varargin{:});
    end
    function varargout = resize(self,varargin)
      [varargout{1:nargout}] = vspMEX(166, self, varargin{:});
    end
    function varargout = insert(self,varargin)
      [varargout{1:nargout}] = vspMEX(167, self, varargin{:});
    end
    function varargout = reserve(self,varargin)
      [varargout{1:nargout}] = vspMEX(168, self, varargin{:});
    end
    function varargout = capacity(self,varargin)
      [varargout{1:nargout}] = vspMEX(169, self, varargin{:});
    end
    function delete(self)
        if self.swigPtr
          vspMEX(170, self);
          self.SwigClear();
        end
    end
  end
  methods(Static)
  end
end
