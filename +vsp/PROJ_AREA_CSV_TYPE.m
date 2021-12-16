function v = PROJ_AREA_CSV_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 117);
  end
  v = vInitialized;
end
