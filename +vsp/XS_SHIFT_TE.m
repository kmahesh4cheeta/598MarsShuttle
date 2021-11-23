function v = XS_SHIFT_TE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 530);
  end
  v = vInitialized;
end
