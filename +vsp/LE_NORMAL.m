function v = LE_NORMAL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 241);
  end
  v = vInitialized;
end
