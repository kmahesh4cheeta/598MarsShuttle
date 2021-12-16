function v = NUM_REF_TYPES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 360);
  end
  v = vInitialized;
end
