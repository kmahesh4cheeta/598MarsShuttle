function v = WING_SURF()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 461);
  end
  v = vInitialized;
end
