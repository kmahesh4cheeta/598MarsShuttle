function v = BLEND_MATCH_IN_ANGLES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 471);
  end
  v = vInitialized;
end
