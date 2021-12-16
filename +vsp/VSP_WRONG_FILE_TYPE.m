function v = VSP_WRONG_FILE_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 156);
  end
  v = vInitialized;
end
