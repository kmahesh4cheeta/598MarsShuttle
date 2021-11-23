function v = AREA_WSECT_DRIVER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 476);
  end
  v = vInitialized;
end
