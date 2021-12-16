function v = CFD_VSPGEOM_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 66);
  end
  v = vInitialized;
end
