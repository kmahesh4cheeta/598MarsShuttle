function v = NO_NORMAL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 240);
  end
  v = vInitialized;
end
