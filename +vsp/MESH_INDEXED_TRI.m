function v = MESH_INDEXED_TRI()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 367);
  end
  v = vInitialized;
end
