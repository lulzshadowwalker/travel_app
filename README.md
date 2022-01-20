# What I learned
- `PageView.builder`<br>
- `maxFinite` represents the larges value a `double` can hold, `infinity` represents infinity<br>
```dart
static const double infinity = 1.0 / 0.0;
static const double negativeInfinity = -infinity;
static const double minPositive = 5e-324;
static const double maxFinite = 1.7976931348623157e+308;
```

## widgets
- `Wrap` functions basically like a `Row` or a `Column` except when it runs out of space it "wraps" to the next line or however you set the `direction` to be. love it 🤤
