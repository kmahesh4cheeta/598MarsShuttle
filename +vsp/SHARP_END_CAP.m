function v = SHARP_END_CAP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 28);
  end
  v = vInitialized;
end
