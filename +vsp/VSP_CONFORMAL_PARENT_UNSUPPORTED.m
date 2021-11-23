function v = VSP_CONFORMAL_PARENT_UNSUPPORTED()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 164);
  end
  v = vInitialized;
end
