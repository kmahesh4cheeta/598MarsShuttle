function v = V_UNIT_MACH()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 420);
  end
  v = vInitialized;
end
