function v = EDGE_END_CAP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 27);
  end
  v = vInitialized;
end
