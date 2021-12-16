function v = PARM_NOTEQ_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 308);
  end
  v = vInitialized;
end
