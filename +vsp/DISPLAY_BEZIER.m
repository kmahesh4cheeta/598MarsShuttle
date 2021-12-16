function v = DISPLAY_BEZIER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 136);
  end
  v = vInitialized;
end
