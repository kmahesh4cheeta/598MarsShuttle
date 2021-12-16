function v = CFD_CURV_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 64);
  end
  v = vInitialized;
end
