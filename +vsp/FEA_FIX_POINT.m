function v = FEA_FIX_POINT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 222);
  end
  v = vInitialized;
end
