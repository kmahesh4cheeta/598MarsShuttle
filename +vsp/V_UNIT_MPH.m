function v = V_UNIT_MPH()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 416);
  end
  v = vInitialized;
end
