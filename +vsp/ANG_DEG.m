function v = ANG_DEG()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 5);
  end
  v = vInitialized;
end
