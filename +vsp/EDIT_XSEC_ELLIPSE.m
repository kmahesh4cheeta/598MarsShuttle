function v = EDIT_XSEC_ELLIPSE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 273);
  end
  v = vInitialized;
end
