function v = XSEC_NUM_TYPES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 527);
  end
  v = vInitialized;
end
