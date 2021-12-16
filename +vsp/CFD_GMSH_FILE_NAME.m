function v = CFD_GMSH_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 60);
  end
  v = vInitialized;
end
