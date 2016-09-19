.class final Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;
.super Ljava/lang/Object;
.source "FloatDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/XSFloat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/FloatDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XFloat"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field private final value:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;->isPossibleFP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    .line 83
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    goto :goto_0

    .line 74
    :cond_1
    const-string v0, "-INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    goto :goto_0

    .line 77
    :cond_2
    const-string v0, "NaN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    goto :goto_0

    .line 81
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)I
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->compareTo(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)I

    move-result v0

    return v0
.end method

.method private compareTo(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)I
    .locals 5
    .param p1, "val"    # Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 126
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    .line 129
    .local v0, "oval":F
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpg-float v3, v3, v0

    if-gez v3, :cond_1

    .line 130
    const/4 v1, -0x1

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 132
    :cond_1
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_2

    .line 133
    const/4 v1, 0x1

    goto :goto_0

    .line 136
    :cond_2
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_0

    .line 141
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 143
    cmpl-float v3, v0, v0

    if-nez v3, :cond_0

    move v1, v2

    .line 146
    goto :goto_0

    :cond_3
    move v1, v2

    .line 150
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    if-ne p1, p0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    instance-of v3, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;

    if-nez v3, :cond_2

    move v1, v2

    .line 90
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 91
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;

    .line 94
    .local v0, "oval":Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v4, v0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 97
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    iget v3, v0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v4, v0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    .line 100
    goto :goto_0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0
.end method

.method public isIdentical(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)Z
    .locals 4
    .param p1, "val"    # Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 110
    if-ne p1, p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 115
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 116
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 115
    goto :goto_0

    .line 119
    :cond_2
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 122
    goto :goto_0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v14, 0x2d

    const/16 v13, 0x30

    const/16 v12, 0x2e

    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 156
    iget v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    .line 157
    const-string v9, "INF"

    iput-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    .line 232
    :cond_0
    :goto_0
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v9

    .line 158
    :cond_1
    :try_start_1
    iget v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/high16 v10, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v9, v9, v10

    if-nez v9, :cond_2

    .line 159
    const-string v9, "-INF"

    iput-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 160
    :cond_2
    :try_start_2
    iget v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v10, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_3

    .line 161
    const-string v9, "NaN"

    iput-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_3
    iget v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_4

    .line 164
    const-string v9, "0.0E1"

    iput-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_4
    iget v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    .line 172
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    const/16 v10, 0x45

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 173
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    .line 175
    .local v5, "len":I
    add-int/lit8 v9, v5, 0x3

    new-array v0, v9, [C

    .line 176
    .local v0, "chars":[C
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v5, v0, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 178
    const/4 v9, 0x0

    aget-char v9, v0, v9

    if-ne v9, v14, :cond_6

    const/4 v2, 0x2

    .line 180
    .local v2, "edp":I
    :goto_1
    iget v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-gez v9, :cond_5

    iget v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_9

    .line 182
    :cond_5
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 184
    .local v1, "dp":I
    move v3, v1

    .local v3, "i":I
    :goto_2
    if-gt v3, v2, :cond_7

    .line 187
    const/16 v9, 0x2e

    aput-char v9, v0, v2

    .line 189
    :goto_3
    add-int/lit8 v9, v5, -0x1

    aget-char v9, v0, v9

    if-eq v9, v13, :cond_8

    .line 192
    add-int/lit8 v9, v5, -0x1

    aget-char v9, v0, v9

    if-ne v9, v12, :cond_d

    .line 193
    add-int/lit8 v5, v5, 0x1

    move v6, v5

    .line 195
    .end local v5    # "len":I
    .local v6, "len":I
    :goto_4
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "len":I
    .restart local v5    # "len":I
    const/16 v9, 0x45

    aput-char v9, v0, v6

    .line 197
    sub-int v8, v1, v2

    .line 200
    .local v8, "shift":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "len":I
    .restart local v6    # "len":I
    add-int/lit8 v9, v8, 0x30

    int-to-char v9, v9

    aput-char v9, v0, v5

    move v5, v6

    .line 228
    .end local v1    # "dp":I
    .end local v6    # "len":I
    .restart local v5    # "len":I
    :goto_5
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    goto/16 :goto_0

    .line 178
    .end local v2    # "edp":I
    .end local v3    # "i":I
    .end local v8    # "shift":I
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 185
    .restart local v1    # "dp":I
    .restart local v2    # "edp":I
    .restart local v3    # "i":I
    :cond_7
    add-int/lit8 v9, v3, -0x1

    aget-char v9, v0, v9

    aput-char v9, v0, v3

    .line 184
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 190
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 204
    .end local v1    # "dp":I
    .end local v3    # "i":I
    :cond_9
    add-int/lit8 v7, v2, 0x1

    .line 206
    .local v7, "nzp":I
    :goto_6
    aget-char v9, v0, v7

    if-eq v9, v13, :cond_a

    .line 209
    add-int/lit8 v9, v2, -0x1

    aget-char v10, v0, v7

    aput-char v10, v0, v9

    .line 210
    const/16 v9, 0x2e

    aput-char v9, v0, v2

    .line 212
    add-int/lit8 v3, v7, 0x1

    .restart local v3    # "i":I
    add-int/lit8 v4, v2, 0x1

    .local v4, "j":I
    :goto_7
    if-lt v3, v5, :cond_b

    .line 215
    sub-int v9, v7, v2

    sub-int/2addr v5, v9

    .line 217
    add-int/lit8 v9, v2, 0x1

    if-ne v5, v9, :cond_c

    .line 218
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "len":I
    .restart local v6    # "len":I
    const/16 v9, 0x30

    aput-char v9, v0, v5

    .line 220
    :goto_8
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "len":I
    .restart local v5    # "len":I
    const/16 v9, 0x45

    aput-char v9, v0, v6

    .line 221
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "len":I
    .restart local v6    # "len":I
    const/16 v9, 0x2d

    aput-char v9, v0, v5

    .line 223
    sub-int v8, v7, v2

    .line 226
    .restart local v8    # "shift":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "len":I
    .restart local v5    # "len":I
    add-int/lit8 v9, v8, 0x30

    int-to-char v9, v9

    aput-char v9, v0, v6

    goto :goto_5

    .line 207
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v8    # "shift":I
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 213
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_b
    aget-char v9, v0, v3

    aput-char v9, v0, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_c
    move v6, v5

    .end local v5    # "len":I
    .restart local v6    # "len":I
    goto :goto_8

    .end local v4    # "j":I
    .end local v6    # "len":I
    .end local v7    # "nzp":I
    .restart local v1    # "dp":I
    .restart local v5    # "len":I
    :cond_d
    move v6, v5

    .end local v5    # "len":I
    .restart local v6    # "len":I
    goto :goto_4
.end method
