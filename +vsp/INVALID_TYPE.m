function v = INVALID_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 361);
  end
  v = vInitialized;
end
