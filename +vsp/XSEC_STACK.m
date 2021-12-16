function v = XSEC_STACK()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 523);
  end
  v = vInitialized;
end
