.class Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;
.super Ljava/lang/Object;
.source "PrecisionDecimalDV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XPrecisionDecimal"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field fracDigits:I

.field fvalue:Ljava/lang/String;

.field intDigits:I

.field ivalue:Ljava/lang/String;

.field pvalue:I

.field sign:I

.field totalDigits:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    .line 39
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->totalDigits:I

    .line 41
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    .line 43
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    .line 51
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    .line 55
    const-string v0, "NaN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    .line 57
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    .line 59
    :cond_0
    const-string v0, "+INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "content":Ljava/lang/String;
    :cond_2
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    .line 64
    :goto_0
    return-void

    .line 63
    .restart local p1    # "content":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->initD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private compare(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I
    .locals 8
    .param p1, "val"    # Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    .prologue
    const/16 v7, 0x30

    .line 220
    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    if-nez v4, :cond_0

    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    if-eqz v4, :cond_9

    .line 221
    :cond_0
    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    if-ne v4, v5, :cond_1

    .line 222
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intComp(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I

    move-result v4

    .line 260
    :goto_0
    return v4

    .line 225
    :cond_1
    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v5, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    add-int/2addr v4, v5

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v6, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_3

    .line 226
    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v5, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    add-int/2addr v4, v5

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v6, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    add-int/2addr v5, v6

    if-le v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    goto :goto_0

    .line 229
    :cond_3
    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    if-le v4, v5, :cond_6

    .line 230
    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    sub-int v1, v4, v5

    .line 231
    .local v1, "expDiff":I
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 233
    .local v2, "fbuffer":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v1, :cond_4

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6, v7}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->compareDecimal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 234
    :cond_4
    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    if-ge v3, v4, :cond_5

    .line 235
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 233
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 239
    :cond_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 244
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "expDiff":I
    .end local v2    # "fbuffer":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    :cond_6
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    iget v5, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    sub-int v1, v4, v5

    .line 245
    .restart local v1    # "expDiff":I
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 246
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 247
    .restart local v2    # "fbuffer":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-lt v3, v1, :cond_7

    .line 255
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v5, v6, v7}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->compareDecimal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 248
    :cond_7
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    if-ge v3, v4, :cond_8

    .line 249
    iget-object v4, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 247
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 253
    :cond_8
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 260
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "expDiff":I
    .end local v2    # "fbuffer":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    :cond_9
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intComp(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I

    move-result v4

    goto/16 :goto_0
.end method

.method private compareDecimal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "iValue"    # Ljava/lang/String;
    .param p2, "fValue"    # Ljava/lang/String;
    .param p3, "otherIValue"    # Ljava/lang/String;
    .param p4, "otherFValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 280
    invoke-virtual {p1, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 281
    .local v0, "ret":I
    if-eqz v0, :cond_2

    .line 282
    if-lez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 282
    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v5

    .line 285
    goto :goto_0

    .line 287
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 288
    .local v1, "temp1":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 290
    .local v2, "temp2":Ljava/lang/StringBuffer;
    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->truncateTrailingZeros(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 292
    if-nez v0, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    if-gtz v0, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private compareFractionalPart(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I
    .locals 4
    .param p1, "oval"    # Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    .prologue
    .line 162
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const/4 v2, 0x0

    .line 169
    :goto_0
    return v2

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "temp1":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, "temp2":Ljava/lang/StringBuffer;
    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->truncateTrailingZeros(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private intComp(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I
    .locals 4
    .param p1, "val"    # Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    .prologue
    .line 269
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    if-eq v0, v1, :cond_1

    .line 270
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    .line 270
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->compareDecimal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private makeCanonical()V
    .locals 1

    .prologue
    .line 306
    const-string v0, "TBD by Working Group"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->canonical:Ljava/lang/String;

    .line 307
    return-void
.end method

.method private truncateTrailingZeros(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "fValue"    # Ljava/lang/StringBuffer;
    .param p2, "otherFValue"    # Ljava/lang/StringBuffer;

    .prologue
    const/16 v2, 0x30

    .line 173
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_2

    .line 179
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-gez v0, :cond_3

    .line 184
    :cond_1
    return-void

    .line 174
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 173
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 181
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 179
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I
    .locals 5
    .param p1, "val"    # Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 189
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    if-nez v3, :cond_1

    .line 190
    const/4 v0, 0x2

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v4, "INF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v4, "INF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 194
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 195
    goto :goto_0

    .line 196
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v3, "INF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 198
    goto :goto_0

    .line 202
    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v4, "-INF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v4, "-INF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 203
    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v2

    .line 204
    goto :goto_0

    .line 205
    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v3, "-INF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 206
    goto :goto_0

    .line 210
    :cond_7
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    if-eq v2, v3, :cond_8

    .line 211
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 213
    :cond_8
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->compare(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    if-ne p1, p0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v1

    .line 151
    :cond_1
    instance-of v3, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    if-nez v3, :cond_2

    move v1, v2

    .line 152
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 153
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    .line 155
    .local v0, "oval":Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->compareTo(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method initD(Ljava/lang/String;)V
    .locals 11
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x2e

    const/4 v9, 0x0

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 68
    .local v6, "len":I
    if-nez v6, :cond_0

    .line 69
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7}, Ljava/lang/NumberFormatException;-><init>()V

    throw v7

    .line 73
    :cond_0
    const/4 v5, 0x0

    .local v5, "intStart":I
    const/4 v4, 0x0

    .local v4, "intEnd":I
    const/4 v3, 0x0

    .local v3, "fracStart":I
    const/4 v1, 0x0

    .line 76
    .local v1, "fracEnd":I
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_4

    .line 78
    const/4 v5, 0x1

    .line 86
    :cond_1
    :goto_0
    move v0, v5

    .line 87
    .local v0, "actualIntStart":I
    :goto_1
    if-ge v0, v6, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-eq v7, v8, :cond_5

    .line 92
    :cond_2
    move v4, v0

    :goto_2
    if-ge v4, v6, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_6

    .line 95
    :cond_3
    if-ge v4, v6, :cond_8

    .line 97
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x45

    if-eq v7, v8, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x65

    if-eq v7, v8, :cond_7

    .line 98
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7}, Ljava/lang/NumberFormatException;-><init>()V

    throw v7

    .line 80
    .end local v0    # "actualIntStart":I
    :cond_4
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1

    .line 81
    const/4 v5, 0x1

    .line 82
    const/4 v7, -0x1

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    goto :goto_0

    .line 88
    .restart local v0    # "actualIntStart":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 100
    :cond_7
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_a

    .line 102
    add-int/lit8 v3, v4, 0x1

    .line 106
    move v1, v3

    .line 107
    :goto_3
    if-ge v1, v6, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_9

    .line 116
    :cond_8
    :goto_4
    if-ne v5, v4, :cond_b

    if-ne v3, v1, :cond_b

    .line 117
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7}, Ljava/lang/NumberFormatException;-><init>()V

    throw v7

    .line 108
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 111
    :cond_a
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    goto :goto_4

    .line 125
    :cond_b
    move v2, v3

    .local v2, "fracPos":I
    :goto_5
    if-lt v2, v1, :cond_e

    .line 130
    sub-int v7, v4, v0

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    .line 131
    sub-int v7, v1, v3

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    .line 133
    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    if-lez v7, :cond_c

    .line 134
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    .line 137
    :cond_c
    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    if-lez v7, :cond_d

    .line 138
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    .line 139
    if-ge v1, v6, :cond_d

    .line 140
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    .line 143
    :cond_d
    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v8, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    add-int/2addr v7, v8

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->totalDigits:I

    .line 144
    return-void

    .line 126
    :cond_e
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_f

    .line 127
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7}, Ljava/lang/NumberFormatException;-><init>()V

    throw v7

    .line 125
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public isIdentical(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)Z
    .locals 3
    .param p1, "decimal"    # Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    .prologue
    const/4 v0, 0x1

    .line 314
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v2, "INF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v2, "-INF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v2, "NaN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 317
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    if-ne v1, v2, :cond_2

    .line 318
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->canonical:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 299
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->makeCanonical()V

    .line 301
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
