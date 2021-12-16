function v = IMPORT_BEM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 281);
  end
  v = vInitialized;
end
