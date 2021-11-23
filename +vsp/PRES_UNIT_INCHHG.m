function v = PRES_UNIT_INCHHG()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 327);
  end
  v = vInitialized;
end
