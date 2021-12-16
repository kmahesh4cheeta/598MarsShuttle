function v = FF_B_SCHEMENSKY_FUSE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 245);
  end
  v = vInitialized;
end
