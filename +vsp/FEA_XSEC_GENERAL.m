function v = FEA_XSEC_GENERAL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 198);
  end
  v = vInitialized;
end
