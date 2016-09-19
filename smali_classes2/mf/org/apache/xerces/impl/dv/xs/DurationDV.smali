.class public Lmf/org/apache/xerces/impl/dv/xs/DurationDV;
.super Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;
.source "DurationDV.java"


# static fields
.field private static final DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

.field public static final DAYTIMEDURATION_TYPE:I = 0x2

.field public static final DURATION_TYPE:I = 0x0

.field public static final YEARMONTHDURATION_TYPE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v8, 0x5a

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 49
    const/4 v0, 0x4

    new-array v12, v0, [Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .line 50
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/16 v1, 0x6a0

    const/16 v2, 0x9

    move v5, v4

    move v10, v3

    move-object v11, v9

    invoke-direct/range {v0 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(IIIIIDILjava/lang/String;ZLmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    aput-object v0, v12, v4

    .line 51
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/16 v1, 0x6a1

    const/4 v2, 0x2

    move v5, v4

    move v10, v3

    move-object v11, v9

    invoke-direct/range {v0 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(IIIIIDILjava/lang/String;ZLmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    aput-object v0, v12, v3

    const/4 v13, 0x2

    .line 52
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/16 v1, 0x76f

    const/4 v2, 0x3

    move v5, v4

    move v10, v3

    move-object v11, v9

    invoke-direct/range {v0 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(IIIIIDILjava/lang/String;ZLmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    aput-object v0, v12, v13

    const/4 v13, 0x3

    .line 53
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/16 v1, 0x76f

    const/4 v2, 0x7

    move v5, v4

    move v10, v3

    move-object v11, v9

    invoke-direct/range {v0 .. v11}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(IIIIIDILjava/lang/String;ZLmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    aput-object v0, v12, v13

    .line 49
    sput-object v12, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;-><init>()V

    return-void
.end method

.method private addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .locals 12
    .param p1, "date"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .param p2, "addto"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .param p3, "duration"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x18

    const/16 v9, 0xd

    const/4 v8, 0x1

    .line 279
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->resetDateObj(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 281
    iget v4, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int v1, v4, v5

    .line 282
    .local v1, "temp":I
    invoke-virtual {p0, v1, v8, v9}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->modulo(III)I

    move-result v4

    iput v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    .line 283
    invoke-virtual {p0, v1, v8, v9}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->fQuotient(III)I

    move-result v0

    .line 286
    .local v0, "carry":I
    iget v4, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    iput v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    .line 289
    iget-wide v4, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iget-wide v6, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    add-double v2, v4, v6

    .line 290
    .local v2, "dtemp":D
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 291
    mul-int/lit8 v4, v0, 0x3c

    int-to-double v4, v4

    sub-double v4, v2, v4

    iput-wide v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    .line 294
    iget v4, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    add-int/2addr v4, v5

    add-int v1, v4, v0

    .line 295
    invoke-virtual {p0, v1, v11}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->fQuotient(II)I

    move-result v0

    .line 296
    invoke-virtual {p0, v1, v11, v0}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->mod(III)I

    move-result v4

    iput v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    .line 299
    iget v4, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    add-int/2addr v4, v5

    add-int v1, v4, v0

    .line 300
    invoke-virtual {p0, v1, v10}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->fQuotient(II)I

    move-result v0

    .line 301
    invoke-virtual {p0, v1, v10, v0}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->mod(III)I

    move-result v4

    iput v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    .line 304
    iget v4, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    iput v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 308
    :goto_0
    iget v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v5, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->maxDayInMonthFor(II)I

    move-result v1

    .line 309
    iget v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-ge v4, v8, :cond_0

    .line 310
    iget v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v5, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v6, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->maxDayInMonthFor(II)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 311
    const/4 v0, -0x1

    .line 320
    :goto_1
    iget v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int v1, v4, v0

    .line 321
    invoke-virtual {p0, v1, v8, v9}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->modulo(III)I

    move-result v4

    iput v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    .line 322
    iget v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    invoke-virtual {p0, v1, v8, v9}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->fQuotient(III)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    goto :goto_0

    .line 313
    :cond_0
    iget v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-le v4, v1, :cond_1

    .line 314
    iget v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    sub-int/2addr v4, v1

    iput v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 315
    const/4 v0, 0x1

    goto :goto_1

    .line 325
    :cond_1
    const/16 v4, 0x5a

    iput v4, p3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    .line 326
    return-object p3
.end method

.method private compareResults(SSZ)S
    .locals 1
    .param p1, "resultA"    # S
    .param p2, "resultB"    # S
    .param p3, "strict"    # Z

    .prologue
    const/4 v0, 0x2

    .line 256
    if-ne p2, v0, :cond_1

    move p1, v0

    .line 270
    .end local p1    # "resultA":S
    :cond_0
    :goto_0
    return p1

    .line 259
    .restart local p1    # "resultA":S
    :cond_1
    if-eq p1, p2, :cond_2

    if-eqz p3, :cond_2

    move p1, v0

    .line 260
    goto :goto_0

    .line 262
    :cond_2
    if-eq p1, p2, :cond_0

    if-nez p3, :cond_0

    .line 263
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    move p1, v0

    .line 264
    goto :goto_0

    .line 267
    :cond_3
    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0
.end method


# virtual methods
.method protected compareDates(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Z)S
    .locals 11
    .param p1, "date1"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .param p2, "date2"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .param p3, "strict"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 211
    const/4 v2, 0x2

    .line 213
    .local v2, "resultB":S
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v1

    .line 214
    .local v1, "resultA":S
    if-nez v1, :cond_0

    .line 251
    :goto_0
    return v5

    .line 218
    :cond_0
    new-array v0, v6, [Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .line 219
    .local v0, "result":[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    invoke-direct {v7, v8, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    aput-object v7, v0, v5

    .line 220
    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    invoke-direct {v7, v8, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    aput-object v7, v0, v9

    .line 223
    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v7, v7, v5

    aget-object v8, v0, v5

    invoke-direct {p0, p1, v7, v8}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v3

    .line 224
    .local v3, "tempA":Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v7, v7, v5

    aget-object v8, v0, v9

    invoke-direct {p0, p2, v7, v8}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v4

    .line 225
    .local v4, "tempB":Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v1

    .line 226
    if-ne v1, v6, :cond_1

    move v5, v6

    .line 227
    goto :goto_0

    .line 230
    :cond_1
    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v7, v7, v9

    aget-object v8, v0, v5

    invoke-direct {p0, p1, v7, v8}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v3

    .line 231
    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v7, v7, v9

    aget-object v8, v0, v9

    invoke-direct {p0, p2, v7, v8}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v4

    .line 232
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v2

    .line 233
    invoke-direct {p0, v1, v2, p3}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->compareResults(SSZ)S

    move-result v1

    .line 234
    if-ne v1, v6, :cond_2

    move v5, v6

    .line 235
    goto :goto_0

    .line 238
    :cond_2
    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v7, v7, v6

    aget-object v8, v0, v5

    invoke-direct {p0, p1, v7, v8}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v3

    .line 239
    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v7, v7, v6

    aget-object v8, v0, v9

    invoke-direct {p0, p2, v7, v8}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v4

    .line 240
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v2

    .line 241
    invoke-direct {p0, v1, v2, p3}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->compareResults(SSZ)S

    move-result v1

    .line 242
    if-ne v1, v6, :cond_3

    move v5, v6

    .line 243
    goto :goto_0

    .line 246
    :cond_3
    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v6, v6, v10

    aget-object v5, v0, v5

    invoke-direct {p0, p1, v6, v5}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v3

    .line 247
    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->DATETIMES:[Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    aget-object v5, v5, v10

    aget-object v6, v0, v9

    invoke-direct {p0, p2, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->addDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-result-object v4

    .line 248
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v2

    .line 249
    invoke-direct {p0, v1, v2, p3}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->compareResults(SSZ)S

    move-result v1

    move v5, v1

    .line 251
    goto/16 :goto_0
.end method

.method protected dateToString(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/lang/String;
    .locals 9
    .param p1, "date"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    const/16 v8, 0x4d

    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 350
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 351
    .local v0, "message":Ljava/lang/StringBuffer;
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-ltz v1, :cond_0

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-ltz v1, :cond_0

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-ltz v1, :cond_0

    .line 352
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-ltz v1, :cond_0

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-ltz v1, :cond_0

    iget-wide v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    cmpg-double v1, v4, v6

    if-gez v1, :cond_1

    .line 353
    :cond_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 355
    :cond_1
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 356
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-gez v1, :cond_2

    move v1, v2

    :goto_0
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    mul-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 357
    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 358
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-gez v1, :cond_3

    move v1, v2

    :goto_1
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    mul-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 359
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 360
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-gez v1, :cond_4

    move v1, v2

    :goto_2
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    mul-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 361
    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 362
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 363
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-gez v1, :cond_5

    move v1, v2

    :goto_3
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    mul-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 364
    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 365
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-gez v1, :cond_6

    move v1, v2

    :goto_4
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    mul-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 366
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 367
    iget-wide v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    cmpg-double v1, v4, v6

    if-gez v1, :cond_7

    :goto_5
    int-to-double v2, v2

    iget-wide v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->append2(Ljava/lang/StringBuffer;D)V

    .line 368
    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    move v1, v3

    .line 356
    goto :goto_0

    :cond_3
    move v1, v3

    .line 358
    goto :goto_1

    :cond_4
    move v1, v3

    .line 360
    goto :goto_2

    :cond_5
    move v1, v3

    .line 363
    goto :goto_3

    :cond_6
    move v1, v3

    .line 365
    goto :goto_4

    :cond_7
    move v2, v3

    .line 367
    goto :goto_5
.end method

.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "context"    # Lmf/org/apache/xerces/impl/dv/ValidationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 57
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->parse(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, "duration"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method protected getDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/Duration;
    .locals 14
    .param p1, "date"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    const/4 v1, 0x1

    const/high16 v9, -0x80000000

    const/4 v7, 0x0

    .line 374
    const/4 v8, 0x1

    .line 375
    .local v8, "sign":I
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-ltz v0, :cond_0

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-ltz v0, :cond_0

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-ltz v0, :cond_0

    .line 376
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-ltz v0, :cond_0

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-ltz v0, :cond_0

    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    .line 377
    :cond_0
    const/4 v8, -0x1

    .line 379
    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->datatypeFactory:Lmf/javax/xml/datatype/DatatypeFactory;

    if-ne v8, v1, :cond_3

    .line 380
    :goto_0
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-eq v2, v9, :cond_4

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    mul-int/2addr v2, v8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 381
    :goto_1
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-eq v3, v9, :cond_5

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    mul-int/2addr v3, v8

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 382
    :goto_2
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-eq v4, v9, :cond_6

    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    mul-int/2addr v4, v8

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 383
    :goto_3
    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-eq v5, v9, :cond_7

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    mul-int/2addr v5, v8

    int-to-long v10, v5

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 384
    :goto_4
    iget v6, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-eq v6, v9, :cond_8

    iget v6, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    mul-int/2addr v6, v8

    int-to-long v10, v6

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 385
    :goto_5
    iget-wide v10, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    const-wide/high16 v12, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v9, v10, v12

    if-eqz v9, :cond_2

    new-instance v7, Ljava/math/BigDecimal;

    int-to-double v10, v8

    iget-wide v12, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 379
    :cond_2
    invoke-virtual/range {v0 .. v7}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move-object v2, v7

    .line 380
    goto :goto_1

    :cond_5
    move-object v3, v7

    .line 381
    goto :goto_2

    :cond_6
    move-object v4, v7

    .line 382
    goto :goto_3

    :cond_7
    move-object v5, v7

    .line 383
    goto :goto_4

    :cond_8
    move-object v6, v7

    .line 384
    goto :goto_5
.end method

.method protected parse(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .locals 16
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "durationType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 73
    .local v7, "len":I
    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    .line 75
    .local v3, "date":Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    const/4 v9, 0x0

    .line 76
    .local v9, "start":I
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "start":I
    .local v10, "start":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 77
    .local v2, "c":C
    const/16 v11, 0x50

    if-eq v2, v11, :cond_0

    const/16 v11, 0x2d

    if-eq v2, v11, :cond_0

    .line 78
    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v11}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v11

    .line 81
    :cond_0
    const/16 v11, 0x2d

    if-ne v2, v11, :cond_1

    const/16 v11, 0x2d

    :goto_0
    iput v11, v3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    .line 82
    const/16 v11, 0x2d

    if-ne v2, v11, :cond_2

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "start":I
    .restart local v9    # "start":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x50

    if-eq v11, v12, :cond_3

    .line 83
    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v11}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v11

    .line 81
    .end local v9    # "start":I
    .restart local v10    # "start":I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    move v9, v10

    .line 87
    .end local v10    # "start":I
    .restart local v9    # "start":I
    :cond_3
    const/4 v8, 0x1

    .line 89
    .local v8, "negate":I
    iget v11, v3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_4

    .line 90
    const/4 v8, -0x1

    .line 94
    :cond_4
    const/4 v4, 0x0

    .line 96
    .local v4, "designator":Z
    const/16 v11, 0x54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v7, v11}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v6

    .line 97
    .local v6, "endDate":I
    const/4 v11, -0x1

    if-ne v6, v11, :cond_6

    .line 98
    move v6, v7

    .line 105
    :cond_5
    const/16 v11, 0x59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v6, v11}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v5

    .line 106
    .local v5, "end":I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_8

    .line 108
    const/4 v11, 0x2

    move/from16 v0, p2

    if-ne v0, v11, :cond_7

    .line 109
    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v11}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v11

    .line 100
    .end local v5    # "end":I
    :cond_6
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_5

    .line 101
    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v11}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v11

    .line 113
    .restart local v5    # "end":I
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v5}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->parseInt(Ljava/lang/String;II)I

    move-result v11

    mul-int/2addr v11, v8

    iput v11, v3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    .line 114
    add-int/lit8 v9, v5, 0x1

    .line 115
    const/4 v4, 0x1

    .line 118
    :cond_8
    const/16 v11, 0x4d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v6, v11}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v5

    .line 119
    const/4 v11, -0x1

    if-eq v5, v11, :cond_a

    .line 121
    const/4 v11, 0x2

    move/from16 v0, p2

    if-ne v0, v11, :cond_9

    .line 122
    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v11}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v11

    .line 126
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v5}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->parseInt(Ljava/lang/String;II)I

    move-result v11

    mul-int/2addr v11, v8

    iput v11, v3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    .line 127
    add-int/lit8 v9, v5, 0x1

    .line 128
    const/4 v4, 0x1

    .line 131
    :cond_a
    const/16 v11, 0x44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v6, v11}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v5

    .line 132
    const/4 v11, -0x1

    if-eq v5, v11, :cond_c

    .line 134
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_b

    .line 135
    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v11}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v11

    .line 139
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v5}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->parseInt(Ljava/lang/String;II)I

    move-result v11

    mul-int/2addr v11, v8

    iput v11, v3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 140
    add-int/lit8 v9, v5, 0x1

    .line 141
    const/4 v4, 0x1

    .line 144
    :cond_c
    if-ne v7, v6, :cond_d

    if-eq v9, v7, :cond_d

    .line 145
    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v11}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v11

    .line 147
    :cond_d
    if-eq v7, v6, :cond_12

    .line 153
    add-int/lit8 v9, v9, 0x1

    const/16 v11, 0x48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v7, v11}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v5

    .line 154
    const/4 v11, -0x1

    if-eq v5, v11, :cond_e

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v5}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->parseInt(Ljava/lang/String;II)I

    move-result v11

    mul-int/2addr v11, v8

    iput v11, v3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    .line 157
    add-int/lit8 v9, v5, 0x1

    .line 158
    const/4 v4, 0x1

    .line 161
    :cond_e
    const/16 v11, 0x4d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v7, v11}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v5

    .line 162
    const/4 v11, -0x1

    if-eq v5, v11, :cond_f

    .line 164
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v5}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->parseInt(Ljava/lang/String;II)I

    move-result v11

    mul-int/2addr v11, v8

    iput v11, v3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    .line 165
    add-int/lit8 v9, v5, 0x1

    .line 166
    const/4 v4, 0x1

    .line 169
    :cond_f
    const/16 v11, 0x53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v7, v11}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v5

    .line 170
    const/4 v11, -0x1

    if-eq v5, v11, :cond_10

    .line 172
    int-to-double v12, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v5}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;->parseSecond(Ljava/lang/String;II)D

    move-result-wide v14

    mul-double/2addr v12, v14

    iput-wide v12, v3, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    .line 173
    add-int/lit8 v9, v5, 0x1

    .line 174
    const/4 v4, 0x1

    .line 178
    :cond_10
    if-ne v9, v7, :cond_11

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x54

    if-ne v11, v12, :cond_12

    .line 179
    :cond_11
    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v11}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v11

    .line 183
    :cond_12
    if-nez v4, :cond_13

    .line 184
    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    invoke-direct {v11}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>()V

    throw v11

    .line 187
    :cond_13
    return-object v3
.end method

.method protected parseSecond(Ljava/lang/String;II)D
    .locals 8
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 331
    const/4 v1, -0x1

    .line 332
    .local v1, "dot":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-lt v2, p3, :cond_0

    .line 339
    add-int/lit8 v3, v1, 0x1

    if-ne v3, p3, :cond_4

    .line 340
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' has wrong format"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 333
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 334
    .local v0, "ch":C
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2

    .line 335
    move v1, v2

    .line 332
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_2
    const/16 v3, 0x39

    if-gt v0, v3, :cond_3

    const/16 v3, 0x30

    if-ge v0, v3, :cond_1

    .line 337
    :cond_3
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' has wrong format"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 342
    .end local v0    # "ch":C
    :cond_4
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 343
    .local v4, "value":D
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v3, v4, v6

    if-nez v3, :cond_5

    .line 344
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' has wrong format"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 346
    :cond_5
    return-wide v4
.end method
