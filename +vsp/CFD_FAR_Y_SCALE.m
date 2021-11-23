function v = CFD_FAR_Y_SCALE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 47);
  end
  v = vInitialized;
end
