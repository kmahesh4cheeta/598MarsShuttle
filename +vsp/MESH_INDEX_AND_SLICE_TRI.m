function v = MESH_INDEX_AND_SLICE_TRI()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 370);
  end
  v = vInitialized;
end
