function v = EXPORT_AWAVE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 176);
  end
  v = vInitialized;
end
