function v = EXPORT_VORXSEC()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 181);
  end
  v = vInitialized;
end
