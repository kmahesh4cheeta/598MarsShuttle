function v = PRES_UNIT_PSF()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 321);
  end
  v = vInitialized;
end
