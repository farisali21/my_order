import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_order/reviews/state.dart';

class ReviewsController extends Cubit<ReviewsState>
{
  ReviewsController():super(ReviewInit());
  static ReviewsController of(context) => BlocProvider.of(context);
  int perPage  = 2;
  int present = 1;
  final List<Map<String,dynamic>> originalReviews = [
    {
      'index':1,
      'name':'Mohamed Amr',
      'rating':4.0,
      'content' : 'a lot of content right here now ',
    },
    {
      'index':2,
      'name':'Mohamed Amr',
      'rating':4.0,
      'content' : 'a lot of content right here now ',
    },
    {
      'index':3,
      'name':'Mohamed Amr',
      'rating':4.0,
      'content' : 'a lot of content right here now ',
    },
    {
      'index':4,
      'name':'Mohamed Amr',
      'rating':4.0,
      'content' : 'a lot of content right here now ',
    },
    {
      'index':5,
      'name':'Mohamed Amr',
      'rating':4.0,
      'content' : 'a lot of content right here now ',
    },
    {
      'index':6,
      'name':'Mohamed Amr',
      'rating':4.0,
      'content' : 'a lot of content right here now ',
    },

  ];
  final List<Map<String,dynamic>> reviews = [
    {
      'index':1,
      'name':'Mohamed Amr',
      'rating':4.0,
      'content' : 'a lot of content right here now ',
    },
    {
      'index':2,
      'name':'Mohamed Amr',
      'rating':4.0,
      'content' : 'a lot of content right here now ',
    },
  ];
  void loadMore(){
    if((present + perPage)> originalReviews.length) {
      reviews.addAll(
          originalReviews.getRange(present, originalReviews.length));
    } else {
      reviews.addAll(
          originalReviews.getRange(present,present + perPage));
    }
    present = present + perPage;
    print('${present} , ${perPage}');
    emit(ReviewInit());
  }

}


