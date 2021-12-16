function v = XS_FOUR_DIGIT_MOD()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 510);
  end
  v = vInitialized;
end
