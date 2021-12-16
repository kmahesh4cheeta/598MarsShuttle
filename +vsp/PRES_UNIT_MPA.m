function v = PRES_UNIT_MPA()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 326);
  end
  v = vInitialized;
end
