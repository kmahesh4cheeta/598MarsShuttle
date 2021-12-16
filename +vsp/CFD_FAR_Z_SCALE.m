function v = CFD_FAR_Z_SCALE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 48);
  end
  v = vInitialized;
end
