def luas_persegi(sisi):
    return sisi * sisi

sisi = float(input("Masukkan sisi persegi: "))
luas = luas_persegi(sisi)
print("Luas persegi dengan sisi {} adalah {}".format(sisi, luas))
