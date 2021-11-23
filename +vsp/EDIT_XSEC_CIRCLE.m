function v = EDIT_XSEC_CIRCLE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 272);
  end
  v = vInitialized;
end
