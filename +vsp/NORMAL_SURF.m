function v = NORMAL_SURF()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 460);
  end
  v = vInitialized;
end
