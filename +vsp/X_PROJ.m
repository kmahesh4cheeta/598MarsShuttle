function v = X_PROJ()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 336);
  end
  v = vInitialized;
end
