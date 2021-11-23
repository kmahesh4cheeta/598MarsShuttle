function v = CFD_FAR_MAX_GAP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 40);
  end
  v = vInitialized;
end
