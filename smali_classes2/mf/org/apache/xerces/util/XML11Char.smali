.class public Lmf/org/apache/xerces/util/XML11Char;
.super Ljava/lang/Object;
.source "XML11Char.java"


# static fields
.field public static final MASK_XML11_CONTENT:I = 0x20

.field public static final MASK_XML11_CONTENT_INTERNAL:I = 0x30

.field public static final MASK_XML11_CONTROL:I = 0x10

.field public static final MASK_XML11_NAME:I = 0x8

.field public static final MASK_XML11_NAME_START:I = 0x4

.field public static final MASK_XML11_NCNAME:I = 0x80

.field public static final MASK_XML11_NCNAME_START:I = 0x40

.field public static final MASK_XML11_SPACE:I = 0x2

.field public static final MASK_XML11_VALID:I = 0x1

.field private static final XML11CHARS:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x11

    const/16 v5, -0x57

    const/16 v4, -0x13

    const/16 v3, 0x21

    .line 50
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    .line 88
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x9

    invoke-static {v0, v7, v1, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 89
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x9

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    .line 90
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xa

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 91
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xb

    const/16 v2, 0xd

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 92
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xd

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 93
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xe

    const/16 v2, 0x20

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 94
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x20

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    .line 95
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x26

    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 96
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x26

    aput-byte v7, v0, v1

    .line 97
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x27

    const/16 v2, 0x2d

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 98
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2d

    const/16 v2, 0x2f

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 99
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2f

    aput-byte v3, v0, v1

    .line 100
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x30

    const/16 v2, 0x3a

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 101
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x3a

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    .line 102
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    .line 103
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x3c

    aput-byte v7, v0, v1

    .line 104
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x3d

    const/16 v2, 0x41

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 105
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x41

    const/16 v2, 0x5b

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 106
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x5b

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 107
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x5d

    aput-byte v7, v0, v1

    .line 108
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    .line 109
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x5f

    aput-byte v4, v0, v1

    .line 110
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    .line 111
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x61

    const/16 v2, 0x7b

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 112
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x7b

    const/16 v2, 0x7f

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 113
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x7f

    const/16 v2, 0x85

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 114
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x85

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    .line 115
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x86

    const/16 v2, 0xa0

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 116
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xa0

    const/16 v2, 0xb7

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 117
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xb7

    aput-byte v5, v0, v1

    .line 118
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xb8

    const/16 v2, 0xc0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 119
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xc0

    const/16 v2, 0xd7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 120
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xd7

    aput-byte v3, v0, v1

    .line 121
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xd8

    const/16 v2, 0xf7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 122
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xf7

    aput-byte v3, v0, v1

    .line 123
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0xf8

    const/16 v2, 0x300

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 124
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x300

    const/16 v2, 0x370

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 125
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x370

    const/16 v2, 0x37e

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 126
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x37e

    aput-byte v3, v0, v1

    .line 127
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x37f

    const/16 v2, 0x2000

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 128
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2000

    const/16 v2, 0x200c

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 129
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x200c

    const/16 v2, 0x200e

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 130
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x200e

    const/16 v2, 0x2028

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 131
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2028

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    .line 132
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2029

    const/16 v2, 0x203f

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 133
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x203f

    const/16 v2, 0x2041

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 134
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2041

    const/16 v2, 0x2070

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 135
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2070

    const/16 v2, 0x2190

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 136
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2190

    const/16 v2, 0x2c00

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 137
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2c00

    const/16 v2, 0x2ff0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 138
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x2ff0

    const/16 v2, 0x3001

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 139
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const/16 v1, 0x3001

    const v2, 0xd800

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 140
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const v1, 0xe000

    const v2, 0xf900

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 141
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const v1, 0xf900

    const v2, 0xfdd0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 142
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const v1, 0xfdd0

    const v2, 0xfdf0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 143
    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    const v1, 0xfdf0

    const v2, 0xfffe

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isXML11Content(I)Z
    .locals 2
    .param p0, "c"    # I

    .prologue
    const/high16 v1, 0x10000

    .line 205
    if-ge p0, v1, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2

    .line 206
    :cond_0
    if-gt v1, p0, :cond_1

    const v0, 0x10ffff

    .line 205
    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isXML11InternalEntityContent(I)Z
    .locals 2
    .param p0, "c"    # I

    .prologue
    const/high16 v1, 0x10000

    .line 216
    if-ge p0, v1, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x30

    if-nez v0, :cond_2

    .line 217
    :cond_0
    if-gt v1, p0, :cond_1

    const v0, 0x10ffff

    .line 216
    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isXML11Invalid(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 182
    invoke-static {p0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isXML11NCName(I)Z
    .locals 2
    .param p0, "c"    # I

    .prologue
    const/high16 v1, 0x10000

    .line 264
    if-ge p0, v1, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    .line 265
    :cond_0
    if-gt v1, p0, :cond_1

    const/high16 v0, 0xf0000

    .line 264
    if-lt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isXML11NCNameStart(I)Z
    .locals 2
    .param p0, "c"    # I

    .prologue
    const/high16 v1, 0x10000

    .line 252
    if-ge p0, v1, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_2

    .line 253
    :cond_0
    if-gt v1, p0, :cond_1

    const/high16 v0, 0xf0000

    .line 252
    if-lt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isXML11Name(I)Z
    .locals 2
    .param p0, "c"    # I

    .prologue
    const/high16 v1, 0x10000

    .line 240
    if-ge p0, v1, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    .line 241
    :cond_0
    if-lt p0, v1, :cond_1

    const/high16 v0, 0xf0000

    .line 240
    if-lt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isXML11NameHighSurrogate(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 277
    const v0, 0xd800

    if-gt v0, p0, :cond_0

    const v0, 0xdb7f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXML11NameStart(I)Z
    .locals 2
    .param p0, "c"    # I

    .prologue
    const/high16 v1, 0x10000

    .line 228
    if-ge p0, v1, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 229
    :cond_0
    if-gt v1, p0, :cond_1

    const/high16 v0, 0xf0000

    .line 228
    if-lt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isXML11Space(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 158
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXML11Valid(I)Z
    .locals 2
    .param p0, "c"    # I

    .prologue
    const/high16 v1, 0x10000

    .line 172
    if-ge p0, v1, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 173
    :cond_0
    if-gt v1, p0, :cond_1

    const v0, 0x10ffff

    .line 172
    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isXML11ValidLiteral(I)Z
    .locals 2
    .param p0, "c"    # I

    .prologue
    const/high16 v1, 0x10000

    .line 194
    if-ge p0, v1, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XML11Char;->XML11CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 195
    :cond_0
    if-gt v1, p0, :cond_1

    const v0, 0x10ffff

    .line 194
    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isXML11ValidNCName(Ljava/lang/String;)Z
    .locals 7
    .param p0, "ncName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 341
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 342
    .local v3, "length":I
    if-nez v3, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v4

    .line 345
    :cond_1
    const/4 v2, 0x1

    .line 346
    .local v2, "i":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 347
    .local v0, "ch":C
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 348
    if-le v3, v5, :cond_0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 349
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 350
    .local v1, "ch2":C
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 351
    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 354
    const/4 v2, 0x2

    .line 360
    .end local v1    # "ch2":C
    :cond_2
    :goto_1
    if-lt v2, v3, :cond_3

    move v4, v5

    .line 376
    goto :goto_0

    .line 361
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 362
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCName(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 363
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 364
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 365
    .restart local v1    # "ch2":C
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 366
    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCName(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 374
    .end local v1    # "ch2":C
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isXML11ValidName(Ljava/lang/String;)Z
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 292
    .local v3, "length":I
    if-nez v3, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v4

    .line 295
    :cond_1
    const/4 v2, 0x1

    .line 296
    .local v2, "i":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 297
    .local v0, "ch":C
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameStart(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 298
    if-le v3, v5, :cond_0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 299
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 300
    .local v1, "ch2":C
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 301
    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameStart(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 304
    const/4 v2, 0x2

    .line 310
    .end local v1    # "ch2":C
    :cond_2
    :goto_1
    if-lt v2, v3, :cond_3

    move v4, v5

    .line 326
    goto :goto_0

    .line 311
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 312
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 313
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 314
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 315
    .restart local v1    # "ch2":C
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 316
    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 324
    .end local v1    # "ch2":C
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isXML11ValidNmtoken(Ljava/lang/String;)Z
    .locals 6
    .param p0, "nmtoken"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 390
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 391
    .local v3, "length":I
    if-nez v3, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v4

    .line 394
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_2

    .line 409
    const/4 v4, 0x1

    goto :goto_0

    .line 395
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 396
    .local v0, "ch":C
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 397
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 398
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 399
    .local v1, "ch2":C
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 400
    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 394
    .end local v1    # "ch2":C
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
