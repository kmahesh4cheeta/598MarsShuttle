function v = CFD_GMSH_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 114);
  end
  v = vInitialized;
end
