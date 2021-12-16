function v = OUTSIDE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 388);
  end
  v = vInitialized;
end
