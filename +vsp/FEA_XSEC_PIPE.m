function v = FEA_XSEC_PIPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 200);
  end
  v = vInitialized;
end
