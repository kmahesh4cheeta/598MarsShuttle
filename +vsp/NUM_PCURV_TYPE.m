function v = NUM_PCURV_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 320);
  end
  v = vInitialized;
end
