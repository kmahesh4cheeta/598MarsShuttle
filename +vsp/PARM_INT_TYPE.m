function v = PARM_INT_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 304);
  end
  v = vInitialized;
end
