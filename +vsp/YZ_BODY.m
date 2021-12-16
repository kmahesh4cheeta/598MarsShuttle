function v = YZ_BODY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 229);
  end
  v = vInitialized;
end
