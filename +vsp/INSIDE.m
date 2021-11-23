function v = INSIDE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 387);
  end
  v = vInitialized;
end
