function v = PARM_POWER_INT_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 309);
  end
  v = vInitialized;
end
