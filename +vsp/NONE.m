function v = NONE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 389);
  end
  v = vInitialized;
end
