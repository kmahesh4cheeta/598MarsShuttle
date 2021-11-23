function v = FEA_MASS_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 204);
  end
  v = vInitialized;
end
