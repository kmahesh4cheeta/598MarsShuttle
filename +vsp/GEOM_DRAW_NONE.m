function v = GEOM_DRAW_NONE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 144);
  end
  v = vInitialized;
end
