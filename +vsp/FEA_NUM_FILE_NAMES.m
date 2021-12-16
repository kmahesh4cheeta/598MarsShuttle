function v = FEA_NUM_FILE_NAMES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 215);
  end
  v = vInitialized;
end
