.class public Lmf/org/apache/xerces/jaxp/datatype/DatatypeFactoryImpl;
.super Lmf/javax/xml/datatype/DatatypeFactory;
.source "DatatypeFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lmf/javax/xml/datatype/DatatypeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newDuration(J)Lmf/javax/xml/datatype/Duration;
    .locals 1
    .param p1, "durationInMilliseconds"    # J

    .prologue
    .line 140
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(J)V

    return-object v0
.end method

.method public newDuration(Ljava/lang/String;)Lmf/javax/xml/datatype/Duration;
    .locals 1
    .param p1, "lexicalRepresentation"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;
    .locals 8
    .param p1, "isPositive"    # Z
    .param p2, "years"    # Ljava/math/BigInteger;
    .param p3, "months"    # Ljava/math/BigInteger;
    .param p4, "days"    # Ljava/math/BigInteger;
    .param p5, "hours"    # Ljava/math/BigInteger;
    .param p6, "minutes"    # Ljava/math/BigInteger;
    .param p7, "seconds"    # Ljava/math/BigDecimal;

    .prologue
    .line 179
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public newXMLGregorianCalendar()Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>()V

    return-object v0
.end method

.method public newXMLGregorianCalendar(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "millisecond"    # I
    .param p8, "timezone"    # I

    .prologue
    .line 336
    .line 335
    invoke-static/range {p1 .. p8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->createDateTime(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public newXMLGregorianCalendar(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 1
    .param p1, "lexicalRepresentation"    # Ljava/lang/String;

    .prologue
    .line 230
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9
    .param p1, "year"    # Ljava/math/BigInteger;
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "fractionalSecond"    # Ljava/math/BigDecimal;
    .param p8, "timezone"    # I

    .prologue
    .line 381
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V

    return-object v0
.end method

.method public newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 1
    .param p1, "cal"    # Ljava/util/GregorianCalendar;

    .prologue
    .line 297
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/util/GregorianCalendar;)V

    return-object v0
.end method
