class KPricingCalculator {
  // Method to calculate the total price
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // Method to calculate the shipping cost for a given location
  static double calculateShippingCost(String location) {
    return getShippingCost(location);
  }

  // Method to calculate the tax amount for a given location
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  // Method to get the tax rate for a given location
  static double getTaxRateForLocation(String location) {
    // Example tax rates
    Map<String, double> taxRates = {
      'NY': 0.08,   // 8% tax rate for New York
      'CA': 0.075,  // 7.5% tax rate for California
      'TX': 0.06,   // 6% tax rate for Texas
      'VN': 0.0,    // 0% tax rate for Vietnam
      // Add more locations as needed
    };

    return taxRates[location] ?? 0.0; // Default to 0% if location is not found
  }

  // Method to get the shipping cost for a given location
  static double getShippingCost(String location) {
    // Example shipping costs
    Map<String, double> shippingCosts = {
      'NY': 5.0,    // $5.00 shipping cost for New York
      'CA': 7.0,    // $7.00 shipping cost for California
      'TX': 4.0,    // $4.00 shipping cost for Texas
      'VN': 00.0,   // $00.00 shipping cost for Vietnam
      // Add more locations as needed
    };

    return shippingCosts[location] ?? 10.0; // Default to $10.00 if location is not found
  }
}
