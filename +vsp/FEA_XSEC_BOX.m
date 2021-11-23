function v = FEA_XSEC_BOX()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 203);
  end
  v = vInitialized;
end
