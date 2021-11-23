function v = PD_UNITS_METRIC()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 269);
  end
  v = vInitialized;
end
