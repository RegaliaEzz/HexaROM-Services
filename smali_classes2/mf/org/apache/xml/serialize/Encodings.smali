.class public Lmf/org/apache/xml/serialize/Encodings;
.super Ljava/lang/Object;
.source "Encodings.java"


# static fields
.field static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF8"

.field static final DEFAULT_LAST_PRINTABLE:I = 0x7f

.field static final JIS_DANGER_CHARS:Ljava/lang/String; = "\\~\u007f\u00a2\u00a3\u00a5\u00ac\u2014\u2015\u2016\u2026\u203e\u203e\u2225\u222f\u301c\uff3c\uff5e\uffe0\uffe1\uffe2\uffe3"

.field static final LAST_PRINTABLE_UNICODE:I = 0xffff

.field static final UNICODE_ENCODINGS:[Ljava/lang/String;

.field static _encodings:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 52
    const-string v2, "Unicode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "UnicodeBig"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UnicodeLittle"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GB2312"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UTF8"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UTF-16"

    aput-object v2, v0, v1

    .line 51
    sput-object v0, Lmf/org/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEncodingInfo(Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/EncodingInfo;
    .locals 7
    .param p0, "encoding"    # Ljava/lang/String;
    .param p1, "allowJavaNames"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x7f

    const v6, 0xffff

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    if-nez p0, :cond_1

    .line 68
    sget-object v4, Lmf/org/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    const-string v5, "UTF8"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    check-cast v0, Lmf/org/apache/xml/serialize/EncodingInfo;

    .restart local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 114
    .end local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    .local v1, "eInfo":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 70
    .end local v1    # "eInfo":Ljava/lang/Object;
    .restart local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    :cond_0
    new-instance v0, Lmf/org/apache/xml/serialize/EncodingInfo;

    .end local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    const-string v4, "UTF8"

    invoke-static {v4}, Lmf/org/apache/xerces/util/EncodingMap;->getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF8"

    invoke-direct {v0, v4, v5, v6}, Lmf/org/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    .restart local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    sget-object v4, Lmf/org/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    const-string v5, "UTF8"

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 72
    .restart local v1    # "eInfo":Ljava/lang/Object;
    goto :goto_0

    .line 75
    .end local v1    # "eInfo":Ljava/lang/Object;
    :cond_1
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-static {p0}, Lmf/org/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "jName":Ljava/lang/String;
    if-nez v3, :cond_7

    .line 79
    if-eqz p1, :cond_6

    .line 80
    invoke-static {p0}, Lmf/org/apache/xml/serialize/EncodingInfo;->testJavaEncodingName(Ljava/lang/String;)V

    .line 81
    sget-object v4, Lmf/org/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    invoke-virtual {v4, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    check-cast v0, Lmf/org/apache/xml/serialize/EncodingInfo;

    .restart local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 82
    .restart local v1    # "eInfo":Ljava/lang/Object;
    goto :goto_0

    .line 84
    .end local v1    # "eInfo":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    .line 85
    .local v2, "i":I
    :goto_1
    sget-object v4, Lmf/org/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_4

    .line 91
    :goto_2
    sget-object v4, Lmf/org/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    array-length v4, v4

    if-ne v2, v4, :cond_3

    .line 92
    new-instance v0, Lmf/org/apache/xml/serialize/EncodingInfo;

    .end local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    invoke-static {p0}, Lmf/org/apache/xerces/util/EncodingMap;->getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, p0, v5}, Lmf/org/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    .restart local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    :cond_3
    sget-object v4, Lmf/org/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    invoke-virtual {v4, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 95
    .restart local v1    # "eInfo":Ljava/lang/Object;
    goto :goto_0

    .line 86
    .end local v1    # "eInfo":Ljava/lang/Object;
    :cond_4
    sget-object v4, Lmf/org/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 87
    new-instance v0, Lmf/org/apache/xml/serialize/EncodingInfo;

    .end local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    invoke-static {p0}, Lmf/org/apache/xerces/util/EncodingMap;->getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, p0, v6}, Lmf/org/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    .restart local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    goto :goto_2

    .line 85
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    .end local v2    # "i":I
    :cond_6
    new-instance v4, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v4, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    :cond_7
    sget-object v4, Lmf/org/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    check-cast v0, Lmf/org/apache/xml/serialize/EncodingInfo;

    .restart local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    if-eqz v0, :cond_8

    move-object v1, v0

    .line 100
    .restart local v1    # "eInfo":Ljava/lang/Object;
    goto :goto_0

    .line 103
    .end local v1    # "eInfo":Ljava/lang/Object;
    :cond_8
    const/4 v2, 0x0

    .line 104
    .restart local v2    # "i":I
    :goto_3
    sget-object v4, Lmf/org/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_a

    .line 110
    :goto_4
    sget-object v4, Lmf/org/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    array-length v4, v4

    if-ne v2, v4, :cond_9

    .line 111
    new-instance v0, Lmf/org/apache/xml/serialize/EncodingInfo;

    .end local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    invoke-direct {v0, p0, v3, v5}, Lmf/org/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    .restart local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    :cond_9
    sget-object v4, Lmf/org/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    invoke-virtual {v4, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 114
    .restart local v1    # "eInfo":Ljava/lang/Object;
    goto/16 :goto_0

    .line 105
    .end local v1    # "eInfo":Ljava/lang/Object;
    :cond_a
    sget-object v4, Lmf/org/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 106
    new-instance v0, Lmf/org/apache/xml/serialize/EncodingInfo;

    .end local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    invoke-direct {v0, p0, v3, v6}, Lmf/org/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    .restart local v0    # "eInfo":Lmf/org/apache/xml/serialize/EncodingInfo;
    goto :goto_4

    .line 104
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method
