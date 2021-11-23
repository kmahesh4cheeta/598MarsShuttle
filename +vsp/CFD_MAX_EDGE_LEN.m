function v = CFD_MAX_EDGE_LEN()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 31);
  end
  v = vInitialized;
end
