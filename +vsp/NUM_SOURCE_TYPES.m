function v = NUM_SOURCE_TYPES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 73);
  end
  v = vInitialized;
end
