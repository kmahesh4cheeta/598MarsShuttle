function v = CLOSE_SKEWUP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 490);
  end
  v = vInitialized;
end
