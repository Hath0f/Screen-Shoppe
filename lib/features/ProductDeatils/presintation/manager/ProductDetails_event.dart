part of 'ProductDetails_bloc.dart';

abstract class ProductDetailsEvent extends Equatable {
  const ProductDetailsEvent();
}

class GetProductDetails extends ProductDetailsEvent {
  final String id;
  @override
  List<Object> get props => [id];
  const GetProductDetails({required this.id});
}

class GetLast10ProductDetails extends ProductDetailsEvent {
  @override
  List<Object> get props => [];
}
