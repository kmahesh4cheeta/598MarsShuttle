function v = FF_B_JENKINSON_AFT_FUSE_NACELLE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 253);
  end
  v = vInitialized;
end
