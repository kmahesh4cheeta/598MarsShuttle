function v = FEA_DOME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 223);
  end
  v = vInitialized;
end
