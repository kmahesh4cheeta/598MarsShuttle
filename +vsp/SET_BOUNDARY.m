function v = SET_BOUNDARY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 333);
  end
  v = vInitialized;
end
