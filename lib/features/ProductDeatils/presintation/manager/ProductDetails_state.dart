part of 'ProductDetails_bloc.dart';

abstract class ProductDetailsState extends Equatable {
  const ProductDetailsState();
}

class ProductDetailsInitial extends ProductDetailsState {
  @override
  List<Object> get props => [];
}

class ProductDetailsLoading extends ProductDetailsState {
  @override
  List<Object> get props => [];
}

class ProductDetailsILoaded extends ProductDetailsState {
  ProductDetailsModel  productDetailsModel;
  ProductDetailsILoaded({required this.productDetailsModel});

  @override
  List<Object> get props => [productDetailsModel];
}

class ProductDetailsError extends ProductDetailsState {
  String errorMessage;

  ProductDetailsError({required this.errorMessage});

  @override
  List<Object> get props => [];
}
