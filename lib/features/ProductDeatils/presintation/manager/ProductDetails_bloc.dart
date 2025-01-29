import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shoppe_screen/dataProviders/error/failures.dart';
import '../../data/model/ProductDetailsModel.dart';
import '../../data/repository/ProductDetailsRepository.dart';

part 'ProductDetails_event.dart';
part 'ProductDetails_state.dart';

class ProductDetails_bloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final ProductDetailsRepository repository;
  ProductDetails_bloc({required this.repository})
      : super(ProductDetailsInitial());
  @override
  Stream<ProductDetailsState> mapEventToState(
      ProductDetailsEvent event) async* {
    if (event is GetProductDetails) {
      yield ProductDetailsLoading();
      final failureOrData = await repository.getProductDetails(event.id);

//       yield* failureOrData.fold(
//         (failure) async* {
//           log('yield is error');
//           yield ProductDetailsError(errorMessage: mapFailureToMessage(failure));
//         },
//         (data) async* {
//           log('yield is loaded');
//           yield ProductDetailsILoaded(
//             productDetailsModel: data,
//           );
//         },
//       );
//     }
//   }
// }
      yield* failureOrData.fold(
            (failure) async* {
          log('yield is error');
          yield ProductDetailsError(errorMessage: mapFailureToMessage(failure));
        },
            (data) async* {
          if (data == null) {
            yield ProductDetailsError(errorMessage: "Product not found");
          } else {
            log('yield is loaded');
            yield ProductDetailsILoaded(productDetailsModel: data);
          }
        },
      );
    }
  }
}