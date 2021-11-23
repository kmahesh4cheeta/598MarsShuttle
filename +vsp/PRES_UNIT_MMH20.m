function v = PRES_UNIT_MMH20()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 329);
  end
  v = vInitialized;
end
