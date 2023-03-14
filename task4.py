def numeric_sequencer(mx=None, cnt=0):
    num = int(input())
    if num == 0:
        return mx, cnt
    if mx is None or num > mx:
        mx = num
        cnt = 1
    else:
        cnt += 1
    return numeric_sequencer(mx, cnt)
