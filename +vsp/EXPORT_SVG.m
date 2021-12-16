function v = EXPORT_SVG()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 191);
  end
  v = vInitialized;
end
