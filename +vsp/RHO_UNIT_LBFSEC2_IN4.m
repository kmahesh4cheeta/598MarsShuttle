function v = RHO_UNIT_LBFSEC2_IN4()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 376);
  end
  v = vInitialized;
end
