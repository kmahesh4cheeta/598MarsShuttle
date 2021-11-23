function v = EXPORT_VSPGEOM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 180);
  end
  v = vInitialized;
end
