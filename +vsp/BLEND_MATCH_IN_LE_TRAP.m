function v = BLEND_MATCH_IN_LE_TRAP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 467);
  end
  v = vInitialized;
end
