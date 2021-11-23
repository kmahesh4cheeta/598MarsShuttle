function v = FF_W_KROO()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 260);
  end
  v = vInitialized;
end
