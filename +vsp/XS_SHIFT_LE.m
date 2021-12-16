function v = XS_SHIFT_LE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 528);
  end
  v = vInitialized;
end
