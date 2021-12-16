function v = VIEW_BOTTOM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 432);
  end
  v = vInitialized;
end
