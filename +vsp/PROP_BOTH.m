function v = PROP_BOTH()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 346);
  end
  v = vInitialized;
end
