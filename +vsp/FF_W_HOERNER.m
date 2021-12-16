function v = FF_W_HOERNER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 257);
  end
  v = vInitialized;
end
