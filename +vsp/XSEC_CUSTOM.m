function v = XSEC_CUSTOM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 525);
  end
  v = vInitialized;
end
