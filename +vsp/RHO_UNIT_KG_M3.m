function v = RHO_UNIT_KG_M3()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 373);
  end
  v = vInitialized;
end
