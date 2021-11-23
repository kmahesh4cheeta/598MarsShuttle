function v = PARM_DOUBLE_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 303);
  end
  v = vInitialized;
end
