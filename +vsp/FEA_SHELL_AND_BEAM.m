function v = FEA_SHELL_AND_BEAM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 218);
  end
  v = vInitialized;
end
