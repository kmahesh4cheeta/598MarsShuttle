function v = PD_UNITS_IMPERIAL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 268);
  end
  v = vInitialized;
end
