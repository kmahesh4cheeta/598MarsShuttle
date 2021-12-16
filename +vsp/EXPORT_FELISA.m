function v = EXPORT_FELISA()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 173);
  end
  v = vInitialized;
end
