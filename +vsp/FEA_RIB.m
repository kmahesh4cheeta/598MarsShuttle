function v = FEA_RIB()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 220);
  end
  v = vInitialized;
end
