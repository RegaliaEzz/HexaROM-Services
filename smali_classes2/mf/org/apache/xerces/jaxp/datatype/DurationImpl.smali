.class Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;
.super Lmf/javax/xml/datatype/Duration;
.source "DurationImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FACTORS:[Ljava/math/BigDecimal;

.field private static final FIELDS:[Lmf/javax/xml/datatype/DatatypeConstants$Field;

.field private static final TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

.field private static final ZERO:Ljava/math/BigDecimal;

.field private static final serialVersionUID:J = -0x24c6c86e5ffadfb3L


# instance fields
.field private final days:Ljava/math/BigInteger;

.field private final hours:Ljava/math/BigInteger;

.field private final minutes:Ljava/math/BigInteger;

.field private final months:Ljava/math/BigInteger;

.field private final seconds:Ljava/math/BigDecimal;

.field private final signum:I

.field private final years:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 111
    const/4 v0, 0x6

    new-array v0, v0, [Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .line 112
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v4

    .line 113
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v3

    .line 114
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v5

    .line 115
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v6

    .line 116
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 117
    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v2, v0, v1

    .line 111
    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FIELDS:[Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .line 123
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    .line 658
    new-array v0, v7, [Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 659
    const-string v1, "1696-09-01T00:00:00Z"

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    aput-object v1, v0, v4

    .line 660
    const-string v1, "1697-02-01T00:00:00Z"

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    aput-object v1, v0, v3

    .line 661
    const-string v1, "1903-03-01T00:00:00Z"

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    aput-object v1, v0, v5

    .line 662
    const-string v1, "1903-07-01T00:00:00Z"

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    aput-object v1, v0, v6

    .line 658
    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 1598
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/math/BigDecimal;

    .line 1599
    const-wide/16 v2, 0xc

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1601
    const-wide/16 v2, 0x18

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1602
    const-wide/16 v2, 0x3c

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1603
    const-wide/16 v2, 0x3c

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v7

    .line 1598
    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    .line 1604
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 9
    .param p1, "durationInMilliSeconds"    # J

    .prologue
    .line 351
    invoke-direct {p0}, Lmf/javax/xml/datatype/Duration;-><init>()V

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "is0x8000000000000000L":Z
    move-wide v2, p1

    .line 356
    .local v2, "l":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 357
    const/4 v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    .line 372
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    .line 373
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    .line 376
    const-wide/32 v4, 0xea60

    rem-long v4, v2, v4

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_1
    int-to-long v6, v1

    add-long/2addr v4, v6

    const/4 v1, 0x3

    invoke-static {v4, v5, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    .line 375
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    .line 378
    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    .line 379
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    .line 381
    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    .line 382
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    const/4 v1, 0x0

    :goto_3
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    .line 384
    const-wide/16 v4, 0x18

    div-long/2addr v2, v4

    .line 385
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    const/4 v1, 0x0

    :goto_4
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    .line 386
    return-void

    .line 359
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 360
    const/4 v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    .line 361
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 363
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 364
    const/4 v0, 0x1

    .line 366
    :cond_1
    const-wide/16 v4, -0x1

    mul-long/2addr v2, v4

    .line 367
    goto :goto_0

    .line 369
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    goto :goto_0

    .line 376
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 379
    :cond_4
    const-wide/16 v4, 0x3c

    rem-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_2

    .line 382
    :cond_5
    const-wide/16 v4, 0x18

    rem-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_3

    .line 385
    :cond_6
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_4
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 17
    .param p1, "lexicalRepresentation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-direct/range {p0 .. p0}, Lmf/javax/xml/datatype/Duration;-><init>()V

    .line 424
    if-nez p1, :cond_0

    .line 425
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 428
    :cond_0
    move-object/from16 v8, p1

    .line 430
    .local v8, "s":Ljava/lang/String;
    const/4 v14, 0x1

    new-array v5, v14, [I

    .line 431
    .local v5, "idx":[I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 432
    .local v6, "length":I
    const/4 v13, 0x0

    .line 434
    .local v13, "timeRequired":Z
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v5, v14

    .line 435
    const/4 v14, 0x0

    aget v14, v5, v14

    if-eq v6, v14, :cond_1

    const/4 v14, 0x0

    aget v14, v5, v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2d

    if-ne v14, v15, :cond_1

    .line 436
    const/4 v14, 0x0

    aget v15, v5, v14

    add-int/lit8 v15, v15, 0x1

    aput v15, v5, v14

    .line 437
    const/4 v7, 0x0

    .line 443
    .local v7, "positive":Z
    :goto_0
    const/4 v14, 0x0

    aget v14, v5, v14

    if-eq v6, v14, :cond_2

    const/4 v14, 0x0

    aget v15, v5, v14

    add-int/lit8 v16, v15, 0x1

    aput v16, v5, v14

    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x50

    if-eq v14, v15, :cond_2

    .line 444
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 440
    .end local v7    # "positive":Z
    :cond_1
    const/4 v7, 0x1

    .restart local v7    # "positive":Z
    goto :goto_0

    .line 451
    :cond_2
    const/4 v1, 0x0

    .line 452
    .local v1, "dateLen":I
    const/4 v14, 0x3

    new-array v3, v14, [Ljava/lang/String;

    .line 453
    .local v3, "dateParts":[Ljava/lang/String;
    const/4 v14, 0x3

    new-array v4, v14, [I

    .line 454
    .local v4, "datePartsIndex":[I
    :goto_1
    const/4 v14, 0x0

    aget v14, v5, v14

    if-eq v6, v14, :cond_3

    .line 455
    const/4 v14, 0x0

    aget v14, v5, v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->isDigit(C)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 456
    const/4 v14, 0x3

    .line 454
    if-lt v1, v14, :cond_6

    .line 461
    :cond_3
    const/4 v14, 0x0

    aget v14, v5, v14

    if-eq v6, v14, :cond_4

    .line 462
    const/4 v14, 0x0

    aget v15, v5, v14

    add-int/lit8 v16, v15, 0x1

    aput v16, v5, v14

    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x54

    if-ne v14, v15, :cond_7

    .line 463
    const/4 v13, 0x1

    .line 470
    :cond_4
    const/4 v9, 0x0

    .line 471
    .local v9, "timeLen":I
    const/4 v14, 0x3

    new-array v11, v14, [Ljava/lang/String;

    .line 472
    .local v11, "timeParts":[Ljava/lang/String;
    const/4 v14, 0x3

    new-array v12, v14, [I

    .line 473
    .local v12, "timePartsIndex":[I
    :goto_2
    const/4 v14, 0x0

    aget v14, v5, v14

    if-eq v6, v14, :cond_5

    .line 474
    const/4 v14, 0x0

    aget v14, v5, v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->isDigitOrPeriod(C)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 475
    const/4 v14, 0x3

    .line 473
    if-lt v9, v14, :cond_8

    .line 480
    :cond_5
    if-eqz v13, :cond_9

    if-nez v9, :cond_9

    .line 481
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 457
    .end local v9    # "timeLen":I
    .end local v11    # "timeParts":[Ljava/lang/String;
    .end local v12    # "timePartsIndex":[I
    :cond_6
    const/4 v14, 0x0

    aget v14, v5, v14

    aput v14, v4, v1

    .line 458
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "dateLen":I
    .local v2, "dateLen":I
    invoke-static {v8, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parsePiece(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v1

    move v1, v2

    .end local v2    # "dateLen":I
    .restart local v1    # "dateLen":I
    goto :goto_1

    .line 466
    :cond_7
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 476
    .restart local v9    # "timeLen":I
    .restart local v11    # "timeParts":[Ljava/lang/String;
    .restart local v12    # "timePartsIndex":[I
    :cond_8
    const/4 v14, 0x0

    aget v14, v5, v14

    aput v14, v12, v9

    .line 477
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "timeLen":I
    .local v10, "timeLen":I
    invoke-static {v8, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parsePiece(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v9

    move v9, v10

    .end local v10    # "timeLen":I
    .restart local v9    # "timeLen":I
    goto :goto_2

    .line 484
    :cond_9
    const/4 v14, 0x0

    aget v14, v5, v14

    if-eq v6, v14, :cond_a

    .line 485
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 487
    :cond_a
    if-nez v1, :cond_b

    if-nez v9, :cond_b

    .line 488
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 493
    :cond_b
    const-string v14, "YMD"

    invoke-static {v8, v3, v4, v1, v14}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V

    .line 494
    const-string v14, "HMS"

    invoke-static {v8, v11, v12, v9, v14}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V

    .line 497
    const/4 v14, 0x0

    aget-object v14, v3, v14

    const/4 v15, 0x0

    aget v15, v4, v15

    invoke-static {v8, v14, v15}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    .line 498
    const/4 v14, 0x1

    aget-object v14, v3, v14

    const/4 v15, 0x1

    aget v15, v4, v15

    invoke-static {v8, v14, v15}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    .line 499
    const/4 v14, 0x2

    aget-object v14, v3, v14

    const/4 v15, 0x2

    aget v15, v4, v15

    invoke-static {v8, v14, v15}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    .line 500
    const/4 v14, 0x0

    aget-object v14, v11, v14

    const/4 v15, 0x0

    aget v15, v12, v15

    invoke-static {v8, v14, v15}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    .line 501
    const/4 v14, 0x1

    aget-object v14, v11, v14

    const/4 v15, 0x1

    aget v15, v12, v15

    invoke-static {v8, v14, v15}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    .line 502
    const/4 v14, 0x2

    aget-object v14, v11, v14

    const/4 v15, 0x2

    aget v15, v12, v15

    invoke-static {v8, v14, v15}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigDecimal(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    .line 503
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->calcSignum(Z)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    .line 504
    return-void
.end method

.method protected constructor <init>(ZIIIIII)V
    .locals 8
    .param p1, "isPositive"    # Z
    .param p2, "years"    # I
    .param p3, "months"    # I
    .param p4, "days"    # I
    .param p5, "hours"    # I
    .param p6, "minutes"    # I
    .param p7, "seconds"    # I

    .prologue
    .line 307
    .line 309
    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 310
    invoke-static {p3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 311
    invoke-static {p4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 312
    invoke-static {p5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 313
    invoke-static {p6}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 314
    if-eqz p7, :cond_0

    int-to-long v0, p7

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v7

    :goto_0
    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    .line 315
    return-void

    .line 314
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V
    .locals 3
    .param p1, "isPositive"    # Z
    .param p2, "years"    # Ljava/math/BigInteger;
    .param p3, "months"    # Ljava/math/BigInteger;
    .param p4, "days"    # Ljava/math/BigInteger;
    .param p5, "hours"    # Ljava/math/BigInteger;
    .param p6, "minutes"    # Ljava/math/BigInteger;
    .param p7, "seconds"    # Ljava/math/BigDecimal;

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-direct {p0}, Lmf/javax/xml/datatype/Duration;-><init>()V

    .line 226
    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    .line 227
    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    .line 228
    iput-object p4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    .line 229
    iput-object p5, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    .line 230
    iput-object p6, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    .line 231
    iput-object p7, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    .line 233
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->calcSignum(Z)I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    .line 236
    if-nez p2, :cond_0

    .line 237
    if-nez p3, :cond_0

    .line 238
    if-nez p4, :cond_0

    .line 239
    if-nez p5, :cond_0

    .line 240
    if-nez p6, :cond_0

    .line 241
    if-nez p7, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 244
    const-string v1, "AllFieldsNull"

    invoke-static {v2, v1, v2}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p2, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    .line 248
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p3, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    .line 249
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p4, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    .line 250
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p5, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    .line 251
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p6, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    .line 252
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p7, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigDecimal;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    .line 253
    return-void
.end method

.method private static alignSigns([Ljava/math/BigDecimal;II)V
    .locals 7
    .param p0, "buf"    # [Ljava/math/BigDecimal;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1710
    :cond_0
    const/4 v3, 0x0

    .line 1711
    .local v3, "touched":Z
    const/4 v2, 0x0

    .line 1713
    .local v2, "s":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-lt v1, p2, :cond_1

    .line 1735
    if-nez v3, :cond_0

    .line 1736
    return-void

    .line 1714
    :cond_1
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    mul-int/2addr v4, v2

    if-gez v4, :cond_3

    .line 1716
    const/4 v3, 0x1

    .line 1720
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v4

    .line 1721
    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    add-int/lit8 v6, v1, -0x1

    aget-object v5, v5, v6

    .line 1722
    const/4 v6, 0x0

    .line 1720
    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1723
    .local v0, "borrow":Ljava/math/BigDecimal;
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    if-lez v4, :cond_2

    .line 1724
    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1728
    :cond_2
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v5, v1, -0x1

    aget-object v5, p0, v5

    invoke-virtual {v5, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    aput-object v5, p0, v4

    .line 1729
    aget-object v4, p0, v1

    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    add-int/lit8 v6, v1, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    aput-object v4, p0, v1

    .line 1731
    .end local v0    # "borrow":Ljava/math/BigDecimal;
    :cond_3
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    if-eqz v4, :cond_4

    .line 1732
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/math/BigDecimal;->signum()I

    move-result v2

    .line 1713
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private calcSignum(Z)I
    .locals 1
    .param p1, "isPositive"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_6

    .line 181
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_6

    .line 182
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_6

    .line 183
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_6

    .line 184
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_6

    .line 185
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_6

    .line 186
    :cond_5
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    .line 189
    :cond_6
    if-eqz p1, :cond_7

    .line 190
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    :cond_7
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private compareDates(Lmf/javax/xml/datatype/Duration;Lmf/javax/xml/datatype/Duration;)I
    .locals 9
    .param p1, "duration1"    # Lmf/javax/xml/datatype/Duration;
    .param p2, "duration2"    # Lmf/javax/xml/datatype/Duration;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x2

    .line 884
    const/4 v0, 0x2

    .line 885
    .local v0, "resultA":I
    const/4 v1, 0x2

    .line 887
    .local v1, "resultB":I
    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 888
    .local v2, "tempA":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 891
    .local v3, "tempB":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    invoke-virtual {v2, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 892
    invoke-virtual {v3, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 893
    invoke-virtual {v2, v3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v0

    .line 894
    if-ne v0, v4, :cond_1

    .line 928
    :cond_0
    :goto_0
    return v4

    .line 898
    :cond_1
    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tempA":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    check-cast v2, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 899
    .restart local v2    # "tempA":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "tempB":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    check-cast v3, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 901
    .restart local v3    # "tempB":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    invoke-virtual {v2, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 902
    invoke-virtual {v3, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 903
    invoke-virtual {v2, v3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v1

    .line 904
    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v0

    .line 905
    if-eq v0, v4, :cond_0

    .line 909
    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tempA":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    check-cast v2, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 910
    .restart local v2    # "tempA":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "tempB":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    check-cast v3, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 912
    .restart local v3    # "tempB":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    invoke-virtual {v2, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 913
    invoke-virtual {v3, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 914
    invoke-virtual {v2, v3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v1

    .line 915
    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v0

    .line 916
    if-eq v0, v4, :cond_0

    .line 920
    sget-object v4, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tempA":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    check-cast v2, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 921
    .restart local v2    # "tempA":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    sget-object v4, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "tempB":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    check-cast v3, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 923
    .restart local v3    # "tempB":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    invoke-virtual {v2, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 924
    invoke-virtual {v3, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 925
    invoke-virtual {v2, v3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v1

    .line 926
    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v0

    move v4, v0

    .line 928
    goto :goto_0
.end method

.method private compareResults(II)I
    .locals 1
    .param p1, "resultA"    # I
    .param p2, "resultB"    # I

    .prologue
    const/4 v0, 0x2

    .line 933
    if-ne p2, v0, :cond_1

    move p1, v0

    .line 939
    .end local p1    # "resultA":I
    :cond_0
    :goto_0
    return p1

    .line 936
    .restart local p1    # "resultA":I
    :cond_1
    if-eq p1, p2, :cond_0

    move p1, v0

    .line 937
    goto :goto_0
.end method

.method private static getCalendarTimeInMillis(Ljava/util/Calendar;)J
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 1954
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getFieldAsBigDecimal(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/math/BigDecimal;
    .locals 2
    .param p1, "f"    # Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .prologue
    .line 1556
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_1

    .line 1557
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    .line 1558
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    .line 1570
    :goto_0
    return-object v1

    .line 1561
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0

    .line 1565
    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 1566
    .local v0, "bi":Ljava/math/BigInteger;
    if-nez v0, :cond_2

    .line 1567
    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0

    .line 1570
    :cond_2
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method private getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I
    .locals 2
    .param p1, "field"    # Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .prologue
    .line 1275
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    .line 1276
    .local v0, "n":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 1277
    const/4 v1, 0x0

    .line 1280
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 515
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDigitOrPeriod(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 526
    invoke-static {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V
    .locals 7
    .param p0, "whole"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;
    .param p2, "partsIndex"    # [I
    .param p3, "len"    # I
    .param p4, "tokens"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 574
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    .line 575
    .local v1, "idx":I
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 595
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gez v1, :cond_4

    .line 598
    return-void

    .line 576
    :cond_0
    aget-object v4, p1, v0

    if-nez v4, :cond_1

    .line 577
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 581
    :cond_1
    aget-object v4, p1, v0

    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 582
    add-int/lit8 v5, v1, -0x1

    .line 580
    invoke-virtual {p4, v4, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 583
    .local v3, "nidx":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 584
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 588
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .local v2, "j":I
    :goto_2
    if-lt v2, v1, :cond_3

    .line 591
    move v1, v3

    .line 592
    aget-object v4, p1, v0

    aput-object v4, p1, v1

    .line 593
    aget v4, p2, v0

    aput v4, p2, v1

    .line 575
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 589
    :cond_3
    aput-object v6, p1, v2

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 596
    .end local v2    # "j":I
    .end local v3    # "nidx":I
    :cond_4
    aput-object v6, p1, v1

    .line 595
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private static parseBigDecimal(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "whole"    # Ljava/lang/String;
    .param p1, "part"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 643
    if-nez p1, :cond_0

    .line 644
    const/4 v0, 0x0

    .line 649
    :goto_0
    return-object v0

    .line 646
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 649
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;
    .locals 2
    .param p0, "whole"    # Ljava/lang/String;
    .param p1, "part"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 616
    if-nez p1, :cond_0

    .line 617
    const/4 v0, 0x0

    .line 621
    :goto_0
    return-object v0

    .line 619
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 621
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parsePiece(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4
    .param p0, "whole"    # Ljava/lang/String;
    .param p1, "idx"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 541
    aget v0, p1, v3

    .line 542
    .local v0, "start":I
    :goto_0
    aget v1, p1, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 543
    aget v1, p1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->isDigitOrPeriod(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 546
    :cond_0
    aget v1, p1, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 547
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 544
    :cond_1
    aget v1, p1, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v3

    goto :goto_0

    .line 550
    :cond_2
    aget v1, p1, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v3

    .line 552
    aget v1, p1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .locals 0
    .param p0, "value"    # Ljava/math/BigDecimal;
    .param p1, "signum"    # I

    .prologue
    .line 1765
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    .line 1766
    :cond_0
    sget-object p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    .line 1771
    .end local p0    # "value":Ljava/math/BigDecimal;
    :cond_1
    :goto_0
    return-object p0

    .line 1768
    .restart local p0    # "value":Ljava/math/BigDecimal;
    :cond_2
    if-gtz p1, :cond_1

    .line 1771
    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0
.end method

.method private static sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/math/BigInteger;
    .param p1, "signum"    # I

    .prologue
    .line 1747
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 1748
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    .line 1753
    :goto_0
    return-object v0

    .line 1750
    :cond_1
    if-lez p1, :cond_2

    .line 1751
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 1753
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method private static testNonNegative(Ljava/math/BigDecimal;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V
    .locals 6
    .param p0, "n"    # Ljava/math/BigDecimal;
    .param p1, "f"    # Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .prologue
    .line 278
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 281
    const/4 v1, 0x0

    const-string v2, "NegativeField"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    return-void
.end method

.method private static testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V
    .locals 6
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "f"    # Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .prologue
    .line 263
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 265
    const/4 v1, 0x0

    const-string v2, "NegativeField"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    return-void
.end method

.method private static toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;
    .locals 1
    .param p0, "value"    # Ljava/math/BigDecimal;
    .param p1, "canBeNull"    # Z

    .prologue
    .line 1586
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 1587
    const/4 v0, 0x0

    .line 1590
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method private toString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 7
    .param p1, "bd"    # Ljava/math/BigDecimal;

    .prologue
    .line 1017
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1018
    .local v3, "intString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    .line 1020
    .local v4, "scale":I
    if-nez v4, :cond_0

    .line 1042
    .end local v3    # "intString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1026
    .restart local v3    # "intString":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v2, v5, v4

    .line 1027
    .local v2, "insertionPoint":I
    if-nez v2, :cond_1

    .line 1028
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1030
    :cond_1
    if-lez v2, :cond_2

    .line 1031
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1032
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v5, 0x2e

    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 1042
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1035
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    rsub-int/lit8 v5, v2, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1036
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    const-string v5, "0."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1037
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    neg-int v5, v2

    if-lt v1, v5, :cond_3

    .line 1040
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1038
    :cond_3
    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1037
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static wrap(I)Ljava/math/BigInteger;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 326
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 327
    const/4 v0, 0x0

    .line 331
    :goto_0
    return-object v0

    :cond_0
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1966
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/SerializedDuration;

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/SerializedDuration;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(Lmf/javax/xml/datatype/Duration;)Lmf/javax/xml/datatype/Duration;
    .locals 12
    .param p1, "rhs"    # Lmf/javax/xml/datatype/Duration;

    .prologue
    .line 1657
    move-object v10, p0

    .line 1658
    .local v10, "lhs":Lmf/javax/xml/datatype/Duration;
    const/4 v0, 0x6

    new-array v8, v0, [Ljava/math/BigDecimal;

    .line 1660
    .local v8, "buf":[Ljava/math/BigDecimal;
    const/4 v1, 0x0

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 1661
    invoke-virtual {v10}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    .line 1660
    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v2

    .line 1661
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-static {v0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1660
    aput-object v0, v8, v1

    .line 1662
    const/4 v1, 0x1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 1663
    invoke-virtual {v10}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    .line 1662
    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v2

    .line 1663
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-static {v0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1662
    aput-object v0, v8, v1

    .line 1664
    const/4 v1, 0x2

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 1665
    invoke-virtual {v10}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    .line 1664
    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v2

    .line 1665
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-static {v0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1664
    aput-object v0, v8, v1

    .line 1666
    const/4 v1, 0x3

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 1667
    invoke-virtual {v10}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    .line 1666
    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v2

    .line 1667
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-static {v0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1666
    aput-object v0, v8, v1

    .line 1668
    const/4 v1, 0x4

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 1669
    invoke-virtual {v10}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    .line 1668
    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v2

    .line 1669
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-static {v0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1668
    aput-object v0, v8, v1

    .line 1670
    const/4 v1, 0x5

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    .line 1671
    invoke-virtual {v10}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    .line 1670
    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v2

    .line 1671
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-static {v0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1670
    aput-object v0, v8, v1

    .line 1674
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v8, v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->alignSigns([Ljava/math/BigDecimal;II)V

    .line 1675
    const/4 v0, 0x2

    const/4 v1, 0x6

    invoke-static {v8, v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->alignSigns([Ljava/math/BigDecimal;II)V

    .line 1678
    const/4 v11, 0x0

    .line 1679
    .local v11, "s":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v0, 0x6

    if-lt v9, v0, :cond_0

    .line 1688
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    .line 1689
    if-ltz v11, :cond_3

    const/4 v1, 0x1

    .line 1690
    :goto_1
    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-static {v2, v11}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v3

    .line 1691
    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v2}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v2

    if-nez v2, :cond_4

    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v2}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    .line 1690
    :goto_2
    invoke-static {v3, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v2

    .line 1692
    const/4 v3, 0x1

    aget-object v3, v8, v3

    invoke-static {v3, v11}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v4

    .line 1693
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v3}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v3

    if-nez v3, :cond_5

    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v3}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    .line 1692
    :goto_3
    invoke-static {v4, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v3

    .line 1694
    const/4 v4, 0x2

    aget-object v4, v8, v4

    invoke-static {v4, v11}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v5

    .line 1695
    sget-object v4, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v4}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    if-nez v4, :cond_6

    sget-object v4, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v4}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    .line 1694
    :goto_4
    invoke-static {v5, v4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v4

    .line 1696
    const/4 v5, 0x3

    aget-object v5, v8, v5

    invoke-static {v5, v11}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v6

    .line 1697
    sget-object v5, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v5}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    if-nez v5, :cond_7

    sget-object v5, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v5}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    if-nez v5, :cond_7

    const/4 v5, 0x1

    .line 1696
    :goto_5
    invoke-static {v6, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v5

    .line 1698
    const/4 v6, 0x4

    aget-object v6, v8, v6

    invoke-static {v6, v11}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v7

    .line 1699
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v6}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v6

    if-nez v6, :cond_8

    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v6}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v6

    if-nez v6, :cond_8

    const/4 v6, 0x1

    .line 1698
    :goto_6
    invoke-static {v7, v6}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v6

    .line 1700
    const/4 v7, 0x5

    aget-object v7, v8, v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    if-nez v7, :cond_9

    .line 1701
    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v7}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v7

    if-nez v7, :cond_9

    .line 1702
    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v7}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v7

    if-nez v7, :cond_9

    const/4 v7, 0x0

    .line 1688
    :goto_7
    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0

    .line 1680
    :cond_0
    aget-object v0, v8, v9

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    mul-int/2addr v0, v11

    if-gez v0, :cond_1

    .line 1681
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1683
    :cond_1
    if-nez v11, :cond_2

    .line 1684
    aget-object v0, v8, v9

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v11

    .line 1679
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1689
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1691
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1693
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1695
    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    .line 1697
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 1699
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 1702
    :cond_9
    const/4 v7, 0x5

    aget-object v7, v8, v7

    invoke-static {v7, v11}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_7
.end method

.method public addTo(Ljava/util/Calendar;)V
    .locals 6
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v5, 0x1

    .line 1902
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v2

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v2, v3

    invoke-virtual {p1, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 1903
    const/4 v2, 0x2

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1904
    const/4 v2, 0x5

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1905
    const/16 v2, 0xa

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getHours()I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1906
    const/16 v2, 0xc

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMinutes()I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1907
    const/16 v2, 0xd

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSeconds()I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1909
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v2, :cond_0

    .line 1911
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1912
    .local v0, "fraction":Ljava/math/BigDecimal;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    .line 1913
    .local v1, "millisec":I
    const/16 v2, 0xe

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1915
    .end local v0    # "fraction":Ljava/math/BigDecimal;
    .end local v1    # "millisec":I
    :cond_0
    return-void
.end method

.method public addTo(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 1939
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1940
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1941
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    .line 1942
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 1943
    return-void
.end method

.method public compare(Lmf/javax/xml/datatype/Duration;)I
    .locals 21
    .param p1, "rhs"    # Lmf/javax/xml/datatype/Duration;

    .prologue
    .line 697
    const-wide/32 v6, 0x7fffffff

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    .line 700
    .local v12, "maxintAsBigInteger":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 701
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    .line 702
    const/4 v7, 0x0

    const-string v8, "TooLarge"

    .line 703
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 702
    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 701
    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 709
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 710
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    .line 711
    const/4 v7, 0x0

    const-string v8, "TooLarge"

    .line 712
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 711
    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 710
    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 719
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 720
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    .line 721
    const/4 v7, 0x0

    const-string v8, "TooLarge"

    .line 722
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 721
    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 720
    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 729
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 730
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    .line 731
    const/4 v7, 0x0

    const-string v8, "TooLarge"

    .line 732
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 731
    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 730
    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 739
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 740
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    .line 741
    const/4 v7, 0x0

    const-string v8, "TooLarge"

    .line 742
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 741
    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 740
    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 749
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 750
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    .line 751
    const/4 v7, 0x0

    const-string v8, "TooLarge"

    .line 752
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 751
    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 750
    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 761
    :cond_5
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v19

    check-cast v19, Ljava/math/BigInteger;

    .line 762
    .local v19, "rhsYears":Ljava/math/BigInteger;
    if-eqz v19, :cond_6

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 763
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    .line 764
    const/4 v7, 0x0

    const-string v8, "TooLarge"

    .line 765
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 764
    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 763
    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 772
    :cond_6
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v16

    check-cast v16, Ljava/math/BigInteger;

    .line 773
    .local v16, "rhsMonths":Ljava/math/BigInteger;
    if-eqz v16, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 774
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    .line 775
    const/4 v7, 0x0

    const-string v8, "TooLarge"

    .line 776
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 775
    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 774
    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 783
    :cond_7
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v13

    check-cast v13, Ljava/math/BigInteger;

    .line 784
    .local v13, "rhsDays":Ljava/math/BigInteger;
    if-eqz v13, :cond_8

    invoke-virtual {v13, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 785
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    .line 786
    const/4 v7, 0x0

    const-string v8, "TooLarge"

    .line 787
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v13}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 786
    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 785
    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 794
    :cond_8
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v14

    check-cast v14, Ljava/math/BigInteger;

    .line 795
    .local v14, "rhsHours":Ljava/math/BigInteger;
    if-eqz v14, :cond_9

    invoke-virtual {v14, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 796
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    .line 797
    const/4 v7, 0x0

    const-string v8, "TooLarge"

    .line 798
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v14}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 797
    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 796
    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 805
    :cond_9
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v15

    check-cast v15, Ljava/math/BigInteger;

    .line 806
    .local v15, "rhsMinutes":Ljava/math/BigInteger;
    if-eqz v15, :cond_a

    invoke-virtual {v15, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    .line 807
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    .line 808
    const/4 v7, 0x0

    const-string v8, "TooLarge"

    .line 809
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v15}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 808
    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 807
    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 816
    :cond_a
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v18

    check-cast v18, Ljava/math/BigDecimal;

    .line 817
    .local v18, "rhsSecondsAsBigDecimal":Ljava/math/BigDecimal;
    const/16 v17, 0x0

    .line 818
    .local v17, "rhsSeconds":Ljava/math/BigInteger;
    if-eqz v18, :cond_b

    .line 819
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v17

    .line 821
    :cond_b
    if-eqz v17, :cond_c

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    .line 822
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    .line 823
    const/4 v7, 0x0

    const-string v8, "TooLarge"

    .line 824
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 823
    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 822
    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 833
    :cond_c
    new-instance v4, Ljava/util/GregorianCalendar;

    .line 834
    const/16 v5, 0x7b2

    .line 835
    const/4 v6, 0x1

    .line 836
    const/4 v7, 0x1

    .line 837
    const/4 v8, 0x0

    .line 838
    const/4 v9, 0x0

    .line 839
    const/4 v10, 0x0

    .line 833
    invoke-direct/range {v4 .. v10}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 840
    .local v4, "lhsCalendar":Ljava/util/GregorianCalendar;
    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 841
    const/4 v6, 0x2

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 842
    const/4 v6, 0x6

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 843
    const/16 v6, 0xb

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getHours()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 844
    const/16 v6, 0xc

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMinutes()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 845
    const/16 v6, 0xd

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSeconds()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 848
    new-instance v5, Ljava/util/GregorianCalendar;

    .line 849
    const/16 v6, 0x7b2

    .line 850
    const/4 v7, 0x1

    .line 851
    const/4 v8, 0x1

    .line 852
    const/4 v9, 0x0

    .line 853
    const/4 v10, 0x0

    .line 854
    const/4 v11, 0x0

    .line 848
    invoke-direct/range {v5 .. v11}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 855
    .local v5, "rhsCalendar":Ljava/util/GregorianCalendar;
    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getYears()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 856
    const/4 v6, 0x2

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getMonths()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 857
    const/4 v6, 0x6

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getDays()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 858
    const/16 v6, 0xb

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getHours()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 859
    const/16 v6, 0xc

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getMinutes()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 860
    const/16 v6, 0xd

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getSeconds()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 863
    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 864
    const/4 v6, 0x0

    .line 867
    :goto_0
    return v6

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->compareDates(Lmf/javax/xml/datatype/Duration;Lmf/javax/xml/datatype/Duration;)I

    move-result v6

    goto :goto_0
.end method

.method public getDays()I
    .locals 1

    .prologue
    .line 1219
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;
    .locals 7
    .param p1, "field"    # Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1127
    if-nez p1, :cond_0

    .line 1128
    const-string v0, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field) "

    .line 1130
    .local v0, "methodName":Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1131
    const-string v2, "FieldCannotBeNull"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v6, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1130
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1135
    .end local v0    # "methodName":Ljava/lang/String;
    :cond_0
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_1

    .line 1136
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    .line 1156
    :goto_0
    return-object v1

    .line 1139
    :cond_1
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_2

    .line 1140
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    goto :goto_0

    .line 1143
    :cond_2
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_3

    .line 1144
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    goto :goto_0

    .line 1147
    :cond_3
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_4

    .line 1148
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    goto :goto_0

    .line 1151
    :cond_4
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_5

    .line 1152
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    goto :goto_0

    .line 1155
    :cond_5
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_6

    .line 1156
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    goto :goto_0

    .line 1165
    :cond_6
    const-string v0, "javax.xml.datatype.Duration#(getSet(DatatypeConstants.Field field)"

    .line 1167
    .restart local v0    # "methodName":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1168
    const-string v2, "UnknownField"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p1}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v6, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1167
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 1233
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 1247
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getMonths()I
    .locals 1

    .prologue
    .line 1206
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    .line 1262
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getSign()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    return v0
.end method

.method public getTimeInMillis(Ljava/util/Calendar;)J
    .locals 6
    .param p1, "startInstant"    # Ljava/util/Calendar;

    .prologue
    .line 1315
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 1316
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    .line 1317
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public getTimeInMillis(Ljava/util/Date;)J
    .locals 6
    .param p1, "startInstant"    # Ljava/util/Date;

    .prologue
    .line 1352
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1353
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1354
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    .line 1355
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public getYears()I
    .locals 1

    .prologue
    .line 1193
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 949
    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 950
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    .line 951
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    long-to-int v1, v2

    return v1
.end method

.method public isSet(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Z
    .locals 7
    .param p1, "field"    # Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1062
    if-nez p1, :cond_0

    .line 1063
    const-string v0, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field)"

    .line 1064
    .local v0, "methodName":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    .line 1066
    const-string v4, "FieldCannotBeNull"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v6, v4, v1}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1064
    invoke-direct {v3, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1070
    .end local v0    # "methodName":Ljava/lang/String;
    :cond_0
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v3, :cond_3

    .line 1071
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz v3, :cond_2

    .line 1091
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 1071
    goto :goto_0

    .line 1074
    :cond_3
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v3, :cond_4

    .line 1075
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 1078
    :cond_4
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v3, :cond_5

    .line 1079
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 1082
    :cond_5
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v3, :cond_6

    .line 1083
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 1086
    :cond_6
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v3, :cond_7

    .line 1087
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 1090
    :cond_7
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v3, :cond_8

    .line 1091
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 1093
    :cond_8
    const-string v0, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field)"

    .line 1095
    .restart local v0    # "methodName":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1096
    const-string v4, "UnknownField"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v6, v4, v5}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1095
    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public multiply(I)Lmf/javax/xml/datatype/Duration;
    .locals 2
    .param p1, "factor"    # I

    .prologue
    .line 1453
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->multiply(Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;
    .locals 13
    .param p1, "factor"    # Ljava/math/BigDecimal;

    .prologue
    .line 1504
    sget-object v10, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    .line 1505
    .local v10, "carry":Ljava/math/BigDecimal;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v11

    .line 1506
    .local v11, "factorSign":I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object p1

    .line 1508
    const/4 v0, 0x6

    new-array v9, v0, [Ljava/math/BigDecimal;

    .line 1510
    .local v9, "buf":[Ljava/math/BigDecimal;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/4 v0, 0x5

    if-lt v12, v0, :cond_0

    .line 1529
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    .line 1530
    const/4 v0, 0x5

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v9, v0

    .line 1536
    :goto_1
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    .line 1537
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v11

    if-ltz v1, :cond_4

    const/4 v1, 0x1

    .line 1538
    :goto_2
    const/4 v2, 0x0

    aget-object v3, v9, v2

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_3
    invoke-static {v3, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v2

    .line 1539
    const/4 v3, 0x1

    aget-object v4, v9, v3

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-nez v3, :cond_6

    const/4 v3, 0x1

    :goto_4
    invoke-static {v4, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v3

    .line 1540
    const/4 v4, 0x2

    aget-object v5, v9, v4

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-nez v4, :cond_7

    const/4 v4, 0x1

    :goto_5
    invoke-static {v5, v4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v4

    .line 1541
    const/4 v5, 0x3

    aget-object v6, v9, v5

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v5, :cond_8

    const/4 v5, 0x1

    :goto_6
    invoke-static {v6, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v5

    .line 1542
    const/4 v6, 0x4

    aget-object v7, v9, v6

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v6, :cond_9

    const/4 v6, 0x1

    :goto_7
    invoke-static {v7, v6}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v6

    .line 1543
    const/4 v7, 0x5

    aget-object v7, v9, v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v7, :cond_a

    const/4 v7, 0x0

    .line 1536
    :goto_8
    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0

    .line 1511
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FIELDS:[Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aget-object v0, v0, v12

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getFieldAsBigDecimal(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/math/BigDecimal;

    move-result-object v8

    .line 1512
    .local v8, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v8, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    .line 1514
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v9, v12

    .line 1516
    aget-object v0, v9, v12

    invoke-virtual {v8, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    .line 1517
    const/4 v0, 0x1

    if-ne v12, v0, :cond_2

    .line 1518
    invoke-virtual {v8}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1519
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1521
    :cond_1
    sget-object v10, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    .line 1510
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1525
    :cond_2
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    aget-object v0, v0, v12

    invoke-virtual {v8, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v10

    goto :goto_9

    .line 1533
    .end local v8    # "bd":Ljava/math/BigDecimal;
    :cond_3
    const/4 v0, 0x5

    aput-object v10, v9, v0

    goto/16 :goto_1

    .line 1537
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1538
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1539
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 1540
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 1541
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 1542
    :cond_9
    const/4 v6, 0x0

    goto :goto_7

    .line 1543
    :cond_a
    const/4 v7, 0x5

    aget-object v7, v9, v7

    goto :goto_8
.end method

.method public negate()Lmf/javax/xml/datatype/Duration;
    .locals 8

    .prologue
    .line 1840
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    .line 1841
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    .line 1842
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    .line 1843
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    .line 1844
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    .line 1845
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    .line 1846
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    .line 1847
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    .line 1840
    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0

    .line 1841
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public normalizeWith(Ljava/util/Calendar;)Lmf/javax/xml/datatype/Duration;
    .locals 12
    .param p1, "startTimeInstant"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1414
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Calendar;

    .line 1418
    .local v8, "c":Ljava/util/Calendar;
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v0

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v0, v3

    invoke-virtual {v8, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 1419
    const/4 v0, 0x2

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v4

    invoke-virtual {v8, v0, v3}, Ljava/util/Calendar;->add(II)V

    .line 1420
    const/4 v0, 0x5

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v4

    invoke-virtual {v8, v0, v3}, Ljava/util/Calendar;->add(II)V

    .line 1423
    invoke-static {v8}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v4

    invoke-static {p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v6

    sub-long v10, v4, v6

    .line 1424
    .local v10, "diff":J
    const-wide/32 v4, 0x5265c00

    div-long v4, v10, v4

    long-to-int v9, v4

    .line 1426
    .local v9, "days":I
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    .line 1427
    if-ltz v9, :cond_0

    .line 1430
    :goto_0
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 1431
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    check-cast v5, Ljava/math/BigInteger;

    .line 1432
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v6

    check-cast v6, Ljava/math/BigInteger;

    .line 1433
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v7

    check-cast v7, Ljava/math/BigDecimal;

    move-object v3, v2

    .line 1426
    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0

    .line 1427
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public signum()I
    .locals 1

    .prologue
    .line 1858
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    return v0
.end method

.method public subtract(Lmf/javax/xml/datatype/Duration;)Lmf/javax/xml/datatype/Duration;
    .locals 1
    .param p1, "rhs"    # Lmf/javax/xml/datatype/Duration;

    .prologue
    .line 1824
    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->negate()Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->add(Lmf/javax/xml/datatype/Duration;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x4d

    .line 974
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 975
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    if-gez v1, :cond_0

    .line 976
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 978
    :cond_0
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 980
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    .line 981
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 983
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-eqz v1, :cond_2

    .line 984
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 986
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-eqz v1, :cond_3

    .line 987
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 990
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v1, :cond_7

    .line 991
    :cond_4
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 992
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v1, :cond_5

    .line 993
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 995
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-eqz v1, :cond_6

    .line 996
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 998
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v1, :cond_7

    .line 999
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1003
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
