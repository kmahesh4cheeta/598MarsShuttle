function v = RHO_UNIT_TONNE_MM3()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 374);
  end
  v = vInitialized;
end
