function v = EXPORT_STEP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 185);
  end
  v = vInitialized;
end
