function v = PRES_UNIT_MB()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 330);
  end
  v = vInitialized;
end
