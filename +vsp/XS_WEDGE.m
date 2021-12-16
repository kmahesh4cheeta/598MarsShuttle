function v = XS_WEDGE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 505);
  end
  v = vInitialized;
end
