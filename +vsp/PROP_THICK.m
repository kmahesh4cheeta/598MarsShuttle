function v = PROP_THICK()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 353);
  end
  v = vInitialized;
end
