function v = VIEW_NONE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 435);
  end
  v = vInitialized;
end
