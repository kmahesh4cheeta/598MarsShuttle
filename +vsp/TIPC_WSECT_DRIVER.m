function v = TIPC_WSECT_DRIVER()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 480);
  end
  v = vInitialized;
end
