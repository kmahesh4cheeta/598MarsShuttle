function v = XS_EDIT_CURVE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 506);
  end
  v = vInitialized;
end
