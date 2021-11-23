function v = FEA_SHELL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 216);
  end
  v = vInitialized;
end
