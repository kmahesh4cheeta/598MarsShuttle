function v = SYM_ROT_X()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 401);
  end
  v = vInitialized;
end
