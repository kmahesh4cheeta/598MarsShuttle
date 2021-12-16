function v = DO_NOT_USE_CF_TURB_ROUGHNESS_SCHLICHTING_LOCAL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 93);
  end
  v = vInitialized;
end
