function v = LINEAR()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 316);
  end
  v = vInitialized;
end
