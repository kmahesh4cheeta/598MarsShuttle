function v = CLOSE_EXTRAP()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 492);
  end
  v = vInitialized;
end
