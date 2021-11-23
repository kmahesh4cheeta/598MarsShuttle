function v = CFD_STIFFENER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 458);
  end
  v = vInitialized;
end
