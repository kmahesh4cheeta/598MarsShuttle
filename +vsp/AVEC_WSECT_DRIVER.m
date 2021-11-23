function v = AVEC_WSECT_DRIVER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 478);
  end
  v = vInitialized;
end
