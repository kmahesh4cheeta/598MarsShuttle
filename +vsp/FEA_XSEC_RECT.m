function v = FEA_XSEC_RECT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 202);
  end
  v = vInitialized;
end
