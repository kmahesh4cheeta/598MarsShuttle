function v = NO_BOUNDARY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 332);
  end
  v = vInitialized;
end
