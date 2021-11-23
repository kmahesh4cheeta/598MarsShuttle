function v = XS_SUPER_ELLIPSE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 498);
  end
  v = vInitialized;
end
