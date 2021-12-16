function v = XS_FIVE_DIGIT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 511);
  end
  v = vInitialized;
end
