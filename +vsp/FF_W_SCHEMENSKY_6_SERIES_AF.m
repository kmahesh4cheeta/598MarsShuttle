function v = FF_W_SCHEMENSKY_6_SERIES_AF()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 263);
  end
  v = vInitialized;
end
