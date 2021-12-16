function v = CF_TURB_ROUGHNESS_SCHLICHTING_AVG_FLOW_CORRECTION()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 95);
  end
  v = vInitialized;
end
