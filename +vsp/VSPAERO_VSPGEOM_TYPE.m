function v = VSPAERO_VSPGEOM_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 125);
  end
  v = vInitialized;
end
