function v = PROP_TWIST()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 349);
  end
  v = vInitialized;
end
