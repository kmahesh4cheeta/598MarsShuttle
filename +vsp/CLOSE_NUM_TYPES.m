function v = CLOSE_NUM_TYPES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 493);
  end
  v = vInitialized;
end
