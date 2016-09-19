.class Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;
.super Ljava/lang/Object;
.source "DecimalDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/XSDecimal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XDecimal"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field fracDigits:I

.field fvalue:Ljava/lang/String;

.field intDigits:I

.field integer:Z

.field ivalue:Ljava/lang/String;

.field sign:I

.field totalDigits:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    .line 69
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    .line 71
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    .line 73
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    .line 82
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->initD(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "integer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    .line 69
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    .line 71
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    .line 73
    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    .line 85
    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->initI(Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->initD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private intComp(Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;)I
    .locals 5
    .param p1, "val"    # Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 242
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    if-eq v3, v4, :cond_2

    .line 243
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    if-le v3, v4, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 243
    goto :goto_0

    .line 244
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 245
    .local v0, "ret":I
    if-eqz v0, :cond_3

    .line 246
    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 247
    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 248
    if-nez v0, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private makeCanonical()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 259
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v1, :cond_1

    .line 260
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    if-eqz v1, :cond_0

    .line 261
    const-string v1, "0"

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;

    .line 288
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string v1, "0.0"

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;

    goto :goto_0

    .line 266
    :cond_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-lez v1, :cond_2

    .line 267
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;

    goto :goto_0

    .line 271
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 272
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 273
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 274
    :cond_3
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    if-eqz v1, :cond_5

    .line 275
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    :goto_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    if-nez v1, :cond_4

    .line 279
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 280
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-eqz v1, :cond_6

    .line 281
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;

    goto :goto_0

    .line 277
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 284
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method


# virtual methods
.method public compareTo(Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;)I
    .locals 2
    .param p1, "val"    # Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;

    .prologue
    .line 235
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-eq v0, v1, :cond_1

    .line 236
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    .line 236
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 237
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_2

    .line 238
    const/4 v0, 0x0

    goto :goto_0

    .line 239
    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intComp(Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;)I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    if-ne p1, p0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v1

    .line 222
    :cond_1
    instance-of v3, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;

    if-nez v3, :cond_2

    move v1, v2

    .line 223
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 224
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;

    .line 226
    .local v0, "oval":Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    iget v4, v0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 227
    goto :goto_0

    .line 228
    :cond_3
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-eqz v3, :cond_0

    .line 231
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iget v4, v0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    iget v4, v0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-ne v3, v4, :cond_4

    .line 232
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 231
    goto :goto_0
.end method

.method public getBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 294
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 298
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 301
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_1

    .line 302
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 307
    :goto_0
    return-object v0

    .line 304
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 305
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_2
    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 350
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 353
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_1

    .line 354
    const/4 v0, 0x0

    .line 359
    :goto_0
    return v0

    .line 356
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 357
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    goto :goto_0

    .line 359
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    goto :goto_0
.end method

.method public getInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 324
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 327
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_1

    .line 328
    const/4 v0, 0x0

    .line 333
    :goto_0
    return v0

    .line 330
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 331
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 333
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 311
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 314
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_1

    .line 315
    const-wide/16 v0, 0x0

    .line 320
    :goto_0
    return-wide v0

    .line 317
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 318
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 320
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 337
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 340
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_1

    .line 341
    const/4 v0, 0x0

    .line 346
    :goto_0
    return v0

    .line 343
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 344
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    goto :goto_0

    .line 346
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

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
    const/16 v10, 0x30

    const/4 v9, 0x0

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 92
    .local v6, "len":I
    if-nez v6, :cond_0

    .line 93
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7}, Ljava/lang/NumberFormatException;-><init>()V

    throw v7

    .line 97
    :cond_0
    const/4 v5, 0x0

    .local v5, "intStart":I
    const/4 v4, 0x0

    .local v4, "intEnd":I
    const/4 v3, 0x0

    .local v3, "fracStart":I
    const/4 v1, 0x0

    .line 100
    .local v1, "fracEnd":I
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_4

    .line 102
    const/4 v5, 0x1

    .line 111
    :cond_1
    :goto_0
    move v0, v5

    .line 112
    .local v0, "actualIntStart":I
    :goto_1
    if-ge v0, v6, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_5

    .line 117
    :cond_2
    move v4, v0

    .line 118
    :goto_2
    if-ge v4, v6, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_6

    .line 122
    :cond_3
    if-ge v4, v6, :cond_8

    .line 124
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_7

    .line 125
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7}, Ljava/lang/NumberFormatException;-><init>()V

    throw v7

    .line 104
    .end local v0    # "actualIntStart":I
    :cond_4
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1

    .line 106
    const/4 v5, 0x1

    .line 107
    const/4 v7, -0x1

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    goto :goto_0

    .line 113
    .restart local v0    # "actualIntStart":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 128
    :cond_7
    add-int/lit8 v3, v4, 0x1

    .line 129
    move v1, v6

    .line 133
    :cond_8
    if-ne v5, v4, :cond_a

    if-ne v3, v1, :cond_a

    .line 134
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7}, Ljava/lang/NumberFormatException;-><init>()V

    throw v7

    .line 138
    :cond_9
    add-int/lit8 v1, v1, -0x1

    .line 137
    :cond_a
    if-le v1, v3, :cond_b

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_9

    .line 142
    :cond_b
    move v2, v3

    .local v2, "fracPos":I
    :goto_3
    if-lt v2, v1, :cond_d

    .line 147
    sub-int v7, v4, v0

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    .line 148
    sub-int v7, v1, v3

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    .line 149
    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iget v8, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    add-int/2addr v7, v8

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    .line 151
    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    if-lez v7, :cond_f

    .line 152
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    .line 153
    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-lez v7, :cond_c

    .line 154
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    .line 165
    :cond_c
    :goto_4
    return-void

    .line 143
    :cond_d
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_e

    .line 144
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7}, Ljava/lang/NumberFormatException;-><init>()V

    throw v7

    .line 142
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 157
    :cond_f
    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-lez v7, :cond_10

    .line 158
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    goto :goto_4

    .line 162
    :cond_10
    iput v9, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    goto :goto_4
.end method

.method initI(Ljava/lang/String;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 168
    .local v3, "len":I
    if-nez v3, :cond_0

    .line 169
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    .line 172
    :cond_0
    const/4 v2, 0x0

    .local v2, "intStart":I
    const/4 v1, 0x0

    .line 175
    .local v1, "intEnd":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_4

    .line 177
    const/4 v2, 0x1

    .line 186
    :cond_1
    :goto_0
    move v0, v2

    .line 187
    .local v0, "actualIntStart":I
    :goto_1
    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_5

    .line 192
    :cond_2
    move v1, v0

    .line 193
    :goto_2
    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_6

    .line 197
    :cond_3
    if-ge v1, v3, :cond_7

    .line 198
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    .line 179
    .end local v0    # "actualIntStart":I
    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    .line 181
    const/4 v2, 0x1

    .line 182
    const/4 v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    goto :goto_0

    .line 188
    .restart local v0    # "actualIntStart":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 201
    :cond_7
    if-ne v2, v1, :cond_8

    .line 202
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    .line 204
    :cond_8
    sub-int v4, v1, v0

    iput v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    .line 205
    iput v6, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    .line 206
    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iput v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    .line 208
    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    if-lez v4, :cond_9

    .line 209
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    .line 216
    :goto_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    .line 217
    return-void

    .line 213
    :cond_9
    iput v6, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    goto :goto_3
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->makeCanonical()V

    .line 255
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
