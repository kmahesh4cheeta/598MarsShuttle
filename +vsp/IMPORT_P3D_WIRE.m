function v = IMPORT_P3D_WIRE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 283);
  end
  v = vInitialized;
end
