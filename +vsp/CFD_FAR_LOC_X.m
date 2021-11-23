function v = CFD_FAR_LOC_X()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 50);
  end
  v = vInitialized;
end
