function v = PROP_BLADES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 345);
  end
  v = vInitialized;
end
