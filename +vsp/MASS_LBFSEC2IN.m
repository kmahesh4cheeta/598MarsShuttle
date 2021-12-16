function v = MASS_LBFSEC2IN()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 302);
  end
  v = vInitialized;
end
