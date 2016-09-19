.class public final Lmf/org/apache/xerces/impl/dv/util/HexBin;
.super Ljava/lang/Object;
.source "HexBin.java"


# static fields
.field private static final BASELENGTH:I = 0x80

.field private static final LOOKUPLENGTH:I = 0x10

.field private static final hexNumberTable:[B

.field private static final lookUpHexAlphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 33
    new-array v1, v3, [B

    sput-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    .line 34
    const/16 v1, 0x10

    new-array v1, v1, [C

    sput-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 41
    const/16 v0, 0x39

    :goto_1
    const/16 v1, 0x30

    if-ge v0, v1, :cond_1

    .line 44
    const/16 v0, 0x46

    :goto_2
    const/16 v1, 0x41

    if-ge v0, v1, :cond_2

    .line 47
    const/16 v0, 0x66

    :goto_3
    const/16 v1, 0x61

    if-ge v0, v1, :cond_3

    .line 51
    const/4 v0, 0x0

    :goto_4
    const/16 v1, 0xa

    if-lt v0, v1, :cond_4

    .line 54
    const/16 v0, 0xa

    :goto_5
    const/16 v1, 0xf

    if-le v0, v1, :cond_5

    .line 57
    return-void

    .line 39
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_1
    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v2, v0, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 45
    :cond_2
    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 48
    :cond_3
    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 52
    :cond_4
    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 55
    :cond_5
    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v2, v2, -0xa

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 12
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x80

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 89
    if-nez p0, :cond_1

    move-object v1, v8

    .line 111
    :cond_0
    :goto_0
    return-object v1

    .line 91
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 92
    .local v3, "lengthData":I
    rem-int/lit8 v10, v3, 0x2

    if-eqz v10, :cond_2

    move-object v1, v8

    .line 93
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 96
    .local v0, "binaryData":[C
    div-int/lit8 v4, v3, 0x2

    .line 97
    .local v4, "lengthDecode":I
    new-array v1, v4, [B

    .line 100
    .local v1, "decodedData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 101
    mul-int/lit8 v10, v2, 0x2

    aget-char v7, v0, v10

    .line 102
    .local v7, "tempChar":C
    if-ge v7, v11, :cond_3

    sget-object v10, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    aget-byte v5, v10, v7

    .line 103
    .local v5, "temp1":B
    :goto_2
    if-ne v5, v9, :cond_4

    move-object v1, v8

    .line 104
    goto :goto_0

    .end local v5    # "temp1":B
    :cond_3
    move v5, v9

    .line 102
    goto :goto_2

    .line 105
    .restart local v5    # "temp1":B
    :cond_4
    mul-int/lit8 v10, v2, 0x2

    add-int/lit8 v10, v10, 0x1

    aget-char v7, v0, v10

    .line 106
    if-ge v7, v11, :cond_5

    sget-object v10, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    aget-byte v6, v10, v7

    .line 107
    .local v6, "temp2":B
    :goto_3
    if-ne v6, v9, :cond_6

    move-object v1, v8

    .line 108
    goto :goto_0

    .end local v6    # "temp2":B
    :cond_5
    move v6, v9

    .line 106
    goto :goto_3

    .line 109
    .restart local v6    # "temp2":B
    :cond_6
    shl-int/lit8 v10, v5, 0x4

    or-int/2addr v10, v6

    int-to-byte v10, v10

    aput-byte v10, v1, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 8
    .param p0, "binaryData"    # [B

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v5, 0x0

    .line 79
    :goto_0
    return-object v5

    .line 68
    :cond_0
    array-length v2, p0

    .line 69
    .local v2, "lengthData":I
    mul-int/lit8 v3, v2, 0x2

    .line 70
    .local v3, "lengthEncode":I
    new-array v0, v3, [C

    .line 72
    .local v0, "encodedData":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 79
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 73
    :cond_1
    aget-byte v4, p0, v1

    .line 74
    .local v4, "temp":I
    if-gez v4, :cond_2

    .line 75
    add-int/lit16 v4, v4, 0x100

    .line 76
    :cond_2
    mul-int/lit8 v5, v1, 0x2

    sget-object v6, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    shr-int/lit8 v7, v4, 0x4

    aget-char v6, v6, v7

    aput-char v6, v0, v5

    .line 77
    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v5

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
