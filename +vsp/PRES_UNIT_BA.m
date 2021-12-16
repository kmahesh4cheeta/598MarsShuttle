function v = PRES_UNIT_BA()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 323);
  end
  v = vInitialized;
end
