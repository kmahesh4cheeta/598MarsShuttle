function v = TRIM_NONE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 518);
  end
  v = vInitialized;
end
