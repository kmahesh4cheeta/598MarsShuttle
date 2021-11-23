function v = TRIM_NUM_TYPES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 521);
  end
  v = vInitialized;
end
