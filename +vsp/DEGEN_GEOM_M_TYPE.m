function v = DEGEN_GEOM_M_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 107);
  end
  v = vInitialized;
end
