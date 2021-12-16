function v = MASS_UNIT_KG()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 298);
  end
  v = vInitialized;
end
