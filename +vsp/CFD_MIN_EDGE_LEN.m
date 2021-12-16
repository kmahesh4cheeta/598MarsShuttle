function v = CFD_MIN_EDGE_LEN()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 30);
  end
  v = vInitialized;
end
