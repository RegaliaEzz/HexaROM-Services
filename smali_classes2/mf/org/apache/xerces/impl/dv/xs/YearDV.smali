.class public Lmf/org/apache/xerces/impl/dv/xs/YearDV;
.super Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;
.source "YearDV.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;-><init>()V

    return-void
.end method


# virtual methods
.method protected dateToString(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/lang/String;
    .locals 3
    .param p1, "date"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 113
    .local v0, "message":Ljava/lang/StringBuffer;
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->append(Ljava/lang/StringBuffer;II)V

    .line 114
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->append(Ljava/lang/StringBuffer;II)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .line 47
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->parse(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, "gYear"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method protected getXMLGregorianCalendar(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9
    .param p1, "date"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    const/high16 v2, -0x80000000

    .line 119
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->datatypeFactory:Lmf/javax/xml/datatype/DatatypeFactory;

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormYear:I

    .line 122
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hasTimeZone()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    mul-int/lit8 v3, v3, 0x3c

    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    add-int v8, v3, v4

    :goto_0
    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    .line 119
    invoke-virtual/range {v0 .. v8}, Lmf/javax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0

    :cond_0
    move v8, v2

    .line 122
    goto :goto_0
.end method

.method protected parse(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .locals 11
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 62
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    invoke-direct {v0, p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    .line 63
    .local v0, "date":Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 66
    .local v1, "len":I
    const/4 v4, 0x0

    .line 67
    .local v4, "start":I
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    .line 68
    const/4 v4, 0x1

    .line 70
    :cond_0
    invoke-virtual {p0, p1, v4, v1}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->findUTCSign(Ljava/lang/String;II)I

    move-result v3

    .line 72
    .local v3, "sign":I
    if-ne v3, v7, :cond_1

    move v5, v1

    :goto_0
    sub-int v2, v5, v4

    .line 73
    .local v2, "length":I
    if-ge v2, v10, :cond_2

    .line 74
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Year must have \'CCYY\' format"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2    # "length":I
    :cond_1
    move v5, v3

    .line 72
    goto :goto_0

    .line 76
    .restart local v2    # "length":I
    :cond_2
    if-le v2, v10, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_3

    .line 77
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Leading zeros are required if the year value would otherwise have fewer than four digits; otherwise they are forbidden"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 80
    :cond_3
    if-ne v3, v7, :cond_5

    .line 81
    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->parseIntYear(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    .line 89
    :goto_1
    iput v9, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    .line 90
    iput v9, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 93
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->validateDateTime(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 96
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->saveUnnormalized(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 98
    iget v5, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-eqz v5, :cond_4

    iget v5, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_4

    .line 99
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 101
    :cond_4
    iput v8, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->position:I

    .line 102
    return-object v0

    .line 84
    :cond_5
    invoke-virtual {p0, p1, v3}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->parseIntYear(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    .line 85
    invoke-virtual {p0, p1, v0, v3, v1}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;->getTimeZone(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;II)V

    goto :goto_1
.end method
