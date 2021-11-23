function v = VSP_INVALID_INPUT_VAL()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 166);
  end
  v = vInitialized;
end
