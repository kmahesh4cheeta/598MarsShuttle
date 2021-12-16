function v = ROUND_END_CAP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 26);
  end
  v = vInitialized;
end
