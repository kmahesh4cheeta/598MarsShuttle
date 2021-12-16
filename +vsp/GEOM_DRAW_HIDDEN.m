function v = GEOM_DRAW_HIDDEN()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 141);
  end
  v = vInitialized;
end
