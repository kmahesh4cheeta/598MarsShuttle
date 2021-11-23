function v = SYM_NUM_TYPES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 405);
  end
  v = vInitialized;
end
