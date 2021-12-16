function v = BFT_UNIT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 238);
  end
  v = vInitialized;
end
