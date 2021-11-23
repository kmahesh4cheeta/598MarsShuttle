function v = GEOM_DRAW_TEXTURE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 143);
  end
  v = vInitialized;
end
