function v = NUM_WSECT_DRIVER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 482);
  end
  v = vInitialized;
end
