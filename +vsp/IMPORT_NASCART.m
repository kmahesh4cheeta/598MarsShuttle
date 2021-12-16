function v = IMPORT_NASCART()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 276);
  end
  v = vInitialized;
end
