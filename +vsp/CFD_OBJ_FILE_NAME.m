function v = CFD_OBJ_FILE_NAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 57);
  end
  v = vInitialized;
end
