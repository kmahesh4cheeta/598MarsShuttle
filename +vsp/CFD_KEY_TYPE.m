function v = CFD_KEY_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 113);
  end
  v = vInitialized;
end
