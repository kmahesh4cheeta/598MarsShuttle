function v = BOR_FLOWTHROUGH()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 18);
  end
  v = vInitialized;
end
