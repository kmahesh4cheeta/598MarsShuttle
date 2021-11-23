function v = BLEND_MATCH_LE_ANGLES()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 472);
  end
  v = vInitialized;
end
