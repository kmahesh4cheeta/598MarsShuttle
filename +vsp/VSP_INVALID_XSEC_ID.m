function v = VSP_INVALID_XSEC_ID()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 158);
  end
  v = vInitialized;
end
