function v = EXPORT_X3D()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 184);
  end
  v = vInitialized;
end
