function v = STEP_SHELL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 382);
  end
  v = vInitialized;
end
