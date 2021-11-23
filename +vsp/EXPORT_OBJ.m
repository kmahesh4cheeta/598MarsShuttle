function v = EXPORT_OBJ()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 193);
  end
  v = vInitialized;
end
