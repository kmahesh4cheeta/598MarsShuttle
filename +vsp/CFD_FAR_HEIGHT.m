function v = CFD_FAR_HEIGHT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 45);
  end
  v = vInitialized;
end
