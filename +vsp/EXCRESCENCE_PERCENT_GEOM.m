function v = EXCRESCENCE_PERCENT_GEOM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 170);
  end
  v = vInitialized;
end
