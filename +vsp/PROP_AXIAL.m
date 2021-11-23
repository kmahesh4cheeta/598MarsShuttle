function v = PROP_AXIAL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 355);
  end
  v = vInitialized;
end
