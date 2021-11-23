function v = DISPLAY_DEGEN_SURF()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 137);
  end
  v = vInitialized;
end
