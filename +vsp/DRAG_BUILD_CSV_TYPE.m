function v = DRAG_BUILD_CSV_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 120);
  end
  v = vInitialized;
end
