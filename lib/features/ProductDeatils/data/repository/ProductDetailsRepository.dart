import 'package:dartz/dartz.dart';
import 'package:shoppe_screen/dataProviders/error/failures.dart';
import 'package:shoppe_screen/dataProviders/local_data_provider.dart';
import 'package:shoppe_screen/dataProviders/network/Network_info.dart';
import 'package:shoppe_screen/dataProviders/network/data_source_url.dart';
import 'package:shoppe_screen/dataProviders/remote_data_provider.dart';
import 'package:shoppe_screen/dataProviders/repository.dart';

import '../model/ProductDetailsModel.dart';


class ProductDetailsRepository extends Repository {
  final RemoteDataProvider remoteDataProvider; //get the data from the internet
  final NetworkInfo networkInfo; //check if the device is connected to internet
  final LocalDataProvider localDataProvider;
  ProductDetailsRepository({
    required this.remoteDataProvider,
    required this.networkInfo,
    required this.localDataProvider
  });

  // Future<Either<Failure, dynamic>> getProductDetails(String id) async {
  //   return await sendRequest(
  //       checkConnection: networkInfo.isConnected,
  //       remoteFunction: () async {
  //         ProductDetailsModel remoteData =
  //             await remoteDataProvider.getData(
  //           url: DataSourceURL.getAllproducts+"/"+id,
  //           returnType: ProductDetailsModel.init(),
  //           retrievedDataType: ProductDetailsModel.init(),
  //         );
  //
  //
  //         return remoteData;
  //       },
  //       getCacheDataFunction: () async {
  //
  //       });
  // }
  Future<Either<Failure, dynamic>> getProductDetails(String id) async {
    return await sendRequest(
      checkConnection: networkInfo.isConnected,
      remoteFunction: () async {
        final remoteData = await remoteDataProvider.getData(
          url: DataSourceURL.getAllproducts + "/" + id,
          returnType: ProductDetailsModel.init(),
          retrievedDataType: ProductDetailsModel.init(),
        );

        if (remoteData == null) {
          return ProductDetailsModel.init(); // قم بإرجاع كائن فارغ بدلاً من null
        }
        return remoteData;
      },
      getCacheDataFunction: () async {
        return ProductDetailsModel.init(); // تأكد من عدم إرجاع null هنا أيضًا
      },
    );
  }

}
