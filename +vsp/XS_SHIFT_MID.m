function v = XS_SHIFT_MID()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 529);
  end
  v = vInitialized;
end
