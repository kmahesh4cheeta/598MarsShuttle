function v = BLEND_ANGLES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 466);
  end
  v = vInitialized;
end
