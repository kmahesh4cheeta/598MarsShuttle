function v = CFD_MAX_GAP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 32);
  end
  v = vInitialized;
end
