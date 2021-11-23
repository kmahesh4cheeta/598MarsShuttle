function v = CF_TURB_SCHLICHTING_COMPRESSIBLE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 86);
  end
  v = vInitialized;
end
