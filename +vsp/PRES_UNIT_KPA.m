function v = PRES_UNIT_KPA()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 325);
  end
  v = vInitialized;
end
