function v = CFD_PLOT3D_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 65);
  end
  v = vInitialized;
end
