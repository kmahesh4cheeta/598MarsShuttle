function v = FF_W_SCHEMENSKY_4_SERIES_AF()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 264);
  end
  v = vInitialized;
end
