function v = MALE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 270);
  end
  v = vInitialized;
end
