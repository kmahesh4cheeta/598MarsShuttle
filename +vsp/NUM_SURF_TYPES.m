function v = NUM_SURF_TYPES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 464);
  end
  v = vInitialized;
end
