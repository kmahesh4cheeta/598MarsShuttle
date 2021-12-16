function v = CFD_LIMIT_GROWTH_FLAG()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 35);
  end
  v = vInitialized;
end
