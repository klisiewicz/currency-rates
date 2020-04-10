# Currency Rates

A sample `Flutter` app illustrating `sealed classes` usage.

The application displays currency rates from the National Bank of Poland via `REST` api. It uses [Bloc](https://github.com/felangel/bloc/) library for the state management.

![Currency Rates](/screenshots/currency-rates.png "Currency Rates")

#### Events

- `CurrencyRatesLoadEvent` - informs the `BLoC` that it needs to load the currency rates,
- `CurrencyRatesRefreshEvent` - informs the `BLoC` that it needs to refresh the currency rates.

#### States

In the basic version of the app the UI can be in one of the following states:

- `CurrencyRatesLoading` - when currency rates are being loaded,
- `CurrencyRatesLoaded` - after the currency rates have been loaded successfully,
- `CurrencyRatesRefreshing` - when currency rates are being refreshed,
- `CurrencyRatesError` - when the currency rates haven't been loaded, because of an error.

#### Bloc

`CurrencyRatesBloc` in a response to the `CurrencyRatesEvent` retrieves currency rates from the `repository` and displays them on the UI.

## Implementations

- [Sealed Unions](https://github.com/klisiewicz/currency-rates/sealed-unions/README.md)
- [Sum Types](https://github.com/klisiewicz/currency-rates/sum-types/README.md)
- [Sealed Class](https://github.com/klisiewicz/currency-rates/sealed-class/README.md)
- [Super Enum](https://github.com/klisiewicz/currency-rates/super-enum/README.md)
- [Freezed](https://github.com/klisiewicz/currency-rates/freezed/README.md)
