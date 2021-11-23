function v = SPAR_NORMAL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 243);
  end
  v = vInitialized;
end
