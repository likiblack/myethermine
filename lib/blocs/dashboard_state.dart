part of 'dashboard_bloc.dart';

abstract class DashboardState extends Equatable {
  const DashboardState();

  @override
  List<Object> get props => [];
}

class DashboardEmpty extends DashboardState {}

class DashboardLoading extends DashboardState {}

class DashboardLoadSuccess extends DashboardState {
  final Dashboard dashboard;

  @required
  const DashboardLoadSuccess({this.dashboard}) : assert(dashboard != null);

  @override
  List<Object> get props => [dashboard];
}

class DashboardError extends DashboardState {
  final ErrorMes error;

  @required
  const DashboardError({this.error}) : assert(error != null);

  @override
  List<Object> get props => [error];
}
