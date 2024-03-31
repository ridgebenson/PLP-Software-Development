def calculate_discount(price, discount_percent):
    """
    Calculates the final price after applying a discount.

    Args:
        price (float): The original price.
        discount_percent (float): The discount percentage.

    Returns:
        float: The final price after applying the discount.
    """
    if discount_percent >= 20:
        # Apply the discount
        discounted_price = price * (1 - discount_percent / 100)
        return discounted_price
    else:
        # No discount applied
        return price

# Prompt user for input
original_price = float(input("Enter the original price: "))
discount_percentage = float(input("Enter the discount percentage: "))

# Calculate and print the final price
final_price = calculate_discount(original_price, discount_percentage)
print(f"Final price after discount: ${final_price:.2f}")
