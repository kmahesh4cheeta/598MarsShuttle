function v = FEA_SKIN()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 226);
  end
  v = vInitialized;
end
