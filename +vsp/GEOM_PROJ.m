function v = GEOM_PROJ()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 339);
  end
  v = vInitialized;
end
