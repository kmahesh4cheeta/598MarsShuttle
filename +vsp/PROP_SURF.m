function v = PROP_SURF()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 463);
  end
  v = vInitialized;
end
