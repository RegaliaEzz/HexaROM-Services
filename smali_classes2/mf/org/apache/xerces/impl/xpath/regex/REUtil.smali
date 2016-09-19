.class public final Lmf/org/apache/xerces/impl/xpath/regex/REUtil;
.super Ljava/lang/Object;
.source "REUtil.java"


# static fields
.field static final CACHESIZE:I = 0x14

.field static final regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 278
    const/16 v0, 0x14

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static final composeFromSurrogates(II)I
    .locals 2
    .param p0, "high"    # I
    .param p1, "low"    # I

    .prologue
    .line 32
    const/high16 v0, 0x10000

    const v1, 0xd800

    sub-int v1, p0, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    const v1, 0xdc00

    sub-int/2addr v0, v1

    return v0
.end method

.method static final createOptionString(I)Ljava/lang/String;
    .locals 2
    .param p0, "options"    # I

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 112
    .local v0, "sb":Ljava/lang/StringBuffer;
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_0

    .line 113
    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    :cond_0
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_1

    .line 115
    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    :cond_1
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_2

    .line 117
    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    :cond_2
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3

    .line 119
    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_4

    .line 121
    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 122
    :cond_4
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_5

    .line 123
    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_6

    .line 125
    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 126
    :cond_6
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_7

    .line 127
    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 128
    :cond_7
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_8

    .line 129
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    :cond_8
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_9

    .line 131
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static createRegex(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .locals 11
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "options"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 287
    const/4 v3, 0x0

    .line 288
    .local v3, "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->parseOptions(Ljava/lang/String;)I

    move-result v2

    .line 289
    .local v2, "intOptions":I
    sget-object v6, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    monitor-enter v6

    .line 291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v5, 0x14

    if-lt v1, v5, :cond_0

    move-object v4, v3

    .line 302
    .end local v3    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .local v4, "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    :goto_1
    if-eqz v4, :cond_3

    .line 303
    if-eqz v1, :cond_4

    .line 304
    :try_start_0
    sget-object v5, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v7, 0x0

    sget-object v8, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v9, 0x1

    invoke-static {v5, v7, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    sget-object v5, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v7, 0x0

    aput-object v4, v5, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v4

    .line 289
    .end local v4    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .restart local v3    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    :goto_2
    :try_start_1
    monitor-exit v6

    .line 313
    return-object v3

    .line 292
    :cond_0
    sget-object v5, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    aget-object v0, v5, v1

    .line 293
    .local v0, "cached":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    if-nez v0, :cond_1

    .line 294
    const/4 v1, -0x1

    move-object v4, v3

    .line 295
    .end local v3    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .restart local v4    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    goto :goto_1

    .line 297
    .end local v4    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .restart local v3    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    :cond_1
    invoke-virtual {v0, p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->equals(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 298
    move-object v3, v0

    move-object v4, v3

    .line 299
    .end local v3    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .restart local v4    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    goto :goto_1

    .line 291
    .end local v4    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .restart local v3    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v0    # "cached":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .end local v3    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .restart local v4    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    :cond_3
    :try_start_2
    new-instance v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    invoke-direct {v3, p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 309
    .end local v4    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .restart local v3    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    :try_start_3
    sget-object v5, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v7, 0x0

    sget-object v8, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v9, 0x1

    const/16 v10, 0x13

    invoke-static {v5, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    sget-object v5, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v7, 0x0

    aput-object v3, v5, v7

    goto :goto_2

    .line 289
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .end local v3    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .restart local v4    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .restart local v3    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    goto :goto_3

    .end local v3    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .restart local v4    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    :cond_4
    move-object v3, v4

    .end local v4    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .restart local v3    # "re":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    goto :goto_2
.end method

.method static final decomposeToSurrogates(I)Ljava/lang/String;
    .locals 4
    .param p0, "ch"    # I

    .prologue
    .line 44
    const/4 v1, 0x2

    new-array v0, v1, [C

    .line 45
    .local v0, "chs":[C
    const/high16 v1, 0x10000

    sub-int/2addr p0, v1

    .line 46
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0xa

    const v3, 0xd800

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 47
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0x3ff

    const v3, 0xdc00

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 48
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method static dumpString(Ljava/lang/String;)V
    .locals 3
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    .line 358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 362
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 363
    return-void

    .line 359
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 360
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static final getOptionValue(I)I
    .locals 1
    .param p0, "ch"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "ret":I
    sparse-switch p0, :sswitch_data_0

    .line 95
    :goto_0
    return v0

    .line 64
    :sswitch_0
    const/4 v0, 0x2

    .line 65
    goto :goto_0

    .line 67
    :sswitch_1
    const/16 v0, 0x8

    .line 68
    goto :goto_0

    .line 70
    :sswitch_2
    const/4 v0, 0x4

    .line 71
    goto :goto_0

    .line 73
    :sswitch_3
    const/16 v0, 0x10

    .line 74
    goto :goto_0

    .line 76
    :sswitch_4
    const/16 v0, 0x20

    .line 77
    goto :goto_0

    .line 79
    :sswitch_5
    const/16 v0, 0x40

    .line 80
    goto :goto_0

    .line 82
    :sswitch_6
    const/16 v0, 0x100

    .line 83
    goto :goto_0

    .line 85
    :sswitch_7
    const/16 v0, 0x80

    .line 86
    goto :goto_0

    .line 88
    :sswitch_8
    const/16 v0, 0x200

    .line 89
    goto :goto_0

    .line 91
    :sswitch_9
    const/16 v0, 0x400

    goto :goto_0

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_9
        0x46 -> :sswitch_6
        0x48 -> :sswitch_7
        0x58 -> :sswitch_8
        0x69 -> :sswitch_0
        0x6d -> :sswitch_1
        0x73 -> :sswitch_2
        0x75 -> :sswitch_4
        0x77 -> :sswitch_5
        0x78 -> :sswitch_3
    .end sparse-switch
.end method

.method static final isHighSurrogate(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    .line 40
    const v0, 0xfc00

    and-int/2addr v0, p0

    const v1, 0xd800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final isLowSurrogate(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    .line 36
    const v0, 0xfc00

    and-int/2addr v0, p0

    const v1, 0xdc00

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 211
    const/4 v6, 0x0

    .line 213
    .local v6, "pattern":Ljava/lang/String;
    :try_start_0
    const-string v5, ""

    .line 214
    .local v5, "options":Ljava/lang/String;
    const/4 v9, 0x0

    .line 215
    .local v9, "target":Ljava/lang/String;
    array-length v10, p0

    if-nez v10, :cond_0

    .line 216
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Error:Usage: java REUtil -i|-m|-s|-u|-w|-X regularExpression String"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    .line 219
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v10, p0

    if-lt v1, v10, :cond_2

    .line 243
    new-instance v8, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    invoke-direct {v8, v6, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .local v8, "reg":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "RegularExpression: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    new-instance v4, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    .line 246
    .local v4, "match":Lmf/org/apache/xerces/impl/xpath/regex/Match;
    invoke-virtual {v8, v9, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;Lmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    .line 247
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getNumberOfGroups()I

    move-result v10

    if-lt v1, v10, :cond_d

    .line 275
    .end local v1    # "i":I
    .end local v4    # "match":Lmf/org/apache/xerces/impl/xpath/regex/Match;
    .end local v5    # "options":Ljava/lang/String;
    .end local v8    # "reg":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .end local v9    # "target":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 220
    .restart local v1    # "i":I
    .restart local v5    # "options":Ljava/lang/String;
    .restart local v9    # "target":Ljava/lang/String;
    :cond_2
    aget-object v10, p0, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    aget-object v10, p0, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_6

    .line 221
    :cond_3
    if-nez v6, :cond_4

    .line 222
    aget-object v6, p0, v1

    .line 219
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_4
    if-nez v9, :cond_5

    .line 224
    aget-object v9, p0, v1

    goto :goto_3

    .line 226
    :cond_5
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unnecessary: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v12, p0, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xpath/regex/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 257
    .end local v1    # "i":I
    .end local v5    # "options":Ljava/lang/String;
    .end local v9    # "target":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 258
    .local v7, "pe":Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
    if-nez v6, :cond_10

    .line 259
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;->printStackTrace()V

    goto :goto_2

    .line 227
    .end local v7    # "pe":Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
    .restart local v1    # "i":I
    .restart local v5    # "options":Ljava/lang/String;
    .restart local v9    # "target":Ljava/lang/String;
    :cond_6
    :try_start_1
    aget-object v10, p0, v1

    const-string v11, "-i"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 228
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "i"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    goto :goto_3

    :cond_7
    aget-object v10, p0, v1

    const-string v11, "-m"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 230
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "m"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 231
    goto :goto_3

    :cond_8
    aget-object v10, p0, v1

    const-string v11, "-s"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 232
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    goto :goto_3

    :cond_9
    aget-object v10, p0, v1

    const-string v11, "-u"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 234
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "u"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 235
    goto/16 :goto_3

    :cond_a
    aget-object v10, p0, v1

    const-string v11, "-w"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 236
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "w"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 237
    goto/16 :goto_3

    :cond_b
    aget-object v10, p0, v1

    const-string v11, "-X"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 238
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "X"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 239
    goto/16 :goto_3

    .line 240
    :cond_c
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unknown option: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v12, p0, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xpath/regex/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 272
    .end local v1    # "i":I
    .end local v5    # "options":Ljava/lang/String;
    .end local v9    # "target":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v4    # "match":Lmf/org/apache/xerces/impl/xpath/regex/Match;
    .restart local v5    # "options":Ljava/lang/String;
    .restart local v8    # "reg":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .restart local v9    # "target":Ljava/lang/String;
    :cond_d
    if-nez v1, :cond_e

    :try_start_2
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Matched range for the whole pattern: "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 250
    :goto_4
    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v10

    if-gez v10, :cond_f

    .line 251
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "-1"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 249
    :cond_e
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 253
    :cond_f
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 254
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getCapturedText(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xpath/regex/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 262
    .end local v1    # "i":I
    .end local v4    # "match":Lmf/org/apache/xerces/impl/xpath/regex/Match;
    .end local v5    # "options":Ljava/lang/String;
    .end local v8    # "reg":Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .end local v9    # "target":Ljava/lang/String;
    .restart local v7    # "pe":Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
    :cond_10
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mf.org.apache.xerces.utils.regex.ParseException: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    const-string v2, "        "

    .line 264
    .local v2, "indent":Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;->getLocation()I

    move-result v3

    .line 266
    .local v3, "loc":I
    if-ltz v3, :cond_1

    .line 267
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 268
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-lt v1, v3, :cond_11

    .line 269
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "^"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 268
    :cond_11
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->createRegex(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "options"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->createRegex(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static final parseOptions(Ljava/lang/String;)I
    .locals 6
    .param p0, "opts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    .prologue
    .line 99
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 107
    :cond_0
    return v1

    .line 100
    :cond_1
    const/4 v1, 0x0

    .line 101
    .local v1, "options":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->getOptionValue(I)I

    move-result v2

    .line 103
    .local v2, "v":I
    if-nez v2, :cond_2

    .line 104
    new-instance v3, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown Option: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 105
    :cond_2
    or-int/2addr v1, v2

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static quoteMeta(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "literal"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 339
    .local v3, "len":I
    const/4 v0, 0x0

    .line 340
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 352
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "literal":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 341
    .restart local p0    # "literal":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 342
    .local v1, "ch":I
    const-string v4, ".*+?{[()|\\^$"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_4

    .line 343
    if-nez v0, :cond_2

    .line 344
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    sub-int v4, v3, v2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 345
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    if-lez v2, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    :cond_2
    const/16 v4, 0x5c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 348
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 340
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    :cond_4
    if-eqz v0, :cond_3

    .line 350
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method static stripExtendedComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "regex"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x9

    const/16 v11, 0x5d

    const/16 v10, 0x5b

    const/16 v9, 0xd

    const/16 v8, 0xa

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 139
    .local v3, "len":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 140
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 141
    .local v5, "offset":I
    const/4 v2, 0x0

    .local v2, "charClass":I
    move v6, v5

    .line 142
    .end local v5    # "offset":I
    .local v6, "offset":I
    :cond_0
    :goto_0
    if-lt v6, v3, :cond_1

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 143
    :cond_1
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 145
    .local v1, "ch":I
    if-eq v1, v12, :cond_2

    if-eq v1, v8, :cond_2

    const/16 v7, 0xc

    if-eq v1, v7, :cond_2

    if-eq v1, v9, :cond_2

    const/16 v7, 0x20

    if-ne v1, v7, :cond_3

    .line 147
    :cond_2
    if-lez v2, :cond_d

    .line 148
    int-to-char v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v6, v5

    .line 150
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_0

    .line 153
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_3
    const/16 v7, 0x23

    if-ne v1, v7, :cond_4

    move v6, v5

    .line 154
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :goto_1
    if-ge v6, v3, :cond_0

    .line 155
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 156
    if-eq v1, v9, :cond_d

    if-ne v1, v8, :cond_e

    move v6, v5

    .line 157
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_0

    .line 163
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_4
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_7

    if-ge v5, v3, :cond_7

    .line 164
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .local v4, "next":I
    const/16 v7, 0x23

    if-eq v4, v7, :cond_5

    .line 165
    if-eq v4, v12, :cond_5

    if-eq v4, v8, :cond_5

    const/16 v7, 0xc

    if-eq v4, v7, :cond_5

    .line 166
    if-eq v4, v9, :cond_5

    const/16 v7, 0x20

    if-ne v4, v7, :cond_6

    .line 167
    :cond_5
    int-to-char v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    add-int/lit8 v5, v5, 0x1

    move v6, v5

    .line 169
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_0

    .line 170
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_6
    const/16 v7, 0x5c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 171
    int-to-char v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    add-int/lit8 v5, v5, 0x1

    move v6, v5

    .line 174
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_0

    .line 175
    .end local v4    # "next":I
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_7
    if-ne v1, v10, :cond_b

    .line 176
    add-int/lit8 v2, v2, 0x1

    .line 177
    int-to-char v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 178
    if-ge v5, v3, :cond_d

    .line 179
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 180
    .restart local v4    # "next":I
    if-eq v4, v10, :cond_8

    if-ne v4, v11, :cond_9

    .line 181
    :cond_8
    int-to-char v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    add-int/lit8 v5, v5, 0x1

    move v6, v5

    .line 183
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_0

    .line 184
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_9
    const/16 v7, 0x5e

    if-ne v4, v7, :cond_d

    add-int/lit8 v7, v5, 0x1

    if-ge v7, v3, :cond_d

    .line 185
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 186
    if-eq v4, v10, :cond_a

    if-ne v4, v11, :cond_d

    .line 187
    :cond_a
    const/16 v7, 0x5e

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 188
    int-to-char v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 189
    add-int/lit8 v5, v5, 0x2

    move v6, v5

    .line 193
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_0

    .line 195
    .end local v4    # "next":I
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_b
    if-lez v2, :cond_c

    if-ne v1, v11, :cond_c

    .line 196
    add-int/lit8 v2, v2, -0x1

    .line 198
    :cond_c
    int-to-char v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_d
    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_0

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_e
    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_1
.end method

.method static final substring(Ljava/text/CharacterIterator;II)Ljava/lang/String;
    .locals 3
    .param p0, "iterator"    # Ljava/text/CharacterIterator;
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .prologue
    .line 52
    sub-int v2, p2, p1

    new-array v1, v2, [C

    .line 53
    .local v1, "src":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 55
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 54
    :cond_0
    add-int v2, v0, p1

    invoke-interface {p0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v2

    aput-char v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
