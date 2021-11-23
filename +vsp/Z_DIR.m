function v = Z_DIR()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 135);
  end
  v = vInitialized;
end
