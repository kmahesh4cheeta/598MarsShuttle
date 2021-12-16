function v = EXPORT_STL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 175);
  end
  v = vInitialized;
end
