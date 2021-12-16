function v = XS_FILE_FUSE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 501);
  end
  v = vInitialized;
end
