function v = IMPORT_XSEC_MESH()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 278);
  end
  v = vInitialized;
end
