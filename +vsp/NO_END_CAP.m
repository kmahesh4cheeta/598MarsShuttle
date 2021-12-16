function v = NO_END_CAP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 24);
  end
  v = vInitialized;
end
