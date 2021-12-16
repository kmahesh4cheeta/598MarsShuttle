function v = NOISE_ENGLISH()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 442);
  end
  v = vInitialized;
end
