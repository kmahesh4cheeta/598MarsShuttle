function v = FEA_STL_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 208);
  end
  v = vInitialized;
end
