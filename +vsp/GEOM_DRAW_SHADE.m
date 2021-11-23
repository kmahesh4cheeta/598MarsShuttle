function v = GEOM_DRAW_SHADE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 142);
  end
  v = vInitialized;
end
