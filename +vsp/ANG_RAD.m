function v = ANG_RAD()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 4);
  end
  v = vInitialized;
end
