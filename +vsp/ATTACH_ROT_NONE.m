function v = ATTACH_ROT_NONE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 15);
  end
  v = vInitialized;
end
