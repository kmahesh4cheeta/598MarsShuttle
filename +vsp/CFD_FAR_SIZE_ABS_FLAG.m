function v = CFD_FAR_SIZE_ABS_FLAG()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 42);
  end
  v = vInitialized;
end
