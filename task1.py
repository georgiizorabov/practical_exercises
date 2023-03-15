def priceCheck(products, productPrices, productSold, soldPrice):
    return len(set(zip(productSold, soldPrice)) - set(zip(products, productPrices)))


def test():
    res = priceCheck(products=['rice', 'sugar', 'wheat', 'cheese'],
                     productPrices=[16.89, 56.92, 20.89, 345.99],
                     productSold=['rice', 'cheese'],
                     soldPrice=[18.99, 400.89])
    assert res == 2


if __name__ == "__main__":
    test()
