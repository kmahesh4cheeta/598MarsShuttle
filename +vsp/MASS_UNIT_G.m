function v = MASS_UNIT_G()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 297);
  end
  v = vInitialized;
end
