function v = FEA_NKEY_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 206);
  end
  v = vInitialized;
end
