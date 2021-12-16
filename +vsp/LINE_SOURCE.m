function v = LINE_SOURCE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 69);
  end
  v = vInitialized;
end
