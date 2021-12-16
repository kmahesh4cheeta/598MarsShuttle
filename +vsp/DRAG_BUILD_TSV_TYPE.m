function v = DRAG_BUILD_TSV_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 103);
  end
  v = vInitialized;
end
