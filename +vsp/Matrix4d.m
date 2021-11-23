classdef  Matrix4d < SwigRef
  methods
    function this = swig_this(self)
      this = vspMEX(3, self);
    end
    function self = Matrix4d(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = vspMEX(569, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.SwigClear();
      end
    end
    function varargout = loadIdentity(self,varargin)
      [varargout{1:nargout}] = vspMEX(570, self, varargin{:});
    end
    function varargout = setIdentity(self,varargin)
      [varargout{1:nargout}] = vspMEX(571, self, varargin{:});
    end
    function varargout = translatef(self,varargin)
      [varargout{1:nargout}] = vspMEX(572, self, varargin{:});
    end
    function varargout = translatev(self,varargin)
      [varargout{1:nargout}] = vspMEX(573, self, varargin{:});
    end
    function varargout = rotateX(self,varargin)
      [varargout{1:nargout}] = vspMEX(574, self, varargin{:});
    end
    function varargout = rotateY(self,varargin)
      [varargout{1:nargout}] = vspMEX(575, self, varargin{:});
    end
    function varargout = rotateZ(self,varargin)
      [varargout{1:nargout}] = vspMEX(576, self, varargin{:});
    end
    function varargout = rotate(self,varargin)
      [varargout{1:nargout}] = vspMEX(577, self, varargin{:});
    end
    function varargout = rotatealongX(self,varargin)
      [varargout{1:nargout}] = vspMEX(578, self, varargin{:});
    end
    function varargout = affineInverse(self,varargin)
      [varargout{1:nargout}] = vspMEX(579, self, varargin{:});
    end
    function varargout = scale(self,varargin)
      [varargout{1:nargout}] = vspMEX(580, self, varargin{:});
    end
    function varargout = flipx(self,varargin)
      [varargout{1:nargout}] = vspMEX(581, self, varargin{:});
    end
    function varargout = getMat(self,varargin)
      [varargout{1:nargout}] = vspMEX(582, self, varargin{:});
    end
    function varargout = matMult(self,varargin)
      [varargout{1:nargout}] = vspMEX(583, self, varargin{:});
    end
    function varargout = postMult(self,varargin)
      [varargout{1:nargout}] = vspMEX(584, self, varargin{:});
    end
    function varargout = initMat(self,varargin)
      [varargout{1:nargout}] = vspMEX(585, self, varargin{:});
    end
    function varargout = mult(self,varargin)
      [varargout{1:nargout}] = vspMEX(586, self, varargin{:});
    end
    function varargout = data(self,varargin)
      [varargout{1:nargout}] = vspMEX(587, self, varargin{:});
    end
    function varargout = loadXZRef(self,varargin)
      [varargout{1:nargout}] = vspMEX(588, self, varargin{:});
    end
    function varargout = loadXYRef(self,varargin)
      [varargout{1:nargout}] = vspMEX(589, self, varargin{:});
    end
    function varargout = loadYZRef(self,varargin)
      [varargout{1:nargout}] = vspMEX(590, self, varargin{:});
    end
    function varargout = xform(self,varargin)
      [varargout{1:nargout}] = vspMEX(591, self, varargin{:});
    end
    function varargout = xformvec(self,varargin)
      [varargout{1:nargout}] = vspMEX(592, self, varargin{:});
    end
    function varargout = xformnorm(self,varargin)
      [varargout{1:nargout}] = vspMEX(593, self, varargin{:});
    end
    function varargout = xformnormvec(self,varargin)
      [varargout{1:nargout}] = vspMEX(594, self, varargin{:});
    end
    function varargout = getAngles(self,varargin)
      [varargout{1:nargout}] = vspMEX(595, self, varargin{:});
    end
    function varargout = getTranslation(self,varargin)
      [varargout{1:nargout}] = vspMEX(596, self, varargin{:});
    end
    function varargout = buildXForm(self,varargin)
      [varargout{1:nargout}] = vspMEX(597, self, varargin{:});
    end
    function varargout = getBasis(self,varargin)
      [varargout{1:nargout}] = vspMEX(598, self, varargin{:});
    end
    function varargout = setBasis(self,varargin)
      [varargout{1:nargout}] = vspMEX(599, self, varargin{:});
    end
    function varargout = toQuat(self,varargin)
      [varargout{1:nargout}] = vspMEX(600, self, varargin{:});
    end
    function delete(self)
        if self.swigPtr
          vspMEX(601, self);
          self.SwigClear();
        end
    end
  end
  methods(Static)
  end
end
