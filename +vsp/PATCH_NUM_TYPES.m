function v = PATCH_NUM_TYPES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 315);
  end
  v = vInitialized;
end
