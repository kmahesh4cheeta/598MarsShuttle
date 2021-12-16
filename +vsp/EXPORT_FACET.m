function v = EXPORT_FACET()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 190);
  end
  v = vInitialized;
end
