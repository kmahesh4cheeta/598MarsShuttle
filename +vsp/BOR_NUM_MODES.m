function v = BOR_NUM_MODES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 21);
  end
  v = vInitialized;
end
