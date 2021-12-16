function v = BOR_LOWER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 20);
  end
  v = vInitialized;
end
