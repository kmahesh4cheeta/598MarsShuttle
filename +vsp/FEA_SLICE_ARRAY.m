function v = FEA_SLICE_ARRAY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 225);
  end
  v = vInitialized;
end
