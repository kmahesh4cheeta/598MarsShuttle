function v = BIN_UNIT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 239);
  end
  v = vInitialized;
end
