function v = PRES_UNIT_MMHG()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 328);
  end
  v = vInitialized;
end
