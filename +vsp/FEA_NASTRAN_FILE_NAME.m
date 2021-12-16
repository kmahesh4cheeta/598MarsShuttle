function v = FEA_NASTRAN_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 205);
  end
  v = vInitialized;
end
