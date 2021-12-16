function v = NUM_PROJ_DIR_OPTIONS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 341);
  end
  v = vInitialized;
end
