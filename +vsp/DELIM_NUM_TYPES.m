function v = DELIM_NUM_TYPES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 130);
  end
  v = vInitialized;
end
