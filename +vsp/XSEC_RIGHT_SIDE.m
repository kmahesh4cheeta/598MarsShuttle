function v = XSEC_RIGHT_SIDE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 517);
  end
  v = vInitialized;
end
