function v = IMPORT_PTS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 279);
  end
  v = vInitialized;
end
