function v = XS_FIVE_DIGIT_MOD()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 512);
  end
  v = vInitialized;
end
