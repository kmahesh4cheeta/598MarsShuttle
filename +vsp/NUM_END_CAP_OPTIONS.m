function v = NUM_END_CAP_OPTIONS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 29);
  end
  v = vInitialized;
end
