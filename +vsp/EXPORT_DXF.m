function v = EXPORT_DXF()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 189);
  end
  v = vInitialized;
end
