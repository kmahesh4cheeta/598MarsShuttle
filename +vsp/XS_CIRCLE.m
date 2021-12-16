function v = XS_CIRCLE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 496);
  end
  v = vInitialized;
end
