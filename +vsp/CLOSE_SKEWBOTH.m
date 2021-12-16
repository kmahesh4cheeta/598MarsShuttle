function v = CLOSE_SKEWBOTH()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 491);
  end
  v = vInitialized;
end
