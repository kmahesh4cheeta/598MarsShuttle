function v = CFD_STRUCTURE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 457);
  end
  v = vInitialized;
end
