function v = V_UNIT_M_S()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 415);
  end
  v = vInitialized;
end
