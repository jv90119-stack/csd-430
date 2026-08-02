/**
JOSE VELAZQUEZ
MODULE 11.2 ASSIGNMENT
DATE: 08/02/2026
This program calculates the total price for an order item based on the unit price
and quantity ordered. It includes error handling to ensure that negative values for
price or quantity are not accepted. It is meant to demontrate the use of Javadoc
comments to properly document the code.
*/


/**
 * Calculates the total price for an order item.
 */
class OrderCalculator {

    /**
     * Multiplies the price of one item by the quantity ordered.
     *
     * @param unitPrice price of one item
     * @param quantity number of items ordered
     * @return total price before taxes and discounts
     * @throws IllegalArgumentException if the price or quantity is negative
     */
    public double calculateItemTotal(double unitPrice, int quantity) {
        if (unitPrice < 0 || quantity < 0) {
            throw new IllegalArgumentException(
                    "Price and quantity cannot be negative.");
        }

        return unitPrice * quantity;
    }
}