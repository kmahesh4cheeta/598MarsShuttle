function v = Z_PROJ()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 338);
  end
  v = vInitialized;
end
