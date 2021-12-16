function v = PARM_BOOL_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 305);
  end
  v = vInitialized;
end
