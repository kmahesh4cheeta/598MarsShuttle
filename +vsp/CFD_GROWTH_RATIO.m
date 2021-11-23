function v = CFD_GROWTH_RATIO()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 34);
  end
  v = vInitialized;
end
