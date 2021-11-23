function v = SELIG_AF_EXPORT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 2);
  end
  v = vInitialized;
end
