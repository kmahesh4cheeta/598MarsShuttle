function v = EXCRESCENCE_COUNT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 168);
  end
  v = vInitialized;
end
