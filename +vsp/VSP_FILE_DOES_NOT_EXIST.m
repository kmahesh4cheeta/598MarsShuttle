function v = VSP_FILE_DOES_NOT_EXIST()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 152);
  end
  v = vInitialized;
end
