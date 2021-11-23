function v = CFD_TRI_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 110);
  end
  v = vInitialized;
end
