function v = MASS_PROP_TXT_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 105);
  end
  v = vInitialized;
end
