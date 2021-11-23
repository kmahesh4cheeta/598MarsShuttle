function v = CFD_SRF_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 115);
  end
  v = vInitialized;
end
