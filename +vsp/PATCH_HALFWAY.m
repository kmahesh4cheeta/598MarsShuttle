function v = PATCH_HALFWAY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 314);
  end
  v = vInitialized;
end
