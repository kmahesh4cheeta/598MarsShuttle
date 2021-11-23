function v = TRIM_X()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 519);
  end
  v = vInitialized;
end
