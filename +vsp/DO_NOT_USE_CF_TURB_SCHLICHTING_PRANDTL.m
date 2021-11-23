function v = DO_NOT_USE_CF_TURB_SCHLICHTING_PRANDTL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 88);
  end
  v = vInitialized;
end
