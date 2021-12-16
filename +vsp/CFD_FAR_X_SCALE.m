function v = CFD_FAR_X_SCALE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 46);
  end
  v = vInitialized;
end
