function v = CFD_DAT_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 58);
  end
  v = vInitialized;
end
