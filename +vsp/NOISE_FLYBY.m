function v = NOISE_FLYBY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 438);
  end
  v = vInitialized;
end
