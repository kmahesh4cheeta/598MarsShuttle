function v = EXPORT_PMARC()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 192);
  end
  v = vInitialized;
end
