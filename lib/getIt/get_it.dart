import 'package:cypto_pulse/data/datasource/candle_datasource.dart';
import 'package:cypto_pulse/data/datasource/coin_datasource.dart';
import 'package:cypto_pulse/data/repository/candle_repository.dart';
import 'package:cypto_pulse/data/repository/coin_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
getItInit() {
  getIt.registerSingleton<Dio>(
    Dio(
      BaseOptions(baseUrl: 'https://api.coingecko.com/api/v3/coins/'),
    ),
  );
  //Datasources
  getIt.registerSingleton<MainCoinDatasource>(CoinDatasource());
  getIt.registerSingleton<MainCandleDatasoure>(CandleDatasource());
  //Repositories
  getIt.registerSingleton<MainCoinRepository>(CoinRepository());
  getIt.registerSingleton<MainCandleRepository>(CandleRepository());
}
