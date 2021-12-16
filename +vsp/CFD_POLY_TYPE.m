function v = CFD_POLY_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 109);
  end
  v = vInitialized;
end
