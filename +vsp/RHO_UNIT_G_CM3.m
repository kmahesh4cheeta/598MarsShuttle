function v = RHO_UNIT_G_CM3()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 372);
  end
  v = vInitialized;
end
