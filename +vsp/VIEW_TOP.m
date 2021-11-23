function v = VIEW_TOP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 431);
  end
  v = vInitialized;
end
