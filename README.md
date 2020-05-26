# Currency Rates

A sample `Flutter` app illustrating `Sealed Classes` usage.

This implementation uses [`Sum Types`](https://pub.dev/packages/sum_types/) package.

The application displays currency rates from the National Bank of Poland via `REST` api. It uses [Bloc](https://github.com/felangel/bloc/) library for the state management.

![Currency Rates](/screenshots/currency-rates.png "Currency Rates")

#### Events

- `CurrencyRatesLoadEvent` - informs the `BLoC` that it needs to load the currency rates,
- `CurrencyRatesRefreshEvent` - informs the `BLoC` that it needs to refresh the currency rates.

#### States

The UI can be in one of the following states:

- `CurrencyRatesLoading` - when currency rates are being loaded,
- `CurrencyRatesLoaded` - after the currency rates have been loaded successfully,
- `CurrencyRatesRefreshing` - when currency rates are being refreshed,
- `CurrencyRatesError` - when the currency rates haven't been loaded, because of an error.

#### Bloc

`CurrencyRatesBloc` in a response to the `CurrencyRatesEvent` retrieves currency rates from the `repository` and displays them on the UI.
