.class final Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;
.super Ljava/lang/Object;
.source "XMLGregorianCalendarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Parser"
.end annotation


# instance fields
.field private fidx:I

.field private final flen:I

.field private final format:Ljava/lang/String;

.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

.field private final value:Ljava/lang/String;

.field private vidx:I

.field private final vlen:I


# direct methods
.method private constructor <init>(Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 2835
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2836
    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->format:Ljava/lang/String;

    .line 2837
    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    .line 2838
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->flen:I

    .line 2839
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vlen:I

    .line 2840
    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;)V
    .locals 0

    .prologue
    .line 2835
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;-><init>(Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parseBigDecimal()Ljava/math/BigDecimal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2985
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    .line 2987
    .local v0, "vstart":I
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    .line 2988
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    .line 2992
    :goto_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v1

    # invokes: Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isDigit(C)Z
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->access$0(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2995
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 2990
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2993
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    goto :goto_0
.end method

.method private parseInt(II)I
    .locals 3
    .param p1, "minDigits"    # I
    .param p2, "maxDigits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2965
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    .line 2966
    .local v0, "vstart":I
    :goto_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v1

    # invokes: Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isDigit(C)Z
    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->access$0(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    sub-int/2addr v1, v0

    if-lt v1, p2, :cond_1

    .line 2969
    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    sub-int/2addr v1, v0

    if-ge v1, p1, :cond_2

    .line 2971
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2967
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    goto :goto_0

    .line 2976
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private parseYear()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2938
    iget v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    .line 2939
    .local v2, "vstart":I
    const/4 v1, 0x0

    .line 2942
    .local v1, "sign":I
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_0

    .line 2943
    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    .line 2944
    const/4 v1, 0x1

    .line 2946
    :cond_0
    :goto_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v4

    # invokes: Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->isDigit(C)Z
    invoke-static {v4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->access$0(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2949
    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    sub-int/2addr v4, v2

    sub-int v0, v4, v1

    .line 2950
    .local v0, "digits":I
    const/4 v4, 0x4

    if-ge v0, v4, :cond_2

    .line 2952
    new-instance v4, Ljava/lang/IllegalArgumentException;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2947
    .end local v0    # "digits":I
    :cond_1
    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    goto :goto_0

    .line 2954
    .restart local v0    # "digits":I
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2955
    .local v3, "yearString":Ljava/lang/String;
    const/16 v4, 0xa

    if-ge v0, v4, :cond_3

    .line 2956
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(I)V

    .line 2961
    :goto_1
    return-void

    .line 2959
    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setYear(Ljava/math/BigInteger;)V

    goto :goto_1
.end method

.method private peek()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2917
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vlen:I

    if-ne v0, v1, :cond_0

    .line 2918
    const v0, 0xffff

    .line 2920
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private read()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2924
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vlen:I

    if-ne v0, v1, :cond_0

    .line 2925
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2927
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private skip(C)V
    .locals 2
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2931
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->read()C

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2932
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2934
    :cond_0
    return-void
.end method


# virtual methods
.method public parse()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2b

    const/4 v7, 0x2

    .line 2851
    :cond_0
    :goto_0
    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->flen:I

    if-lt v4, v5, :cond_1

    .line 2910
    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vlen:I

    if-eq v4, v5, :cond_6

    .line 2912
    new-instance v4, Ljava/lang/IllegalArgumentException;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2852
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->format:Ljava/lang/String;

    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2854
    .local v0, "fch":C
    const/16 v4, 0x25

    if-eq v0, v4, :cond_2

    .line 2855
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->skip(C)V

    goto :goto_0

    .line 2860
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->format:Ljava/lang/String;

    iget v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->fidx:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 2906
    new-instance v4, Ljava/lang/InternalError;

    invoke-direct {v4}, Ljava/lang/InternalError;-><init>()V

    throw v4

    .line 2862
    :sswitch_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseYear()V

    goto :goto_0

    .line 2866
    :sswitch_1
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, v7, v7}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMonth(I)V

    goto :goto_0

    .line 2870
    :sswitch_2
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, v7, v7}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setDay(I)V

    goto :goto_0

    .line 2874
    :sswitch_3
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, v7, v7}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setHour(I)V

    goto :goto_0

    .line 2878
    :sswitch_4
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, v7, v7}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setMinute(I)V

    goto :goto_0

    .line 2882
    :sswitch_5
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0, v7, v7}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setSecond(I)V

    .line 2884
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_0

    .line 2885
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseBigDecimal()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setFractionalSecond(Ljava/math/BigDecimal;)V

    goto/16 :goto_0

    .line 2890
    :sswitch_6
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->peek()C

    move-result v3

    .line 2891
    .local v3, "vch":C
    const/16 v4, 0x5a

    if-ne v3, v4, :cond_3

    .line 2892
    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    .line 2893
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    goto/16 :goto_0

    .line 2895
    :cond_3
    if-eq v3, v8, :cond_4

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 2896
    :cond_4
    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->vidx:I

    .line 2897
    invoke-direct {p0, v7, v7}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v1

    .line 2898
    .local v1, "h":I
    const/16 v4, 0x3a

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->skip(C)V

    .line 2899
    invoke-direct {p0, v7, v7}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->parseInt(II)I

    move-result v2

    .line 2900
    .local v2, "m":I
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl$Parser;->this$0:Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;

    mul-int/lit8 v4, v1, 0x3c

    add-int v6, v4, v2

    if-ne v3, v8, :cond_5

    const/4 v4, 0x1

    :goto_1
    mul-int/2addr v4, v6

    invoke-virtual {v5, v4}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->setTimezone(I)V

    goto/16 :goto_0

    :cond_5
    const/4 v4, -0x1

    goto :goto_1

    .line 2914
    .end local v0    # "fch":C
    .end local v1    # "h":I
    .end local v2    # "m":I
    .end local v3    # "vch":C
    :cond_6
    return-void

    .line 2860
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
