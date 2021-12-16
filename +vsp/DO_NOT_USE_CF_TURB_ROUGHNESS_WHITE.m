function v = DO_NOT_USE_CF_TURB_ROUGHNESS_WHITE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 94);
  end
  v = vInitialized;
end
