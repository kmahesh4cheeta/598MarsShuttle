function v = COMP_GEOM_CSV_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 102);
  end
  v = vInitialized;
end
