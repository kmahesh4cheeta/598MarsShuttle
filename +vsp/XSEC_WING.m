function v = XSEC_WING()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 524);
  end
  v = vInitialized;
end
