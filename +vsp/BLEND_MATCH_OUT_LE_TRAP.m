function v = BLEND_MATCH_OUT_LE_TRAP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 469);
  end
  v = vInitialized;
end
