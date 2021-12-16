function v = CF_TURB_ROUGHNESS_SCHLICHTING_AVG()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 92);
  end
  v = vInitialized;
end
