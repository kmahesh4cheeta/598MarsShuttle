function v = FLAT_END_CAP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 25);
  end
  v = vInitialized;
end
