function v = VIEW_RIGHT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 430);
  end
  v = vInitialized;
end
