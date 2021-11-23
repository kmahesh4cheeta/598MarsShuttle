function v = VIEW_REAR()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 434);
  end
  v = vInitialized;
end
