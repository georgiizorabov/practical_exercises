def digit_summer(num):
    return num % 10 + digit_summer(num // 10) if num != 0 else 0

def test():
    res = digit_summer(2347623)
    assert res == 27


if __name__ == "__main__":
    test()
