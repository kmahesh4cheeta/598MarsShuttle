function v = V_UNIT_KTAS()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 419);
  end
  v = vInitialized;
end
