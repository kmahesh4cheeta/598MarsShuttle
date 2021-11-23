function v = ULINE_SOURCE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 71);
  end
  v = vInitialized;
end
