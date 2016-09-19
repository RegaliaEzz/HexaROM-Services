.class public abstract Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "AbstractDateTimeDV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    }
.end annotation


# static fields
.field protected static final DAY:I = 0x1

.field private static final DEBUG:Z = false

.field protected static final MONTH:I = 0x1

.field protected static final YEAR:I = 0x7d0

.field protected static final datatypeFactory:Lmf/javax/xml/datatype/DatatypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DatatypeFactoryImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/datatype/DatatypeFactoryImpl;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->datatypeFactory:Lmf/javax/xml/datatype/DatatypeFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method

.method private append3(Ljava/lang/StringBuffer;D)V
    .locals 12
    .param p1, "message"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # D

    .prologue
    const/16 v11, 0x30

    const/16 v10, 0x2e

    .line 805
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 806
    .local v1, "d":Ljava/lang/String;
    const/16 v8, 0x45

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 807
    .local v3, "eIndex":I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_1

    .line 808
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, p2, v8

    if-gez v8, :cond_6

    .line 816
    add-int/lit8 v8, v3, 0x2

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v1, v8, v9}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 824
    .local v5, "exp":I
    const-string v8, "0."

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 825
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    if-lt v6, v5, :cond_4

    .line 829
    add-int/lit8 v4, v3, -0x1

    .line 830
    .local v4, "end":I
    :goto_2
    if-gtz v4, :cond_5

    .line 838
    :cond_2
    const/4 v6, 0x0

    :goto_3
    if-gt v6, v4, :cond_0

    .line 839
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 840
    .local v0, "c":C
    if-eq v0, v10, :cond_3

    .line 841
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 838
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 820
    .end local v0    # "c":C
    .end local v4    # "end":I
    .end local v5    # "exp":I
    .end local v6    # "i":I
    :catch_0
    move-exception v2

    .line 821
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 826
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "exp":I
    .restart local v6    # "i":I
    :cond_4
    invoke-virtual {p1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 825
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 831
    .restart local v4    # "end":I
    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 832
    .restart local v0    # "c":C
    if-ne v0, v11, :cond_2

    .line 835
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 849
    .end local v0    # "c":C
    .end local v4    # "end":I
    .end local v5    # "exp":I
    .end local v6    # "i":I
    :cond_6
    add-int/lit8 v8, v3, 0x1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v1, v8, v9}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 857
    .restart local v5    # "exp":I
    add-int/lit8 v7, v5, 0x2

    .line 858
    .local v7, "integerEnd":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    if-lt v6, v3, :cond_7

    .line 868
    sub-int v6, v7, v3

    :goto_5
    if-lez v6, :cond_0

    .line 869
    invoke-virtual {p1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 868
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 853
    .end local v5    # "exp":I
    .end local v6    # "i":I
    .end local v7    # "integerEnd":I
    :catch_1
    move-exception v2

    .line 854
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 859
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "exp":I
    .restart local v6    # "i":I
    .restart local v7    # "integerEnd":I
    :cond_7
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 860
    .restart local v0    # "c":C
    if-eq v0, v10, :cond_9

    .line 861
    if-ne v6, v7, :cond_8

    .line 862
    invoke-virtual {p1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 864
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 858
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4
.end method

.method private cloneDate(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V
    .locals 2
    .param p1, "finalValue"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .param p2, "tempDate"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    .line 899
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iput v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    .line 900
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iput v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    .line 901
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iput v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 902
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iput v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    .line 903
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iput v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    .line 904
    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iput-wide v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    .line 905
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    iput v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    .line 906
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    iput v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    .line 907
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    iput v0, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    .line 908
    return-void
.end method

.method private isLeapYear(I)Z
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 697
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final append(Ljava/lang/StringBuffer;D)V
    .locals 2
    .param p1, "message"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # D

    .prologue
    .line 784
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_0

    .line 785
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 786
    neg-double p2, p2

    .line 788
    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_1

    .line 789
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 791
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append2(Ljava/lang/StringBuffer;D)V

    .line 792
    return-void
.end method

.method protected final append(Ljava/lang/StringBuffer;II)V
    .locals 3
    .param p1, "message"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # I
    .param p3, "nch"    # I

    .prologue
    const/16 v2, 0x30

    const/16 v1, 0xa

    .line 755
    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_1

    .line 756
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    if-gez p2, :cond_2

    .line 760
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 761
    neg-int p2, p2

    .line 763
    :cond_2
    const/4 v0, 0x4

    if-ne p3, v0, :cond_6

    .line 764
    if-ge p2, v1, :cond_4

    .line 765
    const-string v0, "000"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 770
    :cond_3
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 766
    :cond_4
    const/16 v0, 0x64

    if-ge p2, v0, :cond_5

    .line 767
    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 768
    :cond_5
    const/16 v0, 0x3e8

    if-ge p2, v0, :cond_3

    .line 769
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 772
    :cond_6
    const/4 v0, 0x2

    if-ne p3, v0, :cond_8

    .line 773
    if-ge p2, v1, :cond_7

    .line 774
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 775
    :cond_7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 778
    :cond_8
    if-eqz p2, :cond_0

    .line 779
    int-to-char v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected final append2(Ljava/lang/StringBuffer;D)V
    .locals 4
    .param p1, "message"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # D

    .prologue
    .line 795
    double-to-int v0, p2

    .line 796
    .local v0, "intValue":I
    int-to-double v2, v0

    cmpl-double v1, p2, v2

    if-nez v1, :cond_0

    .line 797
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 802
    :goto_0
    return-void

    .line 800
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append3(Ljava/lang/StringBuffer;D)V

    goto :goto_0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .prologue
    .line 93
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .line 94
    .end local p1    # "value1":Ljava/lang/Object;
    check-cast p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .end local p2    # "value2":Ljava/lang/Object;
    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->compareDates(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Z)S

    move-result v0

    return v0
.end method

.method protected compareDates(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Z)S
    .locals 10
    .param p1, "date1"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .param p2, "date2"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .param p3, "strict"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/16 v7, -0xe

    const/4 v3, 0x2

    const/4 v6, 0x0

    .line 107
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    iget v5, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-ne v4, v5, :cond_1

    .line 108
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v0

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    .line 114
    .local v2, "tempDate":Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_3

    .line 118
    invoke-direct {p0, p2, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->cloneDate(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 119
    const/16 v4, 0xe

    iput v4, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    .line 120
    iput v6, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    .line 121
    const/16 v4, 0x2b

    iput v4, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    .line 122
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 123
    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v0

    .line 124
    .local v0, "c1":S
    if-eq v0, v8, :cond_0

    .line 129
    invoke-direct {p0, p2, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->cloneDate(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 130
    iput v7, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    .line 131
    iput v6, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    .line 132
    const/16 v4, 0x2d

    iput v4, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    .line 133
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 134
    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v1

    .line 135
    .local v1, "c2":S
    if-ne v1, v9, :cond_2

    move v0, v1

    .line 136
    goto :goto_0

    :cond_2
    move v0, v3

    .line 138
    goto :goto_0

    .line 140
    .end local v0    # "c1":S
    .end local v1    # "c2":S
    :cond_3
    iget v4, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_5

    .line 144
    invoke-direct {p0, p1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->cloneDate(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 145
    iput v7, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    .line 146
    iput v6, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    .line 147
    const/16 v4, 0x2d

    iput v4, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    .line 151
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 152
    invoke-virtual {p0, v2, p2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v0

    .line 157
    .restart local v0    # "c1":S
    if-eq v0, v8, :cond_0

    .line 162
    invoke-direct {p0, p1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->cloneDate(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 163
    const/16 v4, 0xe

    iput v4, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    .line 164
    iput v6, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    .line 165
    const/16 v4, 0x2b

    iput v4, v2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    .line 166
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    .line 167
    invoke-virtual {p0, v2, p2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S

    move-result v1

    .line 171
    .restart local v1    # "c2":S
    if-ne v1, v9, :cond_4

    move v0, v1

    .line 172
    goto :goto_0

    :cond_4
    move v0, v3

    .line 174
    goto :goto_0

    .end local v0    # "c1":S
    .end local v1    # "c2":S
    :cond_5
    move v0, v3

    .line 176
    goto :goto_0
.end method

.method protected compareOrder(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)S
    .locals 6
    .param p1, "date1"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .param p2, "date2"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 189
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->position:I

    if-ge v2, v1, :cond_2

    .line 190
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-ge v2, v3, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 193
    goto :goto_0

    .line 195
    :cond_2
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->position:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 196
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iget v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-lt v2, v3, :cond_0

    .line 198
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iget v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-le v2, v3, :cond_3

    move v0, v1

    .line 199
    goto :goto_0

    .line 201
    :cond_3
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-lt v2, v3, :cond_0

    .line 203
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-le v2, v3, :cond_4

    move v0, v1

    .line 204
    goto :goto_0

    .line 205
    :cond_4
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iget v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-lt v2, v3, :cond_0

    .line 207
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iget v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-le v2, v3, :cond_5

    move v0, v1

    .line 208
    goto :goto_0

    .line 209
    :cond_5
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iget v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-lt v2, v3, :cond_0

    .line 211
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iget v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-le v2, v3, :cond_6

    move v0, v1

    .line 212
    goto :goto_0

    .line 213
    :cond_6
    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iget-wide v4, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 215
    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iget-wide v4, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_7

    move v0, v1

    .line 216
    goto :goto_0

    .line 217
    :cond_7
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    iget v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-lt v2, v3, :cond_0

    .line 219
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    iget v2, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-le v0, v2, :cond_8

    move v0, v1

    .line 220
    goto :goto_0

    .line 221
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dateToString(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/lang/String;
    .locals 6
    .param p1, "date"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    const/16 v5, 0x3a

    const/16 v4, 0x2d

    const/4 v3, 0x2

    .line 738
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 739
    .local v0, "message":Ljava/lang/StringBuffer;
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

    .line 740
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 741
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    invoke-virtual {p0, v0, v1, v3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

    .line 742
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 743
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    invoke-virtual {p0, v0, v1, v3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

    .line 744
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 745
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    invoke-virtual {p0, v0, v1, v3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

    .line 746
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 747
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    invoke-virtual {p0, v0, v1, v3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

    .line 748
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 749
    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    invoke-virtual {p0, v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;D)V

    .line 750
    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append(Ljava/lang/StringBuffer;II)V

    .line 751
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected fQuotient(II)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 714
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected fQuotient(III)I
    .locals 2
    .param p1, "temp"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .prologue
    .line 733
    sub-int v0, p1, p2

    sub-int v1, p3, p2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->fQuotient(II)I

    move-result v0

    return v0
.end method

.method protected findUTCSign(Ljava/lang/String;II)I
    .locals 3
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 490
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-lt v1, p3, :cond_1

    .line 497
    const/4 v1, -0x1

    .end local v1    # "i":I
    :cond_0
    return v1

    .line 491
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 492
    .local v0, "c":I
    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_0

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAllowedFacets()S
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x9f8

    return v0
.end method

.method protected getDate(Ljava/lang/String;IILmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)I
    .locals 4
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "date"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getYearMonth(Ljava/lang/String;IILmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)I

    move-result p2

    .line 280
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "start":I
    .local v0, "start":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    .line 281
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CCYY-MM must be followed by \'-\' sign"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 283
    :cond_0
    add-int/lit8 v1, v0, 0x2

    .line 284
    .local v1, "stop":I
    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v2

    iput v2, p4, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 285
    return v1
.end method

.method protected getDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/Duration;
    .locals 1
    .param p1, "data"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    .line 1089
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getFractionalSecondsAsBigDecimal(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/math/BigDecimal;
    .locals 8
    .param p1, "data"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    const/4 v4, 0x0

    .line 1093
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1094
    .local v1, "buf":Ljava/lang/StringBuffer;
    iget-wide v6, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormSecond:D

    invoke-direct {p0, v1, v6, v7}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->append3(Ljava/lang/StringBuffer;D)V

    .line 1095
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1096
    .local v3, "value":Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1097
    .local v2, "index":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    move-object v0, v4

    .line 1105
    :cond_0
    :goto_0
    return-object v0

    .line 1100
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1101
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v0, "_val":Ljava/math/BigDecimal;
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-nez v5, :cond_0

    move-object v0, v4

    .line 1103
    goto :goto_0
.end method

.method protected getTime(Ljava/lang/String;IILmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V
    .locals 6
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "data"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3a

    .line 234
    add-int/lit8 v1, p2, 0x2

    .line 237
    .local v1, "stop":I
    invoke-virtual {p0, p1, p2, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v3

    iput v3, p4, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    .line 241
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "stop":I
    .local v2, "stop":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    .line 242
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error in parsing time zone"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    :cond_0
    move p2, v2

    .line 245
    add-int/lit8 v1, v2, 0x2

    .line 246
    .end local v2    # "stop":I
    .restart local v1    # "stop":I
    invoke-virtual {p0, p1, p2, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v3

    iput v3, p4, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    .line 249
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "stop":I
    .restart local v2    # "stop":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_1

    .line 250
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error in parsing time zone"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->findUTCSign(Ljava/lang/String;II)I

    move-result v0

    .line 257
    .local v0, "sign":I
    move p2, v2

    .line 258
    if-gez v0, :cond_3

    move v1, p3

    .line 259
    .end local v2    # "stop":I
    .restart local v1    # "stop":I
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseSecond(Ljava/lang/String;II)D

    move-result-wide v4

    iput-wide v4, p4, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    .line 262
    if-lez v0, :cond_2

    .line 263
    invoke-virtual {p0, p1, p4, v0, p3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getTimeZone(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;II)V

    .line 265
    :cond_2
    return-void

    .end local v1    # "stop":I
    .restart local v2    # "stop":I
    :cond_3
    move v1, v0

    .line 258
    goto :goto_0
.end method

.method protected getTimeZone(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;II)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .param p3, "sign"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    .line 356
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_0

    .line 357
    add-int/lit8 p3, p3, 0x1

    if-le p4, p3, :cond_5

    .line 358
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error in parsing time zone"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    :cond_0
    add-int/lit8 v3, p4, -0x6

    if-gt p3, v3, :cond_6

    .line 364
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    const/4 v0, -0x1

    .line 366
    .local v0, "negate":I
    :goto_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, p3, 0x2

    .line 367
    .local v1, "stop":I
    invoke-virtual {p0, p1, p3, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v3

    mul-int/2addr v3, v0

    iput v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    .line 368
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "stop":I
    .local v2, "stop":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_2

    .line 369
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error in parsing time zone"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 364
    .end local v0    # "negate":I
    .end local v2    # "stop":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 373
    .restart local v0    # "negate":I
    .restart local v2    # "stop":I
    :cond_2
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, p1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v3

    mul-int/2addr v3, v0

    iput v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    .line 375
    add-int/lit8 v3, v2, 0x2

    if-eq v3, p4, :cond_3

    .line 376
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error in parsing time zone"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 378
    :cond_3
    iget v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    if-nez v3, :cond_4

    iget v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    if-eqz v3, :cond_5

    .line 379
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->normalized:Z

    .line 387
    .end local v0    # "negate":I
    .end local v2    # "stop":I
    :cond_5
    return-void

    .line 382
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error in parsing time zone"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected getXMLGregorianCalendar(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 1
    .param p1, "data"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    .line 1085
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getYearMonth(Ljava/lang/String;IILmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)I
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "date"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/16 v4, 0x2d

    .line 299
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 303
    add-int/lit8 p2, p2, 0x1

    .line 305
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v4}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->indexOf(Ljava/lang/String;IIC)I

    move-result v0

    .line 306
    .local v0, "i":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Year separator is missing or misplaced"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 307
    :cond_1
    sub-int v1, v0, p2

    .line 308
    .local v1, "length":I
    if-ge v1, v3, :cond_2

    .line 309
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Year must have \'CCYY\' format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 311
    :cond_2
    if-le v1, v3, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    .line 312
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Leading zeros are required if the year value would otherwise have fewer than four digits; otherwise they are forbidden"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    :cond_3
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseIntYear(Ljava/lang/String;I)I

    move-result v2

    iput v2, p4, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    .line 315
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_4

    .line 316
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CCYY must be followed by \'-\' sign"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_4
    add-int/lit8 v0, v0, 0x1

    move p2, v0

    .line 319
    add-int/lit8 v0, p2, 0x2

    .line 320
    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->parseInt(Ljava/lang/String;II)I

    move-result v2

    iput v2, p4, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    .line 321
    return v0
.end method

.method protected indexOf(Ljava/lang/String;IIC)I
    .locals 2
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ch"    # C

    .prologue
    .line 398
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_1

    .line 403
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 399
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, p4, :cond_0

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 75
    instance-of v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    if-eqz v3, :cond_0

    instance-of v3, p2, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    if-nez v3, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 79
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .local v0, "v1":Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    move-object v1, p2

    .line 80
    check-cast v1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .line 84
    .local v1, "v2":Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    iget v3, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    iget v4, v1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    if-ne v3, v4, :cond_0

    iget v3, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    iget v4, v1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    if-ne v3, v4, :cond_0

    .line 85
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method protected final isNextCharUTCSign(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 504
    if-ge p2, p3, :cond_0

    .line 505
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 506
    .local v0, "c":C
    const/16 v2, 0x5a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_1

    .line 508
    .end local v0    # "c":C
    :cond_0
    :goto_0
    return v1

    .line 506
    .restart local v0    # "c":C
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected maxDayInMonthFor(II)I
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 678
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/16 v0, 0x9

    if-eq p2, v0, :cond_0

    const/16 v0, 0xb

    if-ne p2, v0, :cond_1

    .line 679
    :cond_0
    const/16 v0, 0x1e

    .line 690
    :goto_0
    return v0

    .line 681
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 682
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    const/16 v0, 0x1d

    goto :goto_0

    .line 686
    :cond_2
    const/16 v0, 0x1c

    goto :goto_0

    .line 690
    :cond_3
    const/16 v0, 0x1f

    goto :goto_0
.end method

.method protected mod(III)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "quotient"    # I

    .prologue
    .line 705
    mul-int v0, p3, p2

    sub-int v0, p1, v0

    return v0
.end method

.method protected modulo(III)I
    .locals 3
    .param p1, "temp"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .prologue
    .line 722
    sub-int v0, p1, p2

    .line 723
    .local v0, "a":I
    sub-int v1, p3, p2

    .line 724
    .local v1, "b":I
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->fQuotient(II)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->mod(III)I

    move-result v2

    add-int/2addr v2, p2

    return v2
.end method

.method protected normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V
    .locals 9
    .param p1, "date"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    const/16 v8, 0x3c

    const/16 v6, 0x18

    const/16 v7, 0xd

    const/4 v4, 0x1

    .line 591
    const/4 v1, -0x1

    .line 597
    .local v1, "negate":I
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    mul-int/2addr v5, v1

    add-int v2, v3, v5

    .line 598
    .local v2, "temp":I
    invoke-virtual {p0, v2, v8}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->fQuotient(II)I

    move-result v0

    .line 599
    .local v0, "carry":I
    invoke-virtual {p0, v2, v8, v0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->mod(III)I

    move-result v3

    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    .line 605
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    mul-int/2addr v5, v1

    add-int/2addr v3, v5

    add-int v2, v3, v0

    .line 606
    invoke-virtual {p0, v2, v6}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->fQuotient(II)I

    move-result v0

    .line 607
    invoke-virtual {p0, v2, v6, v0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->mod(III)I

    move-result v3

    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    .line 613
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    add-int/2addr v3, v0

    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 616
    :cond_0
    :goto_0
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    invoke-virtual {p0, v3, v5}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->maxDayInMonthFor(II)I

    move-result v2

    .line 617
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-ge v3, v4, :cond_2

    .line 618
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v6, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->maxDayInMonthFor(II)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 619
    const/4 v0, -0x1

    .line 628
    :goto_1
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int v2, v3, v0

    .line 629
    invoke-virtual {p0, v2, v4, v7}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->modulo(III)I

    move-result v3

    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    .line 630
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    invoke-virtual {p0, v2, v4, v7}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->fQuotient(III)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    .line 631
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-nez v3, :cond_0

    .line 632
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    if-ltz v3, :cond_1

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    if-gez v3, :cond_3

    :cond_1
    move v3, v4

    :goto_2
    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    goto :goto_0

    .line 621
    :cond_2
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-le v3, v2, :cond_4

    .line 622
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    sub-int/2addr v3, v2

    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 623
    const/4 v0, 0x1

    goto :goto_1

    .line 632
    :cond_3
    const/4 v3, -0x1

    goto :goto_2

    .line 635
    :cond_4
    const/16 v3, 0x5a

    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    .line 636
    return-void
.end method

.method protected parseInt(Ljava/lang/String;II)I
    .locals 9
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 522
    const/16 v4, 0xa

    .line 523
    .local v4, "radix":I
    const/4 v5, 0x0

    .line 524
    .local v5, "result":I
    const/4 v0, 0x0

    .line 525
    .local v0, "digit":I
    const v2, -0x7fffffff

    .line 526
    .local v2, "limit":I
    div-int v3, v2, v4

    .line 527
    .local v3, "multmin":I
    move v1, p2

    .line 529
    .local v1, "i":I
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getDigit(C)I

    move-result v0

    .line 530
    if-gez v0, :cond_1

    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' has wrong format"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 531
    :cond_1
    if-ge v5, v3, :cond_2

    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' has wrong format"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 532
    :cond_2
    mul-int/2addr v5, v4

    .line 533
    add-int v6, v2, v0

    if-ge v5, v6, :cond_3

    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' has wrong format"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 534
    :cond_3
    sub-int/2addr v5, v0

    .line 536
    add-int/lit8 v1, v1, 0x1

    .line 528
    if-lt v1, p3, :cond_0

    .line 537
    neg-int v6, v5

    return v6
.end method

.method protected parseIntYear(Ljava/lang/String;I)I
    .locals 11
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "end"    # I

    .prologue
    .line 542
    const/16 v6, 0xa

    .line 543
    .local v6, "radix":I
    const/4 v7, 0x0

    .line 544
    .local v7, "result":I
    const/4 v5, 0x0

    .line 545
    .local v5, "negative":Z
    const/4 v1, 0x0

    .line 548
    .local v1, "i":I
    const/4 v0, 0x0

    .line 550
    .local v0, "digit":I
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_0

    .line 551
    const/4 v5, 0x1

    .line 552
    const/high16 v3, -0x80000000

    .line 553
    .local v3, "limit":I
    add-int/lit8 v1, v1, 0x1

    .line 559
    :goto_0
    div-int v4, v3, v6

    .local v4, "multmin":I
    move v2, v1

    .line 560
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-lt v2, p2, :cond_1

    .line 570
    if-eqz v5, :cond_6

    .line 572
    const/4 v8, 0x1

    if-le v2, v8, :cond_5

    .line 575
    .end local v7    # "result":I
    :goto_2
    return v7

    .line 557
    .end local v2    # "i":I
    .end local v3    # "limit":I
    .end local v4    # "multmin":I
    .restart local v1    # "i":I
    .restart local v7    # "result":I
    :cond_0
    const v3, -0x7fffffff

    .restart local v3    # "limit":I
    goto :goto_0

    .line 562
    .end local v1    # "i":I
    .restart local v2    # "i":I
    .restart local v4    # "multmin":I
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getDigit(C)I

    move-result v0

    .line 563
    if-gez v0, :cond_2

    new-instance v8, Ljava/lang/NumberFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' has wrong format"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 564
    :cond_2
    if-ge v7, v4, :cond_3

    new-instance v8, Ljava/lang/NumberFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' has wrong format"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 565
    :cond_3
    mul-int/2addr v7, v6

    .line 566
    add-int v8, v3, v0

    if-ge v7, v8, :cond_4

    new-instance v8, Ljava/lang/NumberFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' has wrong format"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 567
    :cond_4
    sub-int/2addr v7, v0

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 573
    :cond_5
    new-instance v8, Ljava/lang/NumberFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' has wrong format"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 575
    :cond_6
    neg-int v7, v7

    goto/16 :goto_2
.end method

.method protected parseSecond(Ljava/lang/String;II)D
    .locals 6
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 876
    const/4 v1, -0x1

    .line 877
    .local v1, "dot":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-lt v2, p3, :cond_0

    .line 884
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 885
    add-int/lit8 v3, p2, 0x2

    if-eq v3, p3, :cond_6

    .line 886
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' has wrong format"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 878
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 879
    .local v0, "ch":C
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2

    .line 880
    move v1, v2

    .line 877
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 881
    :cond_2
    const/16 v3, 0x39

    if-gt v0, v3, :cond_3

    const/16 v3, 0x30

    if-ge v0, v3, :cond_1

    .line 882
    :cond_3
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' has wrong format"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 888
    .end local v0    # "ch":C
    :cond_4
    add-int/lit8 v3, p2, 0x2

    if-ne v3, v1, :cond_5

    add-int/lit8 v3, v1, 0x1

    if-ne v3, p3, :cond_6

    .line 889
    :cond_5
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' has wrong format"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 891
    :cond_6
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    return-wide v4
.end method

.method protected parseTimeZone(Ljava/lang/String;IILmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "date"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 336
    if-ge p2, p3, :cond_1

    .line 337
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->isNextCharUTCSign(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error in month parsing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    invoke-virtual {p0, p1, p4, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getTimeZone(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;II)V

    .line 344
    :cond_1
    return-void
.end method

.method protected resetDateObj(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V
    .locals 3
    .param p1, "data"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    const/4 v2, 0x0

    .line 657
    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    .line 658
    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    .line 659
    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 660
    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    .line 661
    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    .line 662
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    .line 663
    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    .line 664
    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    .line 665
    iput v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    .line 666
    return-void
.end method

.method protected saveUnnormalized(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V
    .locals 2
    .param p1, "date"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    .line 643
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormYear:I

    .line 644
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMonth:I

    .line 645
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormDay:I

    .line 646
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormHour:I

    .line 647
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMinute:I

    .line 648
    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    iput-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormSecond:D

    .line 649
    return-void
.end method

.method protected validateDateTime(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V
    .locals 9
    .param p1, "data"    # Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xc

    const/16 v6, -0xe

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 420
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The year \"0000\" is an illegal year value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_0
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-lt v0, v3, :cond_1

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-le v0, v7, :cond_2

    .line 426
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The month must have values 1 to 12"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_2
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->maxDayInMonthFor(II)I

    move-result v1

    if-gt v0, v1, :cond_3

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-ge v0, v3, :cond_4

    .line 432
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The day must have values 1 to 31"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_4
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_5

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-gez v0, :cond_6

    .line 437
    :cond_5
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_8

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-nez v0, :cond_8

    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_8

    .line 438
    const/4 v0, 0x0

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    .line 439
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->maxDayInMonthFor(II)I

    move-result v1

    if-le v0, v1, :cond_6

    .line 440
    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    .line 441
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-le v0, v7, :cond_6

    .line 442
    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    .line 446
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-nez v0, :cond_6

    .line 447
    iput v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    .line 458
    :cond_6
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    const/16 v1, 0x3b

    if-gt v0, v1, :cond_7

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-gez v0, :cond_9

    .line 459
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Minute must have values 0-59"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Hour must have values 0-23, unless 24:00:00"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_9
    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    cmpl-double v0, v0, v2

    if-gez v0, :cond_a

    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_b

    .line 464
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Second must have values 0-59"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_b
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    if-gt v0, v8, :cond_c

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    if-ge v0, v6, :cond_d

    .line 470
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Time zone should have range -14:00 to +14:00"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_d
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    if-eq v0, v8, :cond_e

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    if-ne v0, v6, :cond_f

    :cond_e
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    if-eqz v0, :cond_f

    .line 474
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Time zone should have range -14:00 to +14:00"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_f
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    const/16 v1, 0x3b

    if-gt v0, v1, :cond_10

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    const/16 v1, -0x3b

    if-ge v0, v1, :cond_11

    .line 476
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Minute must have values 0-59"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_11
    return-void
.end method
