.class public Lmf/org/apache/xerces/impl/dv/xs/TimeDV;
.super Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;
.source "TimeDV.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;-><init>()V

    return-void
.end method


# virtual methods
.method protected dateToString(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/lang/String;
    .locals 4
    .param p1, "date"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    const/16 v3, 0x3a

    const/4 v2, 0x2

    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 95
    .local v0, "message":Ljava/lang/StringBuffer;
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;->append(Ljava/lang/StringBuffer;II)V

    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 97
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;->append(Ljava/lang/StringBuffer;II)V

    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    invoke-virtual {p0, v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;->append(Ljava/lang/StringBuffer;D)V

    .line 101
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;->append(Ljava/lang/StringBuffer;II)V

    .line 102
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
    .line 46
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;->parse(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, "time"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method protected getXMLGregorianCalendar(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 12
    .param p1, "date"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    .line 106
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;->datatypeFactory:Lmf/javax/xml/datatype/DatatypeFactory;

    .line 107
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormHour:I

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMinute:I

    .line 108
    iget-wide v6, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormSecond:D

    double-to-int v6, v6

    iget-wide v8, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormSecond:D

    const-wide/16 v10, 0x0

    cmpl-double v3, v8, v10

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;->getFractionalSecondsAsBigDecimal(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 109
    :goto_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hasTimeZone()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    mul-int/lit8 v3, v3, 0x3c

    iget v8, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    add-int/2addr v8, v3

    :goto_1
    move v3, v2

    .line 106
    invoke-virtual/range {v0 .. v8}, Lmf/javax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v7, v1

    .line 108
    goto :goto_0

    :cond_1
    move v8, v2

    .line 109
    goto :goto_1
.end method

.method protected parse(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xf

    .line 62
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    invoke-direct {v0, p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    .line 63
    .local v0, "date":Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 67
    .local v1, "len":I
    const/16 v2, 0x7d0

    iput v2, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    .line 68
    const/4 v2, 0x1

    iput v2, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    .line 69
    iput v4, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 70
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;->getTime(Ljava/lang/String;IILmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 74
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;->validateDateTime(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 77
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;->saveUnnormalized(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 79
    iget v2, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-eqz v2, :cond_0

    iget v2, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    .line 80
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;->normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 81
    iput v4, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 83
    :cond_0
    const/4 v2, 0x2

    iput v2, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->position:I

    .line 84
    return-object v0
.end method
