function v = CFD_HALF_MESH_FLAG()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 37);
  end
  v = vInitialized;
end
