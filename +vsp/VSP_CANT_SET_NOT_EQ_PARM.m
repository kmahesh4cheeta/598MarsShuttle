function v = VSP_CANT_SET_NOT_EQ_PARM()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 160);
  end
  v = vInitialized;
end
