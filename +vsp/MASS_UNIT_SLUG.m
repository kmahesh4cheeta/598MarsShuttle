function v = MASS_UNIT_SLUG()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 301);
  end
  v = vInitialized;
end
