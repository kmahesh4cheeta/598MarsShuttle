function v = GEOM_XSECS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 369);
  end
  v = vInitialized;
end
