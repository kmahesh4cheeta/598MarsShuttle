function v = SPAN_WSECT_DRIVER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 475);
  end
  v = vInitialized;
end
