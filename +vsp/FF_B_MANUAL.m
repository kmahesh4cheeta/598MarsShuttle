function v = FF_B_MANUAL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 244);
  end
  v = vInitialized;
end
