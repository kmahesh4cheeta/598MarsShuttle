function v = FEA_CURV_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 211);
  end
  v = vInitialized;
end
