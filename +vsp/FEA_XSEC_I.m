function v = FEA_XSEC_I()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 201);
  end
  v = vInitialized;
end
