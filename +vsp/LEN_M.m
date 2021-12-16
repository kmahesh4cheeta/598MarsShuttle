function v = LEN_M()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 292);
  end
  v = vInitialized;
end
