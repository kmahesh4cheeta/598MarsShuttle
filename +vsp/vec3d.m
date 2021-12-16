classdef  vec3d < SwigRef
  methods
    function this = swig_this(self)
      this = vspMEX(3, self);
    end
    function varargout = v(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = vspMEX(528, self);
      else
        nargoutchk(0, 0)
        vspMEX(529, self, varargin{1});
      end
    end
    function delete(self)
        if self.swigPtr
          vspMEX(530, self);
          self.SwigClear();
        end
    end
    function self = vec3d(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = vspMEX(531, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.SwigClear();
      end
    end
    function varargout = brace(self,varargin)
      [varargout{1:nargout}] = vspMEX(532, self, varargin{:});
    end
    function varargout = set_xyz(self,varargin)
      [varargout{1:nargout}] = vspMEX(533, self, varargin{:});
    end
    function varargout = set_vec(self,varargin)
      [varargout{1:nargout}] = vspMEX(534, self, varargin{:});
    end
    function varargout = set_arr(self,varargin)
      [varargout{1:nargout}] = vspMEX(535, self, varargin{:});
    end
    function varargout = set_x(self,varargin)
      [varargout{1:nargout}] = vspMEX(536, self, varargin{:});
    end
    function varargout = set_y(self,varargin)
      [varargout{1:nargout}] = vspMEX(537, self, varargin{:});
    end
    function varargout = set_z(self,varargin)
      [varargout{1:nargout}] = vspMEX(538, self, varargin{:});
    end
    function varargout = set_refx(self,varargin)
      [varargout{1:nargout}] = vspMEX(539, self, varargin{:});
    end
    function varargout = set_refy(self,varargin)
      [varargout{1:nargout}] = vspMEX(540, self, varargin{:});
    end
    function varargout = set_refz(self,varargin)
      [varargout{1:nargout}] = vspMEX(541, self, varargin{:});
    end
    function varargout = get_pnt(self,varargin)
      [varargout{1:nargout}] = vspMEX(542, self, varargin{:});
    end
    function varargout = x(self,varargin)
      [varargout{1:nargout}] = vspMEX(543, self, varargin{:});
    end
    function varargout = y(self,varargin)
      [varargout{1:nargout}] = vspMEX(544, self, varargin{:});
    end
    function varargout = z(self,varargin)
      [varargout{1:nargout}] = vspMEX(545, self, varargin{:});
    end
    function varargout = data(self,varargin)
      [varargout{1:nargout}] = vspMEX(546, self, varargin{:});
    end
    function varargout = rotate_x(self,varargin)
      [varargout{1:nargout}] = vspMEX(547, self, varargin{:});
    end
    function varargout = rotate_y(self,varargin)
      [varargout{1:nargout}] = vspMEX(548, self, varargin{:});
    end
    function varargout = rotate_z(self,varargin)
      [varargout{1:nargout}] = vspMEX(549, self, varargin{:});
    end
    function varargout = scale_x(self,varargin)
      [varargout{1:nargout}] = vspMEX(550, self, varargin{:});
    end
    function varargout = scale_y(self,varargin)
      [varargout{1:nargout}] = vspMEX(551, self, varargin{:});
    end
    function varargout = scale_z(self,varargin)
      [varargout{1:nargout}] = vspMEX(552, self, varargin{:});
    end
    function varargout = offset_x(self,varargin)
      [varargout{1:nargout}] = vspMEX(553, self, varargin{:});
    end
    function varargout = offset_y(self,varargin)
      [varargout{1:nargout}] = vspMEX(554, self, varargin{:});
    end
    function varargout = offset_z(self,varargin)
      [varargout{1:nargout}] = vspMEX(555, self, varargin{:});
    end
    function varargout = rotate_z_zero_x(self,varargin)
      [varargout{1:nargout}] = vspMEX(556, self, varargin{:});
    end
    function varargout = rotate_z_zero_y(self,varargin)
      [varargout{1:nargout}] = vspMEX(557, self, varargin{:});
    end
    function varargout = reflect_xy(self,varargin)
      [varargout{1:nargout}] = vspMEX(558, self, varargin{:});
    end
    function varargout = reflect_xz(self,varargin)
      [varargout{1:nargout}] = vspMEX(559, self, varargin{:});
    end
    function varargout = reflect_yz(self,varargin)
      [varargout{1:nargout}] = vspMEX(560, self, varargin{:});
    end
    function varargout = swap_xy(self,varargin)
      [varargout{1:nargout}] = vspMEX(561, self, varargin{:});
    end
    function varargout = swap_xz(self,varargin)
      [varargout{1:nargout}] = vspMEX(562, self, varargin{:});
    end
    function varargout = swap_yz(self,varargin)
      [varargout{1:nargout}] = vspMEX(563, self, varargin{:});
    end
    function varargout = mag(self,varargin)
      [varargout{1:nargout}] = vspMEX(564, self, varargin{:});
    end
    function varargout = normalize(self,varargin)
      [varargout{1:nargout}] = vspMEX(565, self, varargin{:});
    end
    function varargout = major_comp(self,varargin)
      [varargout{1:nargout}] = vspMEX(566, self, varargin{:});
    end
    function varargout = minor_comp(self,varargin)
      [varargout{1:nargout}] = vspMEX(567, self, varargin{:});
    end
  end
  methods(Static)
  end
end
