function v = FF_B_JENKINSON_FUSE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 251);
  end
  v = vInitialized;
end
