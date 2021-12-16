function v = IMPORT_CART3D_TRI()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 277);
  end
  v = vInitialized;
end
