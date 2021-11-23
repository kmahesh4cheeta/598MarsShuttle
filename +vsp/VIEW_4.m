function v = VIEW_4()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 424);
  end
  v = vInitialized;
end
