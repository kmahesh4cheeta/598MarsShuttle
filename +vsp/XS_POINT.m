function v = XS_POINT()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 495);
  end
  v = vInitialized;
end
