function v = CFD_TRI_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 56);
  end
  v = vInitialized;
end
