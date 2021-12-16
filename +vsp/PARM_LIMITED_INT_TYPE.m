function v = PARM_LIMITED_INT_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 307);
  end
  v = vInitialized;
end
