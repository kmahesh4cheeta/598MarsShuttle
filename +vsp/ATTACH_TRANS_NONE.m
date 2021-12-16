function v = ATTACH_TRANS_NONE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 12);
  end
  v = vInitialized;
end
