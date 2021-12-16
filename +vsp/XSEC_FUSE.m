function v = XSEC_FUSE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 522);
  end
  v = vInitialized;
end
