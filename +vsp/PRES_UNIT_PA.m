function v = PRES_UNIT_PA()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 324);
  end
  v = vInitialized;
end
