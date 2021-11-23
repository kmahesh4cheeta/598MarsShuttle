function v = VEC3D_DATA()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 365);
  end
  v = vInitialized;
end
