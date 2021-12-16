function v = CFD_FAR_WIDTH()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 44);
  end
  v = vInitialized;
end
