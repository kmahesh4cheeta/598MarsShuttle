function v = SET_SHOWN()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 379);
  end
  v = vInitialized;
end
