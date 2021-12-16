function v = EXPORT_NASCART()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 177);
  end
  v = vInitialized;
end
