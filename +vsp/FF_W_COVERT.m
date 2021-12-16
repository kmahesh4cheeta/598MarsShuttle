function v = FF_W_COVERT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 258);
  end
  v = vInitialized;
end
