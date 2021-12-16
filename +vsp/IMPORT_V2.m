function v = IMPORT_V2()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 280);
  end
  v = vInitialized;
end
