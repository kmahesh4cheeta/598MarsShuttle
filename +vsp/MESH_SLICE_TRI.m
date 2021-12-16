function v = MESH_SLICE_TRI()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 368);
  end
  v = vInitialized;
end
