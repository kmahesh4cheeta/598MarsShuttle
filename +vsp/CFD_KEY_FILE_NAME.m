function v = CFD_KEY_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 59);
  end
  v = vInitialized;
end
