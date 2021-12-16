function v = WLINE_SOURCE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 72);
  end
  v = vInitialized;
end
