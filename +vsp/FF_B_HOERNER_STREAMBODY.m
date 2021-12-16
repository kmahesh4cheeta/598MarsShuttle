function v = FF_B_HOERNER_STREAMBODY()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 247);
  end
  v = vInitialized;
end
