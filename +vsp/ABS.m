function v = ABS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 0);
  end
  v = vInitialized;
end
