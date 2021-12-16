function v = VIEW_FRONT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 433);
  end
  v = vInitialized;
end
