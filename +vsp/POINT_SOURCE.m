function v = POINT_SOURCE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 68);
  end
  v = vInitialized;
end
