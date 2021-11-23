function v = VIEW_LEFT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 429);
  end
  v = vInitialized;
end
