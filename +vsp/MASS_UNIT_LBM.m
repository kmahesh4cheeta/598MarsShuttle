function v = MASS_UNIT_LBM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 300);
  end
  v = vInitialized;
end
