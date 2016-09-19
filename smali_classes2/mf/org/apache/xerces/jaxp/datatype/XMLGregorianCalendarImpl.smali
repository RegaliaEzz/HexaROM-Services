.class Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;
.super Lmf/javax/xml/datatype/XMLGregorianCalendar;
.source "XMLGregorianCalendarImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;,
        Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;
    }
.end annotation


# static fields
.field private static final BILLION_B:Ljava/math/BigInteger;

.field private static final BILLION_I:I = 0x3b9aca00

.field private static final DAY:I = 0x2

.field private static final DECIMAL_ONE:Ljava/math/BigDecimal;

.field private static final DECIMAL_SIXTY:Ljava/math/BigDecimal;

.field private static final DECIMAL_ZERO:Ljava/math/BigDecimal;

.field private static final FIELD_NAME:[Ljava/lang/String;

.field private static final FOUR:Ljava/math/BigInteger;

.field private static final FOUR_HUNDRED:Ljava/math/BigInteger;

.field private static final HOUR:I = 0x3

.field private static final HUNDRED:Ljava/math/BigInteger;

.field public static final LEAP_YEAR_DEFAULT:Lmf/javax/xml/datatype/XMLGregorianCalendar;

.field private static final MAX_FIELD_VALUE:[I

.field private static final MILLISECOND:I = 0x6

.field private static final MINUTE:I = 0x4

.field private static final MIN_FIELD_VALUE:[I

.field private static final MONTH:I = 0x1

.field private static final PURE_GREGORIAN_CHANGE:Ljava/util/Date;

.field private static final SECOND:I = 0x5

.field private static final SIXTY:Ljava/math/BigInteger;

.field private static final TIMEZONE:I = 0x7

.field private static final TWELVE:Ljava/math/BigInteger;

.field private static final TWENTY_FOUR:Ljava/math/BigInteger;

.field private static final YEAR:I = 0x0

.field private static final serialVersionUID:J = 0x3632c76f616c9fe2L


# instance fields
.field private day:I

.field private eon:Ljava/math/BigInteger;

.field private fractionalSecond:Ljava/math/BigDecimal;

.field private hour:I

.field private minute:I

.field private month:I

.field private orig_day:I

.field private orig_eon:Ljava/math/BigInteger;

.field private orig_fracSeconds:Ljava/math/BigDecimal;

.field private orig_hour:I

.field private orig_minute:I

.field private orig_month:I

.field private orig_second:I

.field private orig_timezone:I

.field private orig_year:I

.field private second:I

.field private timezone:I

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x8

    const/high16 v6, -0x80000000

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 248
    const-wide/32 v4, 0x3b9aca00

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->BILLION_B:Ljava/math/BigInteger;

    .line 259
    new-instance v0, Ljava/util/Date;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->PURE_GREGORIAN_CHANGE:Ljava/util/Date;

    .line 304
    new-array v0, v7, [I

    .line 305
    aput v6, v0, v3

    .line 307
    aput v1, v0, v1

    .line 308
    aput v1, v0, v8

    const/4 v2, 0x7

    .line 313
    const/16 v4, -0x348

    aput v4, v0, v2

    .line 304
    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    .line 319
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MAX_FIELD_VALUE:[I

    .line 334
    new-array v0, v7, [Ljava/lang/String;

    .line 335
    const-string v2, "Year"

    aput-object v2, v0, v3

    .line 336
    const-string v2, "Month"

    aput-object v2, v0, v1

    .line 337
    const-string v2, "Day"

    aput-object v2, v0, v8

    const/4 v2, 0x3

    .line 338
    const-string v4, "Hour"

    aput-object v4, v0, v2

    const/4 v2, 0x4

    .line 339
    const-string v4, "Minute"

    aput-object v4, v0, v2

    const/4 v2, 0x5

    .line 340
    const-string v4, "Second"

    aput-object v4, v0, v2

    const/4 v2, 0x6

    .line 341
    const-string v4, "Millisecond"

    aput-object v4, v0, v2

    const/4 v2, 0x7

    .line 342
    const-string v4, "Timezone"

    aput-object v4, v0, v2

    .line 334
    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FIELD_NAME:[Ljava/lang/String;

    .line 359
    const/16 v0, 0x190

    move v2, v1

    move v4, v3

    move v5, v3

    move v7, v6

    .line 358
    invoke-static/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->createDateTime(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    .line 357
    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->LEAP_YEAR_DEFAULT:Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 2339
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FOUR:Ljava/math/BigInteger;

    .line 2340
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->HUNDRED:Ljava/math/BigInteger;

    .line 2341
    const-wide/16 v0, 0x190

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FOUR_HUNDRED:Ljava/math/BigInteger;

    .line 2342
    const-wide/16 v0, 0x3c

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->SIXTY:Ljava/math/BigInteger;

    .line 2343
    const-wide/16 v0, 0x18

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWENTY_FOUR:Ljava/math/BigInteger;

    .line 2344
    const-wide/16 v0, 0xc

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWELVE:Ljava/math/BigInteger;

    .line 2345
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    .line 2346
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ONE:Ljava/math/BigDecimal;

    .line 2347
    const-wide/16 v0, 0x3c

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_SIXTY:Ljava/math/BigDecimal;

    return-void

    .line 319
    nop

    :array_0
    .array-data 4
        0x7fffffff
        0xc
        0x1f
        0x18
        0x3b
        0x3c
        0x3e7
        0x348
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    .line 509
    invoke-direct {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;-><init>()V

    .line 191
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    .line 192
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    .line 193
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    .line 194
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    .line 195
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    .line 196
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    .line 198
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    .line 203
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    .line 208
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    .line 213
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    .line 218
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    .line 223
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    .line 228
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    .line 233
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    .line 238
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    .line 243
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    .line 512
    return-void
.end method

.method private constructor <init>(IIIIIIII)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "millisecond"    # I
    .param p8, "timezone"    # I

    .prologue
    .line 604
    invoke-direct {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;-><init>()V

    .line 191
    const/high16 v1, -0x80000000

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    .line 192
    const/high16 v1, -0x80000000

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    .line 193
    const/high16 v1, -0x80000000

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    .line 194
    const/high16 v1, -0x80000000

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    .line 195
    const/high16 v1, -0x80000000

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    .line 196
    const/high16 v1, -0x80000000

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    .line 198
    const/high16 v1, -0x80000000

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    .line 208
    const/high16 v1, -0x80000000

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    .line 213
    const/high16 v1, -0x80000000

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    .line 218
    const/high16 v1, -0x80000000

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    .line 223
    const/high16 v1, -0x80000000

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    .line 228
    const/high16 v1, -0x80000000

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    .line 233
    const/high16 v1, -0x80000000

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    .line 238
    const/high16 v1, -0x80000000

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    .line 243
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    .line 614
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(I)V

    .line 615
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    .line 616
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    .line 617
    invoke-virtual {p0, p4, p5, p6}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTime(III)V

    .line 618
    invoke-virtual {p0, p8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, "realMilliseconds":Ljava/math/BigDecimal;
    const/high16 v1, -0x80000000

    if-eq p7, v1, :cond_0

    .line 621
    int-to-long v2, p7

    const/4 v1, 0x3

    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    .line 623
    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    .line 625
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 627
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 628
    const/4 v2, 0x0

    .line 629
    const-string v3, "InvalidXGCValue-milli"

    .line 630
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 631
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 632
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    .line 628
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 627
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 649
    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    .line 650
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 14
    .param p1, "lexicalRepresentation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-direct {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;-><init>()V

    .line 191
    const/high16 v9, -0x80000000

    iput v9, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    .line 192
    const/high16 v9, -0x80000000

    iput v9, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    .line 193
    const/high16 v9, -0x80000000

    iput v9, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    .line 194
    const/high16 v9, -0x80000000

    iput v9, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    .line 195
    const/high16 v9, -0x80000000

    iput v9, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    .line 196
    const/high16 v9, -0x80000000

    iput v9, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    .line 198
    const/high16 v9, -0x80000000

    iput v9, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    .line 203
    const/4 v9, 0x0

    iput-object v9, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    .line 208
    const/high16 v9, -0x80000000

    iput v9, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    .line 213
    const/high16 v9, -0x80000000

    iput v9, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    .line 218
    const/high16 v9, -0x80000000

    iput v9, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    .line 223
    const/high16 v9, -0x80000000

    iput v9, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    .line 228
    const/high16 v9, -0x80000000

    iput v9, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    .line 233
    const/high16 v9, -0x80000000

    iput v9, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    .line 238
    const/high16 v9, -0x80000000

    iput v9, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    .line 243
    const/4 v9, 0x0

    iput-object v9, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    .line 392
    const/4 v3, 0x0

    .line 393
    .local v3, "format":Ljava/lang/String;
    move-object v5, p1

    .line 394
    .local v5, "lexRep":Ljava/lang/String;
    const/4 v0, -0x1

    .line 395
    .local v0, "NOT_FOUND":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 400
    .local v6, "lexRepLength":I
    const/16 v9, 0x54

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 402
    const-string v3, "%Y-%M-%DT%h:%m:%s%z"

    .line 477
    :goto_0
    new-instance v7, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;

    const/4 v9, 0x0

    invoke-direct {v7, p0, v3, v5, v9}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;-><init>(Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;)V

    .line 478
    .local v7, "p":Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;
    invoke-virtual {v7}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parse()V

    .line 481
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isValid()Z

    move-result v9

    if-nez v9, :cond_c

    .line 482
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 483
    const/4 v10, 0x0

    const-string v11, "InvalidXGCRepresentation"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static {v10, v11, v12}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 482
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 404
    .end local v7    # "p":Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;
    :cond_0
    const/4 v9, 0x3

    if-lt v6, v9, :cond_1

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_1

    .line 406
    const-string v3, "%h:%m:%s%z"

    .line 407
    goto :goto_0

    .line 408
    :cond_1
    const-string v9, "--"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 410
    const/4 v9, 0x3

    if-lt v6, v9, :cond_2

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_2

    .line 413
    const-string v3, "---%D%z"

    .line 414
    goto :goto_0

    .line 415
    :cond_2
    const/4 v9, 0x4

    if-eq v6, v9, :cond_3

    const/4 v9, 0x6

    if-lt v6, v9, :cond_5

    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2b

    if-eq v9, v10, :cond_3

    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_5

    const/4 v9, 0x5

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_3

    const/16 v9, 0xa

    if-ne v6, v9, :cond_5

    .line 418
    :cond_3
    const-string v3, "--%M--%z"

    .line 419
    new-instance v7, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;

    const/4 v9, 0x0

    invoke-direct {v7, p0, v3, v5, v9}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;-><init>(Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;)V

    .line 421
    .restart local v7    # "p":Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;
    :try_start_0
    invoke-virtual {v7}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parse()V

    .line 423
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isValid()Z

    move-result v9

    if-nez v9, :cond_4

    .line 424
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 425
    const/4 v10, 0x0

    const-string v11, "InvalidXGCRepresentation"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static {v10, v11, v12}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 424
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :catch_0
    move-exception v2

    .line 433
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "--%M%z"

    .line 435
    goto/16 :goto_0

    .line 429
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 488
    :goto_1
    return-void

    .line 438
    .end local v7    # "p":Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;
    :cond_5
    const-string v3, "--%M-%D%z"

    .line 440
    goto/16 :goto_0

    .line 443
    :cond_6
    const/4 v1, 0x0

    .line 448
    .local v1, "countSeparator":I
    const/16 v9, 0x3a

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 449
    .local v8, "timezoneOffset":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    .line 455
    add-int/lit8 v6, v6, -0x6

    .line 458
    :cond_7
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2
    if-lt v4, v6, :cond_8

    .line 463
    if-nez v1, :cond_a

    .line 465
    const-string v3, "%Y%z"

    .line 466
    goto/16 :goto_0

    .line 459
    :cond_8
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_9

    .line 460
    add-int/lit8 v1, v1, 0x1

    .line 458
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 467
    :cond_a
    const/4 v9, 0x1

    if-ne v1, v9, :cond_b

    .line 469
    const-string v3, "%Y-%M%z"

    .line 470
    goto/16 :goto_0

    .line 474
    :cond_b
    const-string v3, "%Y-%M-%D%z"

    goto/16 :goto_0

    .line 487
    .end local v1    # "countSeparator":I
    .end local v4    # "i":I
    .end local v8    # "timezoneOffset":I
    .restart local v7    # "p":Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;
    :cond_c
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    goto :goto_1
.end method

.method protected constructor <init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V
    .locals 6
    .param p1, "year"    # Ljava/math/BigInteger;
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "fractionalSecond"    # Ljava/math/BigDecimal;
    .param p8, "timezone"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v0, -0x80000000

    .line 531
    invoke-direct {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;-><init>()V

    .line 191
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    .line 192
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    .line 193
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    .line 194
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    .line 195
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    .line 196
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    .line 198
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    .line 203
    iput-object v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    .line 208
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    .line 213
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    .line 218
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    .line 223
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    .line 228
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    .line 233
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    .line 238
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    .line 243
    iput-object v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    .line 541
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    .line 542
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    .line 543
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    .line 544
    invoke-virtual {p0, p4, p5, p6, p7}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTime(IIILjava/math/BigDecimal;)V

    .line 545
    invoke-virtual {p0, p8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    .line 548
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 552
    const-string v1, "InvalidXGCValue-fractional"

    .line 553
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 554
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 555
    aput-object p7, v2, v3

    const/4 v3, 0x7

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    .line 551
    invoke-static {v5, v1, v2}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 550
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    .line 585
    return-void
.end method

.method public constructor <init>(Ljava/util/GregorianCalendar;)V
    .locals 6
    .param p1, "cal"    # Ljava/util/GregorianCalendar;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x80000000

    .line 709
    invoke-direct {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;-><init>()V

    .line 191
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    .line 192
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    .line 193
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    .line 194
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    .line 195
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    .line 196
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    .line 198
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    .line 203
    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    .line 208
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    .line 213
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    .line 218
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    .line 223
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    .line 228
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    .line 233
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    .line 238
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    .line 243
    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    .line 711
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 712
    .local v1, "year":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 713
    neg-int v1, v1

    .line 715
    :cond_0
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(I)V

    .line 719
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    .line 720
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    .line 722
    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 723
    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 724
    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 725
    const/16 v5, 0xe

    invoke-virtual {p1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 721
    invoke-virtual {p0, v2, v3, v4, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTime(IIII)V

    .line 728
    const/16 v2, 0xf

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    const v3, 0xea60

    div-int v0, v2, v3

    .line 729
    .local v0, "offsetInMinutes":I
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    .line 730
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->save()V

    .line 731
    return-void
.end method

.method static synthetic access$0(C)Z
    .locals 1

    .prologue
    .line 2999
    invoke-static {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private checkFieldValueConstraint(II)V
    .locals 6
    .param p1, "field"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1362
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    aget v0, v0, p1

    if-ge p2, v0, :cond_0

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_1

    .line 1363
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MAX_FIELD_VALUE:[I

    aget v0, v0, p1

    if-le p2, v0, :cond_2

    .line 1369
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1370
    const/4 v1, 0x0

    const-string v2, "InvalidFieldValue"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FIELD_NAME:[Ljava/lang/String;

    aget-object v5, v5, p1

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1369
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1373
    :cond_2
    return-void
.end method

.method private static compareField(II)I
    .locals 1
    .param p0, "Pfield"    # I
    .param p1, "Qfield"    # I

    .prologue
    const/high16 v0, -0x80000000

    .line 1658
    if-ne p0, p1, :cond_0

    .line 1661
    const/4 v0, 0x0

    .line 1670
    :goto_0
    return v0

    .line 1664
    :cond_0
    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_2

    .line 1666
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1670
    :cond_2
    if-ge p0, p1, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static compareField(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)I
    .locals 1
    .param p0, "Pfield"    # Ljava/math/BigDecimal;
    .param p1, "Qfield"    # Ljava/math/BigDecimal;

    .prologue
    .line 1687
    if-ne p0, p1, :cond_0

    .line 1688
    const/4 v0, 0x0

    .line 1699
    :goto_0
    return v0

    .line 1691
    :cond_0
    if-nez p0, :cond_1

    .line 1692
    sget-object p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    .line 1695
    :cond_1
    if-nez p1, :cond_2

    .line 1696
    sget-object p1, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    .line 1699
    :cond_2
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    goto :goto_0
.end method

.method private static compareField(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 1
    .param p0, "Pfield"    # Ljava/math/BigInteger;
    .param p1, "Qfield"    # Ljava/math/BigInteger;

    .prologue
    const/4 v0, 0x2

    .line 1676
    if-nez p0, :cond_1

    .line 1677
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1682
    :cond_0
    :goto_0
    return v0

    .line 1679
    :cond_1
    if-eqz p1, :cond_0

    .line 1682
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    goto :goto_0
.end method

.method public static createDate(IIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "timezone"    # I

    .prologue
    const/high16 v4, -0x80000000

    .line 881
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move v1, p0

    move v2, p1

    move v3, p2

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    return-object v0
.end method

.method public static createDateTime(IIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .prologue
    const/high16 v7, -0x80000000

    .line 802
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    return-object v0
.end method

.method public static createDateTime(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "hours"    # I
    .param p4, "minutes"    # I
    .param p5, "seconds"    # I
    .param p6, "milliseconds"    # I
    .param p7, "timezone"    # I

    .prologue
    .line 844
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    return-object v0
.end method

.method public static createDateTime(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9
    .param p0, "year"    # Ljava/math/BigInteger;
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "hours"    # I
    .param p4, "minutes"    # I
    .param p5, "seconds"    # I
    .param p6, "fractionalSecond"    # Ljava/math/BigDecimal;
    .param p7, "timezone"    # I

    .prologue
    .line 766
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V

    return-object v0
.end method

.method public static createTime(IIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I
    .param p3, "timezone"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 913
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move v2, v1

    move v3, v1

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, v1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    return-object v0
.end method

.method public static createTime(IIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I
    .param p3, "milliseconds"    # I
    .param p4, "timezone"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 983
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    move v2, v1

    move v3, v1

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(IIIIIIII)V

    return-object v0
.end method

.method public static createTime(IIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I
    .param p3, "fractionalSecond"    # Ljava/math/BigDecimal;
    .param p4, "timezone"    # I

    .prologue
    const/high16 v2, -0x80000000

    .line 948
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    .line 949
    const/4 v1, 0x0

    move v3, v2

    move v4, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    .line 948
    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V

    return-object v0
.end method

.method private format(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x2d

    const/4 v11, 0x4

    const/4 v10, 0x2

    .line 3004
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3005
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "fidx":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "flen":I
    move v4, v3

    .line 3007
    .end local v3    # "fidx":I
    .local v4, "fidx":I
    :cond_0
    :goto_0
    if-lt v4, v5, :cond_1

    .line 3071
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 3008
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "fidx":I
    .restart local v3    # "fidx":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3009
    .local v2, "fch":C
    const/16 v8, 0x25

    if-eq v2, v8, :cond_2

    .line 3010
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v3

    .line 3011
    .end local v3    # "fidx":I
    .restart local v4    # "fidx":I
    goto :goto_0

    .line 3014
    .end local v4    # "fidx":I
    .restart local v3    # "fidx":I
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "fidx":I
    .restart local v4    # "fidx":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 3067
    new-instance v8, Ljava/lang/InternalError;

    invoke-direct {v8}, Ljava/lang/InternalError;-><init>()V

    throw v8

    .line 3016
    :sswitch_0
    iget-object v8, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v8, :cond_4

    .line 3017
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    .line 3018
    .local v0, "absYear":I
    if-gez v0, :cond_3

    .line 3019
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3020
    iget v8, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    neg-int v0, v8

    .line 3022
    :cond_3
    invoke-direct {p0, v1, v0, v11}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    .line 3025
    .end local v0    # "absYear":I
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {p0, v1, v8, v11}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;Ljava/math/BigInteger;I)V

    goto :goto_0

    .line 3029
    :sswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v8

    invoke-direct {p0, v1, v8, v10}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    .line 3032
    :sswitch_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getDay()I

    move-result v8

    invoke-direct {p0, v1, v8, v10}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    .line 3035
    :sswitch_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getHour()I

    move-result v8

    invoke-direct {p0, v1, v8, v10}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    .line 3038
    :sswitch_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMinute()I

    move-result v8

    invoke-direct {p0, v1, v8, v10}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    .line 3041
    :sswitch_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v8

    invoke-direct {p0, v1, v8, v10}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    .line 3042
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3043
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-direct {p0, v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v6

    .line 3045
    .local v6, "frac":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 3049
    .end local v6    # "frac":Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v7

    .line 3050
    .local v7, "offset":I
    if-nez v7, :cond_5

    .line 3051
    const/16 v8, 0x5a

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 3053
    :cond_5
    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_0

    .line 3054
    if-gez v7, :cond_6

    .line 3055
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3056
    mul-int/lit8 v7, v7, -0x1

    .line 3061
    :goto_1
    div-int/lit8 v8, v7, 0x3c

    invoke-direct {p0, v1, v8, v10}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    .line 3062
    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3063
    rem-int/lit8 v8, v7, 0x3c

    invoke-direct {p0, v1, v8, v10}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->printNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    .line 3059
    :cond_6
    const/16 v8, 0x2b

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3014
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x4d -> :sswitch_1
        0x59 -> :sswitch_0
        0x68 -> :sswitch_3
        0x6d -> :sswitch_4
        0x73 -> :sswitch_5
        0x7a -> :sswitch_6
    .end sparse-switch
.end method

.method private getSeconds()Ljava/math/BigDecimal;
    .locals 4

    .prologue
    .line 1154
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    .line 1155
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    .line 1162
    :cond_0
    :goto_0
    return-object v0

    .line 1157
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1158
    .local v0, "result":Ljava/math/BigDecimal;
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    .line 1159
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method

.method private static internalCompare(Lmf/javax/xml/datatype/XMLGregorianCalendar;Lmf/javax/xml/datatype/XMLGregorianCalendar;)I
    .locals 4
    .param p0, "P"    # Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .param p1, "Q"    # Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .prologue
    .line 1610
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getEon()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getEon()Ljava/math/BigInteger;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1613
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v3

    invoke-static {v2, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    .line 1614
    .local v0, "result":I
    if-eqz v0, :cond_1

    move v1, v0

    .line 1650
    .end local v0    # "result":I
    .local v1, "result":I
    :goto_0
    return v1

    .line 1619
    .end local v1    # "result":I
    :cond_0
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    .line 1620
    .restart local v0    # "result":I
    if-eqz v0, :cond_1

    move v1, v0

    .line 1621
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 1625
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_1
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v3

    invoke-static {v2, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    .line 1626
    if-eqz v0, :cond_2

    move v1, v0

    .line 1627
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 1630
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_2
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v3

    invoke-static {v2, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    .line 1631
    if-eqz v0, :cond_3

    move v1, v0

    .line 1632
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 1635
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_3
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v3

    invoke-static {v2, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    .line 1636
    if-eqz v0, :cond_4

    move v1, v0

    .line 1637
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 1640
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_4
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v3

    invoke-static {v2, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    .line 1641
    if-eqz v0, :cond_5

    move v1, v0

    .line 1642
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 1644
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_5
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v3

    invoke-static {v2, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(II)I

    move-result v0

    .line 1645
    if-eqz v0, :cond_6

    move v1, v0

    .line 1646
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 1649
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_6
    invoke-virtual {p0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-static {v2, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compareField(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)I

    move-result v0

    move v1, v0

    .line 1650
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 3000
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

.method private static maximumDayInMonthFor(II)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    const/4 v1, 0x2

    .line 2373
    if-eq p1, v1, :cond_0

    .line 2374
    # getter for: Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->table:[I
    invoke-static {}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->access$0()[I

    move-result-object v0

    aget v0, v0, p1

    .line 2383
    :goto_0
    return v0

    .line 2377
    :cond_0
    rem-int/lit16 v0, p0, 0x190

    if-eqz v0, :cond_1

    .line 2378
    rem-int/lit8 v0, p0, 0x64

    if-eqz v0, :cond_2

    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_2

    .line 2380
    :cond_1
    const/16 v0, 0x1d

    goto :goto_0

    .line 2383
    :cond_2
    # getter for: Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->table:[I
    invoke-static {}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->access$0()[I

    move-result-object v0

    aget v0, v0, v1

    goto :goto_0
.end method

.method private static maximumDayInMonthFor(Ljava/math/BigInteger;I)I
    .locals 2
    .param p0, "year"    # Ljava/math/BigInteger;
    .param p1, "month"    # I

    .prologue
    .line 2356
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2357
    # getter for: Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->table:[I
    invoke-static {}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->access$0()[I

    move-result-object v0

    aget v0, v0, p1

    .line 2367
    :goto_0
    return v0

    .line 2360
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FOUR_HUNDRED:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2361
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->HUNDRED:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2362
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2364
    :cond_1
    const/16 v0, 0x1d

    goto :goto_0

    .line 2367
    :cond_2
    # getter for: Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->table:[I
    invoke-static {}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$DaysInMonth;->access$0()[I

    move-result-object v0

    aget v0, v0, p1

    goto :goto_0
.end method

.method private normalizeToTimezone(Lmf/javax/xml/datatype/XMLGregorianCalendar;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 10
    .param p1, "cal"    # Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .param p2, "timezone"    # I

    .prologue
    const/4 v2, 0x0

    .line 1569
    move v8, p2

    .line 1570
    .local v8, "minutes":I
    invoke-virtual {p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .line 1574
    .local v9, "result":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    neg-int v8, v8

    .line 1575
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    if-ltz v8, :cond_0

    const/4 v1, 0x1

    .line 1580
    :goto_0
    if-gez v8, :cond_1

    neg-int v6, v8

    :goto_1
    move v3, v2

    move v4, v2

    move v5, v2

    move v7, v2

    .line 1575
    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZIIIIII)V

    .line 1583
    .local v0, "d":Lmf/javax/xml/datatype/Duration;
    invoke-virtual {v9, v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    .line 1586
    invoke-virtual {v9, v2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setTimezone(I)V

    .line 1587
    return-object v9

    .end local v0    # "d":Lmf/javax/xml/datatype/Duration;
    :cond_0
    move v1, v2

    .line 1575
    goto :goto_0

    :cond_1
    move v6, v8

    .line 1580
    goto :goto_1
.end method

.method public static parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 1
    .param p0, "lexicalRepresentation"    # Ljava/lang/String;

    .prologue
    .line 1776
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private printNumber(Ljava/lang/StringBuffer;II)V
    .locals 3
    .param p1, "out"    # Ljava/lang/StringBuffer;
    .param p2, "number"    # I
    .param p3, "nDigits"    # I

    .prologue
    .line 3087
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3088
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 3091
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3092
    return-void

    .line 3089
    :cond_0
    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3088
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private printNumber(Ljava/lang/StringBuffer;Ljava/math/BigInteger;I)V
    .locals 3
    .param p1, "out"    # Ljava/lang/StringBuffer;
    .param p2, "number"    # Ljava/math/BigInteger;
    .param p3, "nDigits"    # I

    .prologue
    .line 3107
    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3108
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 3111
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3112
    return-void

    .line 3109
    :cond_0
    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;
    .locals 0
    .param p0, "value"    # Ljava/lang/Number;
    .param p1, "signum"    # I

    .prologue
    .line 3159
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 3160
    :cond_0
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 3162
    .end local p0    # "value":Ljava/lang/Number;
    :goto_0
    return-object p0

    .restart local p0    # "value":Ljava/lang/Number;
    :cond_1
    if-gez p1, :cond_2

    check-cast p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Number;
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .restart local p0    # "value":Ljava/lang/Number;
    :cond_2
    check-cast p0, Ljava/math/BigInteger;

    goto :goto_0
.end method

.method private save()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_eon:Ljava/math/BigInteger;

    .line 495
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    .line 496
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    .line 497
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    .line 498
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    .line 499
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    .line 500
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    .line 501
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_fracSeconds:Ljava/math/BigDecimal;

    .line 502
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    .line 503
    return-void
.end method

.method private setEon(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "eon"    # Ljava/math/BigInteger;

    .prologue
    .line 1282
    if-eqz p1, :cond_0

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1284
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    .line 1289
    :goto_0
    return-void

    .line 1287
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    goto :goto_0
.end method

.method private toString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 7
    .param p1, "bd"    # Ljava/math/BigDecimal;

    .prologue
    .line 3125
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3126
    .local v3, "intString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    .line 3128
    .local v4, "scale":I
    if-nez v4, :cond_0

    .line 3150
    .end local v3    # "intString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 3134
    .restart local v3    # "intString":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v2, v5, v4

    .line 3135
    .local v2, "insertionPoint":I
    if-nez v2, :cond_1

    .line 3136
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3138
    :cond_1
    if-lez v2, :cond_2

    .line 3139
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3140
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v5, 0x2e

    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 3150
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 3143
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    rsub-int/lit8 v5, v2, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3144
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    const-string v5, "0."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3145
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    neg-int v5, v2

    if-lt v1, v5, :cond_3

    .line 3148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3146
    :cond_3
    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3145
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3190
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/SerializedXMLGregorianCalendar;

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->toXMLFormat()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/SerializedXMLGregorianCalendar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(Lmf/javax/xml/datatype/Duration;)V
    .locals 36
    .param p1, "duration"    # Lmf/javax/xml/datatype/Duration;

    .prologue
    .line 2116
    const/16 v32, 0x6

    move/from16 v0, v32

    new-array v14, v0, [Z

    .line 2125
    .local v14, "fieldUndefined":[Z
    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v21

    .line 2127
    .local v21, "signum":I
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v25

    .line 2128
    .local v25, "startMonth":I
    const/high16 v32, -0x80000000

    move/from16 v0, v25

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 2129
    sget-object v32, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    const/16 v33, 0x1

    aget v25, v32, v33

    .line 2130
    const/16 v32, 0x1

    const/16 v33, 0x1

    aput-boolean v33, v14, v32

    .line 2133
    :cond_0
    sget-object v32, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v6

    .line 2134
    .local v6, "dMonths":Ljava/math/BigInteger;
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v28

    .line 2135
    .local v28, "temp":Ljava/math/BigInteger;
    sget-object v32, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    sget-object v33, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWELVE:Ljava/math/BigInteger;

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigInteger;->intValue()I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    .line 2137
    new-instance v32, Ljava/math/BigDecimal;

    sget-object v33, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v33, Ljava/math/BigDecimal;

    sget-object v34, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWELVE:Ljava/math/BigInteger;

    invoke-direct/range {v33 .. v34}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    const/16 v34, 0x3

    invoke-virtual/range {v32 .. v34}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 2142
    .local v2, "carry":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v27

    .line 2143
    .local v27, "startYear":Ljava/math/BigInteger;
    if-nez v27, :cond_1

    .line 2144
    const/16 v32, 0x0

    const/16 v33, 0x1

    aput-boolean v33, v14, v32

    .line 2145
    sget-object v27, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 2147
    :cond_1
    sget-object v32, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v8

    .line 2148
    .local v8, "dYears":Ljava/math/BigInteger;
    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 2149
    .local v12, "endYear":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    .line 2163
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v32

    const/high16 v33, -0x80000000

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_6

    .line 2164
    const/16 v32, 0x5

    const/16 v33, 0x1

    aput-boolean v33, v14, v32

    .line 2165
    sget-object v26, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    .line 2173
    .local v26, "startSeconds":Ljava/math/BigDecimal;
    :goto_0
    sget-object v32, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v32

    check-cast v32, Ljava/math/BigDecimal;

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v7

    .line 2174
    .local v7, "dSeconds":Ljava/math/BigDecimal;
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v29

    .line 2176
    .local v29, "tempBD":Ljava/math/BigDecimal;
    new-instance v13, Ljava/math/BigDecimal;

    new-instance v32, Ljava/math/BigDecimal;

    invoke-virtual/range {v29 .. v29}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sget-object v33, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_SIXTY:Ljava/math/BigDecimal;

    const/16 v34, 0x3

    invoke-virtual/range {v32 .. v34}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v13, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 2177
    .local v13, "fQuotient":Ljava/math/BigDecimal;
    sget-object v32, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_SIXTY:Ljava/math/BigDecimal;

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v11

    .line 2179
    .local v11, "endSeconds":Ljava/math/BigDecimal;
    invoke-virtual {v13}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 2180
    invoke-virtual {v11}, Ljava/math/BigDecimal;->intValue()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    .line 2181
    new-instance v32, Ljava/math/BigDecimal;

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v31

    .line 2182
    .local v31, "tempFracSeconds":Ljava/math/BigDecimal;
    sget-object v32, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    invoke-virtual/range {v31 .. v32}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v32

    if-gez v32, :cond_8

    .line 2183
    sget-object v32, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ONE:Ljava/math/BigDecimal;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    .line 2184
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v32

    if-nez v32, :cond_7

    .line 2185
    const/16 v32, 0x3b

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    .line 2186
    sget-object v32, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 2201
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMinute()I

    move-result v24

    .line 2202
    .local v24, "startMinutes":I
    const/high16 v32, -0x80000000

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 2203
    const/16 v32, 0x4

    const/16 v33, 0x1

    aput-boolean v33, v14, v32

    .line 2204
    sget-object v32, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    const/16 v33, 0x4

    aget v24, v32, v33

    .line 2206
    :cond_2
    sget-object v32, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v5

    .line 2208
    .local v5, "dMinutes":Ljava/math/BigInteger;
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v28

    .line 2209
    sget-object v32, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->SIXTY:Ljava/math/BigInteger;

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigInteger;->intValue()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    .line 2210
    new-instance v32, Ljava/math/BigDecimal;

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sget-object v33, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_SIXTY:Ljava/math/BigDecimal;

    const/16 v34, 0x3

    invoke-virtual/range {v32 .. v34}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 2217
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getHour()I

    move-result v23

    .line 2218
    .local v23, "startHours":I
    const/high16 v32, -0x80000000

    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 2219
    const/16 v32, 0x3

    const/16 v33, 0x1

    aput-boolean v33, v14, v32

    .line 2220
    sget-object v32, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    const/16 v33, 0x3

    aget v23, v32, v33

    .line 2222
    :cond_3
    sget-object v32, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 2224
    .local v4, "dHours":Ljava/math/BigInteger;
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v28

    .line 2225
    sget-object v32, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWENTY_FOUR:Ljava/math/BigInteger;

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigInteger;->intValue()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    .line 2226
    new-instance v32, Ljava/math/BigDecimal;

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    new-instance v33, Ljava/math/BigDecimal;

    sget-object v34, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWENTY_FOUR:Ljava/math/BigInteger;

    invoke-direct/range {v33 .. v34}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    const/16 v34, 0x3

    invoke-virtual/range {v32 .. v34}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 2252
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getDay()I

    move-result v22

    .line 2253
    .local v22, "startDay":I
    const/high16 v32, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 2254
    const/16 v32, 0x2

    const/16 v33, 0x1

    aput-boolean v33, v14, v32

    .line 2255
    sget-object v32, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->MIN_FIELD_VALUE:[I

    const/16 v33, 0x2

    aget v22, v32, v33

    .line 2257
    :cond_4
    sget-object v32, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-static {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->sanitize(Ljava/lang/Number;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 2258
    .local v3, "dDays":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v33

    invoke-static/range {v32 .. v33}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v17

    .line 2259
    .local v17, "maxDayInMonth":I
    move/from16 v0, v22

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    .line 2260
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v30

    .line 2268
    .local v30, "tempDays":Ljava/math/BigInteger;
    :goto_2
    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 2272
    .local v9, "endDays":Ljava/math/BigInteger;
    :cond_5
    :goto_3
    sget-object v32, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v32

    if-gez v32, :cond_c

    .line 2274
    const/16 v18, 0x0

    .line 2275
    .local v18, "mdimf":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_b

    .line 2276
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    invoke-static/range {v32 .. v33}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v18

    .line 2282
    :goto_4
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 2283
    const/16 v19, -0x1

    .line 2293
    .end local v18    # "mdimf":Ljava/math/BigInteger;
    .local v19, "monthCarry":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v32

    add-int v16, v32, v19

    .line 2294
    .local v16, "intTemp":I
    add-int/lit8 v32, v16, -0x1

    rem-int/lit8 v10, v32, 0xc

    .line 2296
    .local v10, "endMonth":I
    if-gez v10, :cond_d

    .line 2297
    add-int/lit8 v32, v10, 0xc

    add-int/lit8 v10, v32, 0x1

    .line 2298
    add-int/lit8 v32, v16, -0x1

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v32

    new-instance v33, Ljava/math/BigDecimal;

    sget-object v34, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->TWELVE:Ljava/math/BigInteger;

    invoke-direct/range {v33 .. v34}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigDecimal;->intValue()I

    move-result v20

    .line 2304
    .local v20, "quotient":I
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    .line 2305
    if-eqz v20, :cond_5

    .line 2306
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v32

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    goto/16 :goto_3

    .line 2169
    .end local v3    # "dDays":Ljava/math/BigInteger;
    .end local v4    # "dHours":Ljava/math/BigInteger;
    .end local v5    # "dMinutes":Ljava/math/BigInteger;
    .end local v7    # "dSeconds":Ljava/math/BigDecimal;
    .end local v9    # "endDays":Ljava/math/BigInteger;
    .end local v10    # "endMonth":I
    .end local v11    # "endSeconds":Ljava/math/BigDecimal;
    .end local v13    # "fQuotient":Ljava/math/BigDecimal;
    .end local v16    # "intTemp":I
    .end local v17    # "maxDayInMonth":I
    .end local v19    # "monthCarry":I
    .end local v20    # "quotient":I
    .end local v22    # "startDay":I
    .end local v23    # "startHours":I
    .end local v24    # "startMinutes":I
    .end local v26    # "startSeconds":Ljava/math/BigDecimal;
    .end local v29    # "tempBD":Ljava/math/BigDecimal;
    .end local v30    # "tempDays":Ljava/math/BigInteger;
    .end local v31    # "tempFracSeconds":Ljava/math/BigDecimal;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSeconds()Ljava/math/BigDecimal;

    move-result-object v26

    .restart local v26    # "startSeconds":Ljava/math/BigDecimal;
    goto/16 :goto_0

    .line 2189
    .restart local v7    # "dSeconds":Ljava/math/BigDecimal;
    .restart local v11    # "endSeconds":Ljava/math/BigDecimal;
    .restart local v13    # "fQuotient":Ljava/math/BigDecimal;
    .restart local v29    # "tempBD":Ljava/math/BigDecimal;
    .restart local v31    # "tempFracSeconds":Ljava/math/BigDecimal;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getSecond()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    goto/16 :goto_1

    .line 2193
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    goto/16 :goto_1

    .line 2262
    .restart local v3    # "dDays":Ljava/math/BigInteger;
    .restart local v4    # "dHours":Ljava/math/BigInteger;
    .restart local v5    # "dMinutes":Ljava/math/BigInteger;
    .restart local v17    # "maxDayInMonth":I
    .restart local v22    # "startDay":I
    .restart local v23    # "startHours":I
    .restart local v24    # "startMinutes":I
    :cond_9
    const/16 v32, 0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-ge v0, v1, :cond_a

    .line 2263
    sget-object v30, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 2264
    .restart local v30    # "tempDays":Ljava/math/BigInteger;
    goto/16 :goto_2

    .line 2266
    .end local v30    # "tempDays":Ljava/math/BigInteger;
    :cond_a
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v30

    .restart local v30    # "tempDays":Ljava/math/BigInteger;
    goto/16 :goto_2

    .line 2280
    .restart local v9    # "endDays":Ljava/math/BigInteger;
    .restart local v18    # "mdimf":Ljava/math/BigInteger;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v32

    const-wide/16 v34, 0x1

    invoke-static/range {v34 .. v35}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    const/16 v33, 0xc

    invoke-static/range {v32 .. v33}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v18

    goto/16 :goto_4

    .line 2285
    .end local v18    # "mdimf":Ljava/math/BigInteger;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v33

    invoke-static/range {v32 .. v33}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v32

    if-lez v32, :cond_e

    .line 2286
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMonth()I

    move-result v33

    invoke-static/range {v32 .. v33}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v32

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 2287
    const/16 v19, 0x1

    .restart local v19    # "monthCarry":I
    goto/16 :goto_5

    .line 2301
    .restart local v10    # "endMonth":I
    .restart local v16    # "intTemp":I
    :cond_d
    add-int/lit8 v32, v16, -0x1

    div-int/lit8 v20, v32, 0xc

    .line 2302
    .restart local v20    # "quotient":I
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 2309
    .end local v10    # "endMonth":I
    .end local v16    # "intTemp":I
    .end local v19    # "monthCarry":I
    .end local v20    # "quotient":I
    :cond_e
    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    .line 2312
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_7
    const/16 v32, 0x5

    move/from16 v0, v32

    if-le v15, v0, :cond_f

    .line 2337
    return-void

    .line 2313
    :cond_f
    aget-boolean v32, v14, v15

    if-eqz v32, :cond_10

    .line 2314
    packed-switch v15, :pswitch_data_0

    .line 2312
    :cond_10
    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 2316
    :pswitch_0
    const/high16 v32, -0x80000000

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(I)V

    goto :goto_8

    .line 2319
    :pswitch_1
    const/high16 v32, -0x80000000

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    goto :goto_8

    .line 2322
    :pswitch_2
    const/high16 v32, -0x80000000

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    goto :goto_8

    .line 2325
    :pswitch_3
    const/high16 v32, -0x80000000

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    goto :goto_8

    .line 2328
    :pswitch_4
    const/high16 v32, -0x80000000

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    goto :goto_8

    .line 2331
    :pswitch_5
    const/high16 v32, -0x80000000

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    .line 2332
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    goto :goto_8

    .line 2314
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    .line 2793
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    .line 2794
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    .line 2795
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    .line 2796
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    .line 2797
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    .line 2798
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    .line 2799
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    .line 2800
    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    .line 2801
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    .line 2802
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 2779
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v1

    .line 2780
    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    .line 2781
    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    iget v6, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    .line 2782
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    .line 2783
    iget v8, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    .line 2779
    invoke-direct/range {v0 .. v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;-><init>(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)V

    return-object v0
.end method

.method public compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I
    .locals 14
    .param p1, "rhs"    # Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .prologue
    const/4 v7, 0x2

    const/4 v13, 0x1

    const/4 v12, -0x1

    const/16 v11, -0x348

    const/high16 v10, -0x80000000

    .line 1467
    const/4 v6, 0x2

    .line 1468
    .local v6, "result":I
    move-object v4, p0

    .line 1469
    .local v4, "P":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    move-object v5, p1

    .line 1471
    .local v5, "Q":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    invoke-virtual {v4}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v8

    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 1476
    invoke-static {v4, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Lmf/javax/xml/datatype/XMLGregorianCalendar;Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v7

    .line 1533
    :cond_0
    :goto_0
    return v7

    .line 1479
    :cond_1
    invoke-virtual {v4}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v8

    if-eq v8, v10, :cond_2

    .line 1480
    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v8

    if-eq v8, v10, :cond_2

    .line 1484
    invoke-virtual {v4}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->normalize()Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v4

    .end local v4    # "P":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    check-cast v4, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    .line 1485
    .restart local v4    # "P":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->normalize()Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v5

    .end local v5    # "Q":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    check-cast v5, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    .line 1486
    .restart local v5    # "Q":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    invoke-static {v4, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Lmf/javax/xml/datatype/XMLGregorianCalendar;Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v7

    goto :goto_0

    .line 1488
    :cond_2
    invoke-virtual {v4}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v8

    if-eq v8, v10, :cond_5

    .line 1490
    invoke-virtual {v4}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v8

    if-eqz v8, :cond_3

    .line 1491
    invoke-virtual {v4}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->normalize()Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v4

    .end local v4    # "P":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    check-cast v4, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    .line 1495
    .restart local v4    # "P":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    :cond_3
    const/16 v8, 0x348

    invoke-direct {p0, v5, v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Lmf/javax/xml/datatype/XMLGregorianCalendar;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v3

    .line 1496
    .local v3, "MinQ":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    invoke-static {v4, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Lmf/javax/xml/datatype/XMLGregorianCalendar;Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v6

    .line 1497
    if-ne v6, v12, :cond_4

    move v7, v6

    .line 1498
    goto :goto_0

    .line 1502
    :cond_4
    invoke-direct {p0, v5, v11}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Lmf/javax/xml/datatype/XMLGregorianCalendar;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    .line 1503
    .local v1, "MaxQ":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    invoke-static {v4, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Lmf/javax/xml/datatype/XMLGregorianCalendar;Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v6

    .line 1504
    if-ne v6, v13, :cond_0

    move v7, v6

    .line 1505
    goto :goto_0

    .line 1514
    .end local v1    # "MaxQ":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .end local v3    # "MinQ":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    :cond_5
    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v8

    if-eqz v8, :cond_6

    .line 1515
    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v8

    invoke-direct {p0, v5, v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Lmf/javax/xml/datatype/XMLGregorianCalendar;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v5

    .end local v5    # "Q":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    check-cast v5, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    .line 1519
    .restart local v5    # "Q":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    :cond_6
    invoke-direct {p0, v4, v11}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Lmf/javax/xml/datatype/XMLGregorianCalendar;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    .line 1520
    .local v0, "MaxP":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    invoke-static {v0, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Lmf/javax/xml/datatype/XMLGregorianCalendar;Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v6

    .line 1521
    if-ne v6, v12, :cond_7

    move v7, v6

    .line 1522
    goto :goto_0

    .line 1526
    :cond_7
    const/16 v8, 0x348

    invoke-direct {p0, v4, v8}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Lmf/javax/xml/datatype/XMLGregorianCalendar;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v2

    .line 1527
    .local v2, "MinP":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    invoke-static {v2, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->internalCompare(Lmf/javax/xml/datatype/XMLGregorianCalendar;Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v6

    .line 1528
    if-ne v6, v13, :cond_0

    move v7, v6

    .line 1529
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1710
    if-ne p1, p0, :cond_1

    .line 1716
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 1713
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    if-eqz v2, :cond_2

    .line 1714
    check-cast p1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 1716
    goto :goto_0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 1087
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    return v0
.end method

.method public getEon()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEonAndYear()Ljava/math/BigInteger;
    .locals 4

    .prologue
    const/high16 v1, -0x80000000

    .line 1047
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-eq v0, v1, :cond_0

    .line 1048
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1062
    :goto_0
    return-object v0

    .line 1054
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-eq v0, v1, :cond_1

    .line 1055
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v0, :cond_1

    .line 1057
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 1062
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFractionalSecond()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 1112
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    return v0
.end method

.method public getMillisecond()I
    .locals 2

    .prologue
    .line 1186
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 1187
    const/high16 v0, -0x80000000

    .line 1193
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 1075
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 1146
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    return v0
.end method

.method public getTimeZone(I)Ljava/util/TimeZone;
    .locals 8
    .param p1, "defaultZoneoffset"    # I

    .prologue
    const/16 v6, 0x2d

    const/high16 v7, -0x80000000

    .line 2733
    const/4 v3, 0x0

    .line 2734
    .local v3, "result":Ljava/util/TimeZone;
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v5

    .line 2736
    .local v5, "zoneoffset":I
    if-ne v5, v7, :cond_0

    .line 2737
    move v5, p1

    .line 2739
    :cond_0
    if-ne v5, v7, :cond_1

    .line 2740
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 2768
    :goto_0
    return-object v3

    .line 2744
    :cond_1
    if-gez v5, :cond_5

    move v4, v6

    .line 2745
    .local v4, "sign":C
    :goto_1
    if-ne v4, v6, :cond_2

    .line 2746
    neg-int v5, v5

    .line 2748
    :cond_2
    div-int/lit8 v1, v5, 0x3c

    .line 2749
    .local v1, "hour":I
    mul-int/lit8 v6, v1, 0x3c

    sub-int v2, v5, v6

    .line 2756
    .local v2, "minutes":I
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v6, 0x8

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2757
    .local v0, "customTimezoneId":Ljava/lang/StringBuffer;
    const-string v6, "GMT"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2758
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2760
    if-eqz v2, :cond_4

    .line 2761
    const/16 v6, 0xa

    if-ge v2, v6, :cond_3

    .line 2762
    const/16 v6, 0x30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2764
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2766
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    goto :goto_0

    .line 2744
    .end local v0    # "customTimezoneId":Ljava/lang/StringBuffer;
    .end local v1    # "hour":I
    .end local v2    # "minutes":I
    .end local v4    # "sign":C
    :cond_5
    const/16 v4, 0x2b

    goto :goto_1
.end method

.method public getTimezone()I
    .locals 1

    .prologue
    .line 1100
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    return v0
.end method

.method public getXMLSchemaType()Lmf/javax/xml/namespace/QName;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v1, -0x80000000

    .line 1943
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-eq v0, v1, :cond_0

    .line 1944
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v0, v1, :cond_0

    .line 1945
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v0, v1, :cond_0

    .line 1946
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-eq v0, v1, :cond_0

    .line 1947
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-eq v0, v1, :cond_0

    .line 1948
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-eq v0, v1, :cond_0

    .line 1949
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DATETIME:Lmf/javax/xml/namespace/QName;

    .line 2020
    :goto_0
    return-object v0

    .line 1953
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-eq v0, v1, :cond_1

    .line 1954
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v0, v1, :cond_1

    .line 1955
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v0, v1, :cond_1

    .line 1956
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v0, v1, :cond_1

    .line 1957
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v0, v1, :cond_1

    .line 1958
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v0, v1, :cond_1

    .line 1959
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DATE:Lmf/javax/xml/namespace/QName;

    goto :goto_0

    .line 1963
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-ne v0, v1, :cond_2

    .line 1964
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-ne v0, v1, :cond_2

    .line 1965
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-ne v0, v1, :cond_2

    .line 1966
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-eq v0, v1, :cond_2

    .line 1967
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-eq v0, v1, :cond_2

    .line 1968
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-eq v0, v1, :cond_2

    .line 1969
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->TIME:Lmf/javax/xml/namespace/QName;

    goto :goto_0

    .line 1974
    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-eq v0, v1, :cond_3

    .line 1975
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v0, v1, :cond_3

    .line 1976
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-ne v0, v1, :cond_3

    .line 1977
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v0, v1, :cond_3

    .line 1978
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v0, v1, :cond_3

    .line 1979
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v0, v1, :cond_3

    .line 1980
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->GYEARMONTH:Lmf/javax/xml/namespace/QName;

    goto :goto_0

    .line 1984
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-ne v0, v1, :cond_4

    .line 1985
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v0, v1, :cond_4

    .line 1986
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v0, v1, :cond_4

    .line 1987
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v0, v1, :cond_4

    .line 1988
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v0, v1, :cond_4

    .line 1989
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v0, v1, :cond_4

    .line 1990
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->GMONTHDAY:Lmf/javax/xml/namespace/QName;

    goto :goto_0

    .line 1994
    :cond_4
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-eq v0, v1, :cond_5

    .line 1995
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-ne v0, v1, :cond_5

    .line 1996
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-ne v0, v1, :cond_5

    .line 1997
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v0, v1, :cond_5

    .line 1998
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v0, v1, :cond_5

    .line 1999
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v0, v1, :cond_5

    .line 2000
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->GYEAR:Lmf/javax/xml/namespace/QName;

    goto/16 :goto_0

    .line 2004
    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-ne v0, v1, :cond_6

    .line 2005
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v0, v1, :cond_6

    .line 2006
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-ne v0, v1, :cond_6

    .line 2007
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v0, v1, :cond_6

    .line 2008
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v0, v1, :cond_6

    .line 2009
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v0, v1, :cond_6

    .line 2010
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->GMONTH:Lmf/javax/xml/namespace/QName;

    goto/16 :goto_0

    .line 2014
    :cond_6
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-ne v0, v1, :cond_7

    .line 2015
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-ne v0, v1, :cond_7

    .line 2016
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v0, v1, :cond_7

    .line 2017
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-ne v0, v1, :cond_7

    .line 2018
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-ne v0, v1, :cond_7

    .line 2019
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-ne v0, v1, :cond_7

    .line 2020
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->GDAY:Lmf/javax/xml/namespace/QName;

    goto/16 :goto_0

    .line 2024
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2026
    const-string v2, "#getXMLSchemaType() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2027
    const-string v2, "InvalidXGCFields"

    invoke-static {v3, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2025
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2024
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 1026
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1731
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v1

    .line 1732
    .local v1, "timezone":I
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 1733
    const/4 v1, 0x0

    .line 1735
    :cond_0
    move-object v0, p0

    .line 1736
    .local v0, "gc":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    if-eqz v1, :cond_1

    .line 1737
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v2

    invoke-direct {p0, p0, v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Lmf/javax/xml/datatype/XMLGregorianCalendar;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    .line 1739
    :cond_1
    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v2

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v3

    add-int/2addr v2, v3

    .line 1740
    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v3

    .line 1739
    add-int/2addr v2, v3

    .line 1740
    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v3

    .line 1739
    add-int/2addr v2, v3

    .line 1740
    invoke-virtual {v0}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v3

    .line 1739
    add-int/2addr v2, v3

    return v2
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/high16 v2, -0x80000000

    const/4 v0, 0x0

    .line 2043
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v1, v2, :cond_2

    .line 2044
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-eq v1, v2, :cond_5

    .line 2045
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v1, :cond_1

    .line 2046
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    invoke-static {v2, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(II)I

    move-result v2

    if-le v1, v2, :cond_2

    .line 2073
    :cond_0
    :goto_0
    return v0

    .line 2050
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    invoke-static {v2, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(Ljava/math/BigInteger;I)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 2061
    :cond_2
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_3

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-nez v1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-nez v1, :cond_0

    .line 2062
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    sget-object v2, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2070
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v1, :cond_4

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-eqz v1, :cond_0

    .line 2073
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 2055
    :cond_5
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    const/16 v2, 0x7d0

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    invoke-static {v2, v3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->maximumDayInMonthFor(II)I

    move-result v2

    if-le v1, v2, :cond_2

    goto :goto_0
.end method

.method public normalize()Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 1546
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    invoke-direct {p0, p0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->normalizeToTimezone(Lmf/javax/xml/datatype/XMLGregorianCalendar;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    .line 1549
    .local v0, "normalized":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimezone()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1550
    invoke-virtual {v0, v2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setTimezone(I)V

    .line 1554
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMillisecond()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1555
    invoke-virtual {v0, v2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->setMillisecond(I)V

    .line 1558
    :cond_1
    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 3170
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_eon:Ljava/math/BigInteger;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    .line 3171
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_year:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    .line 3172
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_month:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    .line 3173
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_day:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    .line 3174
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_hour:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    .line 3175
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_minute:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    .line 3176
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_second:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    .line 3177
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_fracSeconds:Ljava/math/BigDecimal;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    .line 3178
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->orig_timezone:I

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    .line 3179
    return-void
.end method

.method public setDay(I)V
    .locals 1
    .param p1, "day"    # I

    .prologue
    .line 1319
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    .line 1320
    iput p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    .line 1321
    return-void
.end method

.method public setFractionalSecond(Ljava/math/BigDecimal;)V
    .locals 5
    .param p1, "fractional"    # Ljava/math/BigDecimal;

    .prologue
    .line 2815
    if-eqz p1, :cond_1

    .line 2816
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2817
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->DECIMAL_ONE:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_1

    .line 2818
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    .line 2819
    const-string v2, "InvalidFractional"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 2818
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2822
    :cond_1
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    .line 2823
    return-void
.end method

.method public setHour(I)V
    .locals 1
    .param p1, "hour"    # I

    .prologue
    .line 1376
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    .line 1377
    iput p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    .line 1378
    return-void
.end method

.method public setMillisecond(I)V
    .locals 3
    .param p1, "millisecond"    # I

    .prologue
    .line 2805
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 2806
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    .line 2812
    :goto_0
    return-void

    .line 2809
    :cond_0
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    .line 2810
    int-to-long v0, p1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    goto :goto_0
.end method

.method public setMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .prologue
    .line 1381
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    .line 1382
    iput p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    .line 1383
    return-void
.end method

.method public setMonth(I)V
    .locals 1
    .param p1, "month"    # I

    .prologue
    .line 1303
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    .line 1304
    iput p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    .line 1305
    return-void
.end method

.method public setSecond(I)V
    .locals 1
    .param p1, "second"    # I

    .prologue
    .line 1386
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    .line 1387
    iput p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    .line 1388
    return-void
.end method

.method public setTime(III)V
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 1357
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTime(IIILjava/math/BigDecimal;)V

    .line 1358
    return-void
.end method

.method public setTime(IIII)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "millisecond"    # I

    .prologue
    .line 1435
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    .line 1436
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    .line 1437
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    .line 1438
    invoke-virtual {p0, p4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMillisecond(I)V

    .line 1439
    return-void
.end method

.method public setTime(IIILjava/math/BigDecimal;)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "fractional"    # Ljava/math/BigDecimal;

    .prologue
    .line 1412
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    .line 1413
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    .line 1414
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    .line 1415
    invoke-virtual {p0, p4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    .line 1416
    return-void
.end method

.method public setTimezone(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1336
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->checkFieldValueConstraint(II)V

    .line 1337
    iput p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->timezone:I

    .line 1338
    return-void
.end method

.method public setYear(I)V
    .locals 5
    .param p1, "year"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, -0x80000000

    .line 1257
    if-ne p1, v2, :cond_0

    .line 1258
    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    .line 1259
    iput-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    .line 1271
    :goto_0
    return-void

    .line 1261
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const v3, 0x3b9aca00

    if-ge v2, v3, :cond_1

    .line 1262
    iput p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    .line 1263
    iput-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    goto :goto_0

    .line 1266
    :cond_1
    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 1267
    .local v1, "theYear":Ljava/math/BigInteger;
    sget-object v2, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->BILLION_B:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1268
    .local v0, "remainder":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    .line 1269
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setEon(Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method public setYear(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "year"    # Ljava/math/BigInteger;

    .prologue
    .line 1232
    if-nez p1, :cond_0

    .line 1233
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    .line 1234
    const/high16 v1, -0x80000000

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    .line 1241
    :goto_0
    return-void

    .line 1237
    :cond_0
    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->BILLION_B:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1238
    .local v0, "temp":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    .line 1239
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setEon(Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method public toGregorianCalendar()Ljava/util/GregorianCalendar;
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v9, -0x80000000

    .line 2482
    const/4 v3, 0x0

    .line 2483
    .local v3, "result":Ljava/util/GregorianCalendar;
    const/high16 v0, -0x80000000

    .line 2484
    .local v0, "DEFAULT_TIMEZONE_OFFSET":I
    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimeZone(I)Ljava/util/TimeZone;

    move-result-object v4

    .line 2485
    .local v4, "tz":Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 2487
    .local v2, "locale":Ljava/util/Locale;
    new-instance v3, Ljava/util/GregorianCalendar;

    .end local v3    # "result":Ljava/util/GregorianCalendar;
    invoke-direct {v3, v4, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 2488
    .restart local v3    # "result":Ljava/util/GregorianCalendar;
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->clear()V

    .line 2489
    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->PURE_GREGORIAN_CHANGE:Ljava/util/Date;

    invoke-virtual {v3, v5}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 2492
    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-eq v5, v9, :cond_0

    .line 2493
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v5, :cond_8

    .line 2494
    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-gez v5, :cond_7

    move v5, v6

    :goto_0
    invoke-virtual {v3, v6, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2495
    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v3, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2505
    :cond_0
    :goto_1
    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    if-eq v5, v9, :cond_1

    .line 2507
    const/4 v5, 0x2

    iget v6, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2511
    :cond_1
    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    if-eq v5, v9, :cond_2

    .line 2512
    const/4 v5, 0x5

    iget v6, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    invoke-virtual {v3, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2516
    :cond_2
    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    if-eq v5, v9, :cond_3

    .line 2517
    const/16 v5, 0xb

    iget v6, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    invoke-virtual {v3, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2521
    :cond_3
    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    if-eq v5, v9, :cond_4

    .line 2522
    const/16 v5, 0xc

    iget v6, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    invoke-virtual {v3, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2526
    :cond_4
    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    if-eq v5, v9, :cond_5

    .line 2527
    const/16 v5, 0xd

    iget v6, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    invoke-virtual {v3, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2531
    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-eqz v5, :cond_6

    .line 2532
    const/16 v5, 0xe

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMillisecond()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2535
    :cond_6
    return-object v3

    :cond_7
    move v5, v7

    .line 2494
    goto :goto_0

    .line 2498
    :cond_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v1

    .line 2499
    .local v1, "eonAndYear":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_9

    move v5, v6

    :goto_2
    invoke-virtual {v3, v6, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2500
    invoke-virtual {v1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-virtual {v3, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1

    :cond_9
    move v5, v7

    .line 2499
    goto :goto_2
.end method

.method public toGregorianCalendar(Ljava/util/TimeZone;Ljava/util/Locale;Lmf/javax/xml/datatype/XMLGregorianCalendar;)Ljava/util/GregorianCalendar;
    .locals 16
    .param p1, "timezone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;
    .param p3, "defaults"    # Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .prologue
    .line 2593
    const/4 v11, 0x0

    .line 2594
    .local v11, "result":Ljava/util/GregorianCalendar;
    move-object/from16 v12, p1

    .line 2595
    .local v12, "tz":Ljava/util/TimeZone;
    if-nez v12, :cond_1

    .line 2596
    const/high16 v9, -0x80000000

    .line 2597
    .local v9, "defaultZoneoffset":I
    if-eqz p3, :cond_0

    .line 2598
    invoke-virtual/range {p3 .. p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getTimezone()I

    move-result v9

    .line 2600
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getTimeZone(I)Ljava/util/TimeZone;

    move-result-object v12

    .line 2602
    .end local v9    # "defaultZoneoffset":I
    :cond_1
    if-nez p2, :cond_2

    .line 2603
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 2605
    :cond_2
    new-instance v11, Ljava/util/GregorianCalendar;

    .end local v11    # "result":Ljava/util/GregorianCalendar;
    move-object/from16 v0, p2

    invoke-direct {v11, v12, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 2606
    .restart local v11    # "result":Ljava/util/GregorianCalendar;
    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->clear()V

    .line 2607
    sget-object v13, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->PURE_GREGORIAN_CHANGE:Ljava/util/Date;

    invoke-virtual {v11, v13}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 2610
    move-object/from16 v0, p0

    iget v13, v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    const/high16 v14, -0x80000000

    if-eq v13, v14, :cond_d

    .line 2611
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->eon:Ljava/math/BigInteger;

    if-nez v13, :cond_b

    .line 2612
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    if-gez v13, :cond_a

    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v11, v14, v13}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2613
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->year:I

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    invoke-virtual {v11, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2640
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    const/high16 v14, -0x80000000

    if-eq v13, v14, :cond_11

    .line 2642
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->month:I

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v11, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2654
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    const/high16 v14, -0x80000000

    if-eq v13, v14, :cond_13

    .line 2655
    const/4 v13, 0x5

    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->day:I

    invoke-virtual {v11, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2666
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    const/high16 v14, -0x80000000

    if-eq v13, v14, :cond_15

    .line 2667
    const/16 v13, 0xb

    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->hour:I

    invoke-virtual {v11, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2678
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    const/high16 v14, -0x80000000

    if-eq v13, v14, :cond_17

    .line 2679
    const/16 v13, 0xc

    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->minute:I

    invoke-virtual {v11, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2690
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    const/high16 v14, -0x80000000

    if-eq v13, v14, :cond_19

    .line 2691
    const/16 v13, 0xd

    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->second:I

    invoke-virtual {v11, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2702
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->fractionalSecond:Ljava/math/BigDecimal;

    if-eqz v13, :cond_1b

    .line 2703
    const/16 v13, 0xe

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getMillisecond()I

    move-result v14

    invoke-virtual {v11, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2713
    :cond_9
    :goto_7
    return-object v11

    .line 2612
    :cond_a
    const/4 v13, 0x1

    goto :goto_0

    .line 2616
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v10

    .line 2617
    .local v10, "eonAndYear":Ljava/math/BigInteger;
    const/4 v14, 0x0

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v13

    const/4 v15, -0x1

    if-ne v13, v15, :cond_c

    const/4 v13, 0x0

    :goto_8
    invoke-virtual {v11, v14, v13}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2618
    const/4 v13, 0x1

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->intValue()I

    move-result v14

    invoke-virtual {v11, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    .line 2617
    :cond_c
    const/4 v13, 0x1

    goto :goto_8

    .line 2623
    .end local v10    # "eonAndYear":Ljava/math/BigInteger;
    :cond_d
    if-eqz p3, :cond_3

    .line 2624
    invoke-virtual/range {p3 .. p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getYear()I

    move-result v8

    .line 2625
    .local v8, "defaultYear":I
    const/high16 v13, -0x80000000

    if-eq v8, v13, :cond_3

    .line 2626
    invoke-virtual/range {p3 .. p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getEon()Ljava/math/BigInteger;

    move-result-object v13

    if-nez v13, :cond_f

    .line 2627
    const/4 v14, 0x0

    if-gez v8, :cond_e

    const/4 v13, 0x0

    :goto_9
    invoke-virtual {v11, v14, v13}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2628
    const/4 v13, 0x1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v14

    invoke-virtual {v11, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    .line 2627
    :cond_e
    const/4 v13, 0x1

    goto :goto_9

    .line 2631
    :cond_f
    invoke-virtual/range {p3 .. p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getEonAndYear()Ljava/math/BigInteger;

    move-result-object v2

    .line 2632
    .local v2, "defaultEonAndYear":Ljava/math/BigInteger;
    const/4 v14, 0x0

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v13

    const/4 v15, -0x1

    if-ne v13, v15, :cond_10

    const/4 v13, 0x0

    :goto_a
    invoke-virtual {v11, v14, v13}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2633
    const/4 v13, 0x1

    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->intValue()I

    move-result v14

    invoke-virtual {v11, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    .line 2632
    :cond_10
    const/4 v13, 0x1

    goto :goto_a

    .line 2646
    .end local v2    # "defaultEonAndYear":Ljava/math/BigInteger;
    .end local v8    # "defaultYear":I
    :cond_11
    if-eqz p3, :cond_12

    invoke-virtual/range {p3 .. p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMonth()I

    move-result v6

    .line 2647
    .local v6, "defaultMonth":I
    :goto_b
    const/high16 v13, -0x80000000

    if-eq v6, v13, :cond_4

    .line 2649
    const/4 v13, 0x2

    add-int/lit8 v14, v6, -0x1

    invoke-virtual {v11, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_2

    .line 2646
    .end local v6    # "defaultMonth":I
    :cond_12
    const/high16 v6, -0x80000000

    goto :goto_b

    .line 2659
    :cond_13
    if-eqz p3, :cond_14

    invoke-virtual/range {p3 .. p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getDay()I

    move-result v1

    .line 2660
    .local v1, "defaultDay":I
    :goto_c
    const/high16 v13, -0x80000000

    if-eq v1, v13, :cond_5

    .line 2661
    const/4 v13, 0x5

    invoke-virtual {v11, v13, v1}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_3

    .line 2659
    .end local v1    # "defaultDay":I
    :cond_14
    const/high16 v1, -0x80000000

    goto :goto_c

    .line 2671
    :cond_15
    if-eqz p3, :cond_16

    invoke-virtual/range {p3 .. p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getHour()I

    move-result v4

    .line 2672
    .local v4, "defaultHour":I
    :goto_d
    const/high16 v13, -0x80000000

    if-eq v4, v13, :cond_6

    .line 2673
    const/16 v13, 0xb

    invoke-virtual {v11, v13, v4}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_4

    .line 2671
    .end local v4    # "defaultHour":I
    :cond_16
    const/high16 v4, -0x80000000

    goto :goto_d

    .line 2683
    :cond_17
    if-eqz p3, :cond_18

    invoke-virtual/range {p3 .. p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMinute()I

    move-result v5

    .line 2684
    .local v5, "defaultMinute":I
    :goto_e
    const/high16 v13, -0x80000000

    if-eq v5, v13, :cond_7

    .line 2685
    const/16 v13, 0xc

    invoke-virtual {v11, v13, v5}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_5

    .line 2683
    .end local v5    # "defaultMinute":I
    :cond_18
    const/high16 v5, -0x80000000

    goto :goto_e

    .line 2695
    :cond_19
    if-eqz p3, :cond_1a

    invoke-virtual/range {p3 .. p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getSecond()I

    move-result v7

    .line 2696
    .local v7, "defaultSecond":I
    :goto_f
    const/high16 v13, -0x80000000

    if-eq v7, v13, :cond_8

    .line 2697
    const/16 v13, 0xd

    invoke-virtual {v11, v13, v7}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_6

    .line 2695
    .end local v7    # "defaultSecond":I
    :cond_1a
    const/high16 v7, -0x80000000

    goto :goto_f

    .line 2707
    :cond_1b
    if-eqz p3, :cond_1c

    invoke-virtual/range {p3 .. p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v3

    .line 2708
    .local v3, "defaultFractionalSecond":Ljava/math/BigDecimal;
    :goto_10
    if-eqz v3, :cond_9

    .line 2709
    const/16 v13, 0xe

    invoke-virtual/range {p3 .. p3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->getMillisecond()I

    move-result v14

    invoke-virtual {v11, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_7

    .line 2707
    .end local v3    # "defaultFractionalSecond":Ljava/math/BigDecimal;
    :cond_1c
    const/4 v3, 0x0

    goto :goto_10
.end method

.method public toXMLFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1795
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->getXMLSchemaType()Lmf/javax/xml/namespace/QName;

    move-result-object v1

    .line 1797
    .local v1, "typekind":Lmf/javax/xml/namespace/QName;
    const/4 v0, 0x0

    .line 1798
    .local v0, "formatString":Ljava/lang/String;
    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->DATETIME:Lmf/javax/xml/namespace/QName;

    if-ne v1, v2, :cond_1

    .line 1799
    const-string v0, "%Y-%M-%DT%h:%m:%s%z"

    .line 1826
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1801
    :cond_1
    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->DATE:Lmf/javax/xml/namespace/QName;

    if-ne v1, v2, :cond_2

    .line 1803
    const-string v0, "%Y-%M-%D%z"

    .line 1804
    goto :goto_0

    .line 1805
    :cond_2
    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->TIME:Lmf/javax/xml/namespace/QName;

    if-ne v1, v2, :cond_3

    .line 1806
    const-string v0, "%h:%m:%s%z"

    .line 1807
    goto :goto_0

    .line 1808
    :cond_3
    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->GMONTH:Lmf/javax/xml/namespace/QName;

    if-ne v1, v2, :cond_4

    .line 1809
    const-string v0, "--%M--%z"

    .line 1810
    goto :goto_0

    .line 1811
    :cond_4
    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->GDAY:Lmf/javax/xml/namespace/QName;

    if-ne v1, v2, :cond_5

    .line 1813
    const-string v0, "---%D%z"

    .line 1814
    goto :goto_0

    .line 1815
    :cond_5
    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->GYEAR:Lmf/javax/xml/namespace/QName;

    if-ne v1, v2, :cond_6

    .line 1816
    const-string v0, "%Y%z"

    .line 1817
    goto :goto_0

    .line 1818
    :cond_6
    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->GYEARMONTH:Lmf/javax/xml/namespace/QName;

    if-ne v1, v2, :cond_7

    .line 1820
    const-string v0, "%Y-%M%z"

    .line 1821
    goto :goto_0

    .line 1822
    :cond_7
    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->GMONTHDAY:Lmf/javax/xml/namespace/QName;

    if-ne v1, v2, :cond_0

    .line 1824
    const-string v0, "--%M-%D%z"

    goto :goto_0
.end method
