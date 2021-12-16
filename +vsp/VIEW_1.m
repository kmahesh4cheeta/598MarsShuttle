function v = VIEW_1()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 421);
  end
  v = vInitialized;
end
