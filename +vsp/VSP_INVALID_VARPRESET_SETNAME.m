function v = VSP_INVALID_VARPRESET_SETNAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 162);
  end
  v = vInitialized;
end
