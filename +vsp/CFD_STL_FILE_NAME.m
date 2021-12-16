function v = CFD_STL_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 54);
  end
  v = vInitialized;
end
