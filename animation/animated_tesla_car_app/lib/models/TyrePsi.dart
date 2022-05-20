class TyrePsi {
  final double psi;
  final int temp;
  final bool isLowPressurel;

  TyrePsi(
      {required this.psi, required this.temp, required this.isLowPressurel});
}

final List<TyrePsi> demoPsiList = [
  TyrePsi(psi: 23.6, temp: 56, isLowPressurel: true),
  TyrePsi(psi: 35.0, temp: 41, isLowPressurel: false),
  TyrePsi(psi: 34.6, temp: 41, isLowPressurel: false),
  TyrePsi(psi: 34.8, temp: 42, isLowPressurel: false),
];
