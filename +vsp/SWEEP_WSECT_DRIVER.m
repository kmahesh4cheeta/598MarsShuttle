function v = SWEEP_WSECT_DRIVER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 483);
  end
  v = vInitialized;
end
