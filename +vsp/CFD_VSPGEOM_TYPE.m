function v = CFD_VSPGEOM_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 124);
  end
  v = vInitialized;
end
