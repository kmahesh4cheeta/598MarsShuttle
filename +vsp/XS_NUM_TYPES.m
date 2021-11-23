function v = XS_NUM_TYPES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 514);
  end
  v = vInitialized;
end
