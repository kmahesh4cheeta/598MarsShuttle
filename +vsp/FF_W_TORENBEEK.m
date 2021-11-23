function v = FF_W_TORENBEEK()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 261);
  end
  v = vInitialized;
end
