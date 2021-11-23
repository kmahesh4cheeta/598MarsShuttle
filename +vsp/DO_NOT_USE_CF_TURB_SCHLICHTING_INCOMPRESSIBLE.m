function v = DO_NOT_USE_CF_TURB_SCHLICHTING_INCOMPRESSIBLE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 87);
  end
  v = vInitialized;
end
