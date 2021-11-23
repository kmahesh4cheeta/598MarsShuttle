function v = GEOM_TARGET()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 343);
  end
  v = vInitialized;
end
