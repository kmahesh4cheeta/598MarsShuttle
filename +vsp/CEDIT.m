function v = CEDIT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 318);
  end
  v = vInitialized;
end
