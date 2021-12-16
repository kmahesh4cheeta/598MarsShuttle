function v = FEA_BEAM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 217);
  end
  v = vInitialized;
end
