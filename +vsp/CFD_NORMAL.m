function v = CFD_NORMAL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 454);
  end
  v = vInitialized;
end
