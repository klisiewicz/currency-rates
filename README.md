# Currency Rates

A sample `Flutter` app illustrating `sealed classes` usage.

The application displays currency rates from the National Bank of Poland via `REST` api. It uses [Bloc](https://github.com/felangel/bloc/) library for the state management.

![Currency Rates](/screenshots/currency-rates.png "Currency Rates")

#### Events

- `LoadCurrencyRatesEvent` - informs the bloc that it needs to load the currency rates from the repository.

#### States

In the basic version of the app the UI can be in one of the following states:

- `CurrencyRatesBusy` - while it is fetching currency rates from the repository,
- `CurrencyRatesReady` - after the currency rates have been loaded,
- `CurrencyRatesError` - when the currency rates were not loaded.

For the `sealed class` implementation an additional state was introduced: 

- `CurrencyRatesEmpty` - after empty currency rates have been loaded.

It's purpose is to demonstrate how `sealed class` behaves when a new state is added.

#### Bloc

`CurrencyRatesBloc` in a response to the `LoadCurrencyRatesEvent` event tries to retrieve currency rates from the repository.

## Implementations

- [Sealed Unions](https://github.com/klisiewicz/currency-rates/sealed-unions/README.md)
- [Sum Types](https://github.com/klisiewicz/currency-rates/sum-types/README.md)
- [Sealed Class](https://github.com/klisiewicz/currency-rates/sealed-class/README.md)
- [Super Enum](https://github.com/klisiewicz/currency-rates/super-enum/README.md)
- [Freezed](https://github.com/klisiewicz/currency-rates/freezed/README.md)
