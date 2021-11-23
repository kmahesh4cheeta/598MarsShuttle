function v = DOUBLE_DATA()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 363);
  end
  v = vInitialized;
end
