function v = PROP_SKEW()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 351);
  end
  v = vInitialized;
end
