function v = FEA_GMSH_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 209);
  end
  v = vInitialized;
end
