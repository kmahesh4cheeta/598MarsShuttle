function v = EDIT_XSEC_RECTANGLE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 274);
  end
  v = vInitialized;
end
