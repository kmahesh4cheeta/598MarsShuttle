function v = SET_TARGET()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 342);
  end
  v = vInitialized;
end
