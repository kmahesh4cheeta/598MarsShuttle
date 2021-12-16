function v = EXPORT_PLOT3D()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 186);
  end
  v = vInitialized;
end
