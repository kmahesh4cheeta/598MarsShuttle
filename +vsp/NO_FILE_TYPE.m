function v = NO_FILE_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 100);
  end
  v = vInitialized;
end
