function v = XZ_BODY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 230);
  end
  v = vInitialized;
end
