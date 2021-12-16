function v = GEOM_BOUNDARY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 334);
  end
  v = vInitialized;
end
