function v = CFD_TKEY_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 62);
  end
  v = vInitialized;
end
