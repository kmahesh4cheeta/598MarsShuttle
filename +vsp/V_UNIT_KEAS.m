function v = V_UNIT_KEAS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 418);
  end
  v = vInitialized;
end
