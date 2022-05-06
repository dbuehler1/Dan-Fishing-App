
class FishFact {
  String fishName = '';
  String fishSizes = '';
  String description = '';

  FishFact(fishName, fishSizes, description) {
    this.fishName = fishName ?? '';
    this.fishSizes = fishSizes ?? '';
    this.description = description ?? '';
  }
}

class FishingSpot {
  String state = '';
  String location = '';

  FishingSpot(state, location){
    this.state = state ?? '';
    this.location = location ?? '';
  }
}

class FishingProduct{
  String product = '';
  double price = 0;

  FishingProduct(product, price){
    this.product = product ?? '';
    this.price = price ?? 0;
  }
}


