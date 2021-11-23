function v = Y_PROJ()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 337);
  end
  v = vInitialized;
end
