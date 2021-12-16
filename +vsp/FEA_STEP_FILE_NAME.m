function v = FEA_STEP_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 214);
  end
  v = vInitialized;
end
