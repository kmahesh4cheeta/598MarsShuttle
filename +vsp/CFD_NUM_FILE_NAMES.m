function v = CFD_NUM_FILE_NAMES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 67);
  end
  v = vInitialized;
end
