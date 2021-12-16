function v = EXPORT_IGES_STRUCTURE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 196);
  end
  v = vInitialized;
end
