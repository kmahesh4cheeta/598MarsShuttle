function v = CFD_FAR_LOC_Y()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 51);
  end
  v = vInitialized;
end
