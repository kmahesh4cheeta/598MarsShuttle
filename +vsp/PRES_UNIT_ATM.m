function v = PRES_UNIT_ATM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 331);
  end
  v = vInitialized;
end
