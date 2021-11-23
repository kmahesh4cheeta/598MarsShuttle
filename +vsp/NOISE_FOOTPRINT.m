function v = NOISE_FOOTPRINT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 439);
  end
  v = vInitialized;
end
