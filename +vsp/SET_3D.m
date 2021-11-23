function v = SET_3D()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 131);
  end
  v = vInitialized;
end
