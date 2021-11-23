function v = Y_DIR()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 134);
  end
  v = vInitialized;
end
