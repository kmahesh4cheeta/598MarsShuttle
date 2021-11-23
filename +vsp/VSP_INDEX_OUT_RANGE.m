function v = VSP_INDEX_OUT_RANGE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 157);
  end
  v = vInitialized;
end
