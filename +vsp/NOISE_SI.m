function v = NOISE_SI()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 441);
  end
  v = vInitialized;
end
