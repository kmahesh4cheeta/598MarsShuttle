function v = EXPORT_IGES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 187);
  end
  v = vInitialized;
end
