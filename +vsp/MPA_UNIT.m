function v = MPA_UNIT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 237);
  end
  v = vInitialized;
end
