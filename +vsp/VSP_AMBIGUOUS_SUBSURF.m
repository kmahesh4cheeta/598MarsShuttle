function v = VSP_AMBIGUOUS_SUBSURF()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = vspMEX(0, 161);
  end
  v = vInitialized;
end
