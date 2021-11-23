function v = FEMALE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 271);
  end
  v = vInitialized;
end
