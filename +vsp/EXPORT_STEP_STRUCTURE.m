function v = EXPORT_STEP_STRUCTURE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 197);
  end
  v = vInitialized;
end
