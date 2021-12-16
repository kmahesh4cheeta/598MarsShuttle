function v = INTERSECT_PLOT3D_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 286);
  end
  v = vInitialized;
end
