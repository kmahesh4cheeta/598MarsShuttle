function v = FEA_NUM_TYPES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 227);
  end
  v = vInitialized;
end
