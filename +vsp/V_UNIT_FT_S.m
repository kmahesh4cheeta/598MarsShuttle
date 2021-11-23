function v = V_UNIT_FT_S()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 414);
  end
  v = vInitialized;
end
