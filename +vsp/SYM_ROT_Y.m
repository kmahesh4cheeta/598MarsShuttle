function v = SYM_ROT_Y()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 402);
  end
  v = vInitialized;
end
