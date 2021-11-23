function v = CFD_FAR_LOC_Z()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 52);
  end
  v = vInitialized;
end
