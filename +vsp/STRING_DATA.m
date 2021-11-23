function v = STRING_DATA()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 364);
  end
  v = vInitialized;
end
