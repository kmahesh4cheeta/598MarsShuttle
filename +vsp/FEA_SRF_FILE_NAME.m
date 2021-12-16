function v = FEA_SRF_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 210);
  end
  v = vInitialized;
end
