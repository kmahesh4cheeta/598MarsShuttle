function v = CFD_NUM_TYPES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 459);
  end
  v = vInitialized;
end
