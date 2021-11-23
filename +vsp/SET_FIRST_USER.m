function v = SET_FIRST_USER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 381);
  end
  v = vInitialized;
end
