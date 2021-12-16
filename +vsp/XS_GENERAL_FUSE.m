function v = XS_GENERAL_FUSE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 500);
  end
  v = vInitialized;
end
