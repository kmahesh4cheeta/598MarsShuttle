function v = PANEL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 437);
  end
  v = vInitialized;
end
