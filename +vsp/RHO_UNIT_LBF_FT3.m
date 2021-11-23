function v = RHO_UNIT_LBF_FT3()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 375);
  end
  v = vInitialized;
end
