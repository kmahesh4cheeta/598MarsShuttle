function v = RHO_UNIT_SLUG_FT3()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 371);
  end
  v = vInitialized;
end
