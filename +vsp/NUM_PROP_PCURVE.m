function v = NUM_PROP_PCURVE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 357);
  end
  v = vInitialized;
end
