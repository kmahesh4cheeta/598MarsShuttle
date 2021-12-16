function v = CFD_FAR_LENGTH()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 43);
  end
  v = vInitialized;
end
