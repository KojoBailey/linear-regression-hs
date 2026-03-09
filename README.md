# Linear Regression - Haskell
Check out my rewrite of [this but in Rust](https://github.com/KojoBailey/linear-regression-rs).

I've created this small project for learning purposes, mostly to solidify my understanding of linear regression. I'll likely make additions to my Rust rewrite before I add anything new to this.

## Docs
### `linearReg`
```hs
linearReg :: [(Double, Double)] -> Either String (Double, Double)
```

Takes a list of (x, y) coordinates as input, and outputs either an error message or the tuple containing (gradient, y-intercept) of the resultant line.

Possible errors include:
- empty list (i.e. input of `[]`)
- vertical slope of undefined gradient

### `linearRegFmt`
```hs
linearRegFmt :: [(Double, Double)] -> Either String String
```

Like `linearReg`, but formats the output as an equation. Takes the same input, and can produce the same errors.

## Example
```hs
> points = [(2, 1425), (5, 1014), (8, 900), (11, 548), (14, 381), (17, 274), (19, 248), (21, 181), (23, 26), (25, 16)]
> linearReg points
Right (-57.98642533936651,1342.1031674208145)
> linearRegFmt points
Right "y = -57.98642533936651x + 1342.1031674208145"
```
