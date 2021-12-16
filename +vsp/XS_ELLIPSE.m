function v = XS_ELLIPSE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 497);
  end
  v = vInitialized;
end
