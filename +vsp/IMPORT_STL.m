function v = IMPORT_STL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 275);
  end
  v = vInitialized;
end
