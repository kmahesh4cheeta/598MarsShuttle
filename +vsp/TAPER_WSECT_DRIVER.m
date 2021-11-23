function v = TAPER_WSECT_DRIVER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 477);
  end
  v = vInitialized;
end
