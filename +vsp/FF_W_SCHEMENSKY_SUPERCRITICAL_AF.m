function v = FF_W_SCHEMENSKY_SUPERCRITICAL_AF()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 267);
  end
  v = vInitialized;
end
