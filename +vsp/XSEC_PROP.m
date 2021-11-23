function v = XSEC_PROP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 526);
  end
  v = vInitialized;
end
