function v = VSP_FILE_WRITE_FAILURE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 153);
  end
  v = vInitialized;
end
