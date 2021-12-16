function v = ROOTC_WSECT_DRIVER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 479);
  end
  v = vInitialized;
end
