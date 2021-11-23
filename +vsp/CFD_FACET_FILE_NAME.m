function v = CFD_FACET_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 63);
  end
  v = vInitialized;
end
