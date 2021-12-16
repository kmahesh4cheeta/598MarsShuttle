function v = FEA_IGES_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 213);
  end
  v = vInitialized;
end
