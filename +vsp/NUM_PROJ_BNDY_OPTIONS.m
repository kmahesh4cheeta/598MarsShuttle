function v = NUM_PROJ_BNDY_OPTIONS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 335);
  end
  v = vInitialized;
end
