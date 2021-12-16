function v = PRES_UNIT_PSI()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 322);
  end
  v = vInitialized;
end
