function v = FEA_CALCULIX_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 207);
  end
  v = vInitialized;
end
