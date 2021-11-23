function v = EXPORT_GMSH()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 183);
  end
  v = vInitialized;
end
