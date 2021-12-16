function v = EXPORT_CART3D()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 179);
  end
  v = vInitialized;
end
