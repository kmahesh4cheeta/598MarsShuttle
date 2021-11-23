function v = CONST_U()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 390);
  end
  v = vInitialized;
end
