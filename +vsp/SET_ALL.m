function v = SET_ALL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 378);
  end
  v = vInitialized;
end
