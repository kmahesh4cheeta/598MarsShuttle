function v = VSP_FILE_READ_FAILURE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 154);
  end
  v = vInitialized;
end
