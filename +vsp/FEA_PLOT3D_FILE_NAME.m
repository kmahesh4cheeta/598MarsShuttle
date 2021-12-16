function v = FEA_PLOT3D_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 212);
  end
  v = vInitialized;
end
