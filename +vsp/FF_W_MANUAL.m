function v = FF_W_MANUAL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 254);
  end
  v = vInitialized;
end
