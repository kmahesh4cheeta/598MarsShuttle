function v = NOISE_STEADY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 440);
  end
  v = vInitialized;
end
