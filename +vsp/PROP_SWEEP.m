function v = PROP_SWEEP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 352);
  end
  v = vInitialized;
end
