function v = CFD_FACET_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 121);
  end
  v = vInitialized;
end
