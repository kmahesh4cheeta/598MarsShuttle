function v = IMPORT_XSEC_WIRE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 282);
  end
  v = vInitialized;
end
