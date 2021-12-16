function v = SWEEPLOC_WSECT_DRIVER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 484);
  end
  v = vInitialized;
end
