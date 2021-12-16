function v = EXPORT_XSEC()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 174);
  end
  v = vInitialized;
end
