function v = DEGEN_GEOM_CSV_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 106);
  end
  v = vInitialized;
end
