function v = X_DIR()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 133);
  end
  v = vInitialized;
end
