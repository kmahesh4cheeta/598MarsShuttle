function v = MASS_UNIT_TONNE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 299);
  end
  v = vInitialized;
end
