function v = FEA_SPAR()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 221);
  end
  v = vInitialized;
end
