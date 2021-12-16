function v = SECSWEEPLOC_WSECT_DRIVER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 485);
  end
  v = vInitialized;
end
