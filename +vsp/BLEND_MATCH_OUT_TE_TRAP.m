function v = BLEND_MATCH_OUT_TE_TRAP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 470);
  end
  v = vInitialized;
end
