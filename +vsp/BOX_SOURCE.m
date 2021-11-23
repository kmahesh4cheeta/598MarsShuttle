function v = BOX_SOURCE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 70);
  end
  v = vInitialized;
end
