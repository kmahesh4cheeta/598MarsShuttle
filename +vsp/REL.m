function v = REL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 1);
  end
  v = vInitialized;
end
