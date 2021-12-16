function v = FEA_RIB_ARRAY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 224);
  end
  v = vInitialized;
end
