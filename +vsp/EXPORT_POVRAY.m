function v = EXPORT_POVRAY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 178);
  end
  v = vInitialized;
end
