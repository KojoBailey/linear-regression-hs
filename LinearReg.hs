linearReg :: [(Double, Double)] -> Either String (Double, Double)
linearReg [] = Left "Empty list."
linearReg points
  | denom == 0 = Left "Vertical slope: undefined."
  | otherwise  = Right (gradient, slope)
  where
    gradient = my - slope * mx
    slope = numer / denom
    numer = sum . map (\(x, y) -> (x - mx) * (y - my)) $ points
    denom = sum . map (\(x, _) -> (x - mx) ^ 2) $ points
    mx = (sum . map fst $ points) / n
    my = (sum . map snd $ points) / n
    n = fromIntegral (length points)

linearRegFmt :: [(Double, Double)] -> Either String String
linearRegFmt [] = Left "Empty list."
linearRegFmt points = case buffer of
  Left err  -> Left err
  Right res -> Right $ fmtLine res
  where buffer = linearReg points

fmtLine :: (Double, Double) -> String
fmtLine (m, b) = "y = " ++ show m ++ "x + " ++ show b
