function v = VSP_INVALID_VARPRESET_GROUPNAME()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 163);
  end
  v = vInitialized;
end
