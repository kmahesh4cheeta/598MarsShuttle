function v = AR_WSECT_DRIVER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 474);
  end
  v = vInitialized;
end
