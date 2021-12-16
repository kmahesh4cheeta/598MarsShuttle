function v = XY_BODY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 228);
  end
  v = vInitialized;
end
