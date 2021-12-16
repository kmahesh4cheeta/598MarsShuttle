function v = CFD_PLOT3D_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 123);
  end
  v = vInitialized;
end
