function v = VSP_WRONG_XSEC_TYPE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 155);
  end
  v = vInitialized;
end
