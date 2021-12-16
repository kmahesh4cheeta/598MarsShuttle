function v = PROP_CLI()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 354);
  end
  v = vInitialized;
end
