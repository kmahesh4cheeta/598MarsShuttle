function v = CFD_SRF_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 61);
  end
  v = vInitialized;
end
