function v = BOR_UPPER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 19);
  end
  v = vInitialized;
end
