function v = PROP_CHORD()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 348);
  end
  v = vInitialized;
end
