function v = CFD_TRANSPARENT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 456);
  end
  v = vInitialized;
end
