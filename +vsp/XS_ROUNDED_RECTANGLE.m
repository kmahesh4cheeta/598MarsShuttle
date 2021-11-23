function v = XS_ROUNDED_RECTANGLE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 499);
  end
  v = vInitialized;
end
