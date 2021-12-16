function v = CFD_CURV_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 122);
  end
  v = vInitialized;
end
