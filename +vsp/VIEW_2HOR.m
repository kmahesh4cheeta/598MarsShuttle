function v = VIEW_2HOR()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 422);
  end
  v = vInitialized;
end
