function v = CFD_FAR_MAX_EDGE_LEN()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 39);
  end
  v = vInitialized;
end
