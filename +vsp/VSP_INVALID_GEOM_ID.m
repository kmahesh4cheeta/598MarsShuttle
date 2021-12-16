function v = VSP_INVALID_GEOM_ID()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 151);
  end
  v = vInitialized;
end
