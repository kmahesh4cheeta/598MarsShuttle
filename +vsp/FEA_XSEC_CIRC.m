function v = FEA_XSEC_CIRC()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 199);
  end
  v = vInitialized;
end
