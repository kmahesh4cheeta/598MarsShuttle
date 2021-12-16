function v = NUM_PROJ_TGT_OPTIONS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 344);
  end
  v = vInitialized;
end
