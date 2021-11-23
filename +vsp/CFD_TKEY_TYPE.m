function v = CFD_TKEY_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 116);
  end
  v = vInitialized;
end
