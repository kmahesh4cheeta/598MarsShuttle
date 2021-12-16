function v = SYM_NONE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 406);
  end
  v = vInitialized;
end
