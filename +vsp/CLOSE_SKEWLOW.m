function v = CLOSE_SKEWLOW()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 489);
  end
  v = vInitialized;
end
