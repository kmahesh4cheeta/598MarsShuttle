function v = EXPORT_XSECGEOM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 182);
  end
  v = vInitialized;
end
