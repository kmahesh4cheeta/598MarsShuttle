function v = PATCH_POINT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 311);
  end
  v = vInitialized;
end
