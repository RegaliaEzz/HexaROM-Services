.class public Lmf/org/apache/xerces/impl/dv/xs/MonthDV;
.super Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;
.source "MonthDV.java"


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
    const/16 v2, 0x2d

    .line 151
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 152
    .local v0, "message":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;->append(Ljava/lang/StringBuffer;II)V

    .line 155
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;->append(Ljava/lang/StringBuffer;II)V

    .line 156
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
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;->parse(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
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

    const-string v5, "gMonth"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method protected getXMLGregorianCalendar(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9
    .param p1, "date"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    const/high16 v1, -0x80000000

    .line 160
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;->datatypeFactory:Lmf/javax/xml/datatype/DatatypeFactory;

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMonth:I

    .line 163
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hasTimeZone()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    mul-int/lit8 v3, v3, 0x3c

    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    add-int v8, v3, v4

    :goto_0
    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 160
    invoke-virtual/range {v0 .. v8}, Lmf/javax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0

    :cond_0
    move v8, v1

    .line 163
    goto :goto_0
.end method

.method protected parse(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x2d

    .line 62
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    invoke-direct {v0, p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    .line 63
    .local v0, "date":Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 66
    .local v1, "len":I
    const/16 v3, 0x7d0

    iput v3, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    .line 67
    iput v6, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 68
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_1

    .line 69
    :cond_0
    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid format for gMonth: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_1
    const/4 v2, 0x4

    .line 72
    .local v2, "stop":I
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3, v2}, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;->parseInt(Ljava/lang/String;II)I

    move-result v3

    iput v3, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_2

    .line 78
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_2

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_2

    .line 79
    add-int/lit8 v2, v2, 0x2

    .line 81
    :cond_2
    if-ge v2, v1, :cond_4

    .line 82
    invoke-virtual {p0, p1, v2, v1}, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;->isNextCharUTCSign(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 83
    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error in month parsing: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_3
    invoke-virtual {p0, p1, v0, v2, v1}, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;->getTimeZone(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;II)V

    .line 90
    :cond_4
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;->validateDateTime(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 93
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;->saveUnnormalized(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 95
    iget v3, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-eqz v3, :cond_5

    iget v3, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_5

    .line 96
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;->normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 98
    :cond_5
    iput v6, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->position:I

    .line 99
    return-object v0
.end method
