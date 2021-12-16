function v = SI_UNIT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 235);
  end
  v = vInitialized;
end
