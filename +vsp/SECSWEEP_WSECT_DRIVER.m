function v = SECSWEEP_WSECT_DRIVER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 481);
  end
  v = vInitialized;
end
