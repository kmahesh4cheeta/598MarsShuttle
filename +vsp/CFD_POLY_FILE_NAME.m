function v = CFD_POLY_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 55);
  end
  v = vInitialized;
end
