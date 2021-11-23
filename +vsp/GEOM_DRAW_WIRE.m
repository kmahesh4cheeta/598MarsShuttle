function v = GEOM_DRAW_WIRE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 140);
  end
  v = vInitialized;
end
