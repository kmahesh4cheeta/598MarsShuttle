function v = SET_NOT_SHOWN()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 380);
  end
  v = vInitialized;
end
