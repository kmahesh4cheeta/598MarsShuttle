function v = PATCH_NONE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 310);
  end
  v = vInitialized;
end
