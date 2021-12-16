function v = XSEC_BOTH_SIDES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 515);
  end
  v = vInitialized;
end
