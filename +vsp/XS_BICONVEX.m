function v = XS_BICONVEX()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 504);
  end
  v = vInitialized;
end
