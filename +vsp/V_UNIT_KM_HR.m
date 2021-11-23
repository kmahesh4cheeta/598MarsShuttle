function v = V_UNIT_KM_HR()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 417);
  end
  v = vInitialized;
end
