function v = MAX_CAMB()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 22);
  end
  v = vInitialized;
end
