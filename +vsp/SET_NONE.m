function v = SET_NONE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 377);
  end
  v = vInitialized;
end
