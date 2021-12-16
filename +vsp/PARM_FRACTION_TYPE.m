function v = PARM_FRACTION_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 306);
  end
  v = vInitialized;
end
