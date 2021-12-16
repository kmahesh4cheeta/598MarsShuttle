function v = VORTEX_LATTICE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 436);
  end
  v = vInitialized;
end
