function v = PCHIP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 317);
  end
  v = vInitialized;
end
