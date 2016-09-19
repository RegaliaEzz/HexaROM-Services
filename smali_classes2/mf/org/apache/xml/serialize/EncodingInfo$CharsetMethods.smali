.class Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;
.super Ljava/lang/Object;
.source "EncodingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xml/serialize/EncodingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetMethods"
.end annotation


# static fields
.field private static fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;

.field private static fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;

.field private static fgCharsetForNameMethod:Ljava/lang/reflect/Method;

.field private static fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;

.field private static fgNIOCharsetAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 201
    sput-object v7, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetForNameMethod:Ljava/lang/reflect/Method;

    .line 204
    sput-object v7, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;

    .line 207
    sput-object v7, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;

    .line 210
    sput-object v7, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;

    .line 213
    sput-boolean v8, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgNIOCharsetAvailable:Z

    .line 220
    :try_start_0
    const-string v3, "java.nio.charset.Charset"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 221
    .local v0, "charsetClass":Ljava/lang/Class;
    const-string v3, "java.nio.charset.CharsetEncoder"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 222
    .local v1, "charsetEncoderClass":Ljava/lang/Class;
    const-string v3, "forName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetForNameMethod:Ljava/lang/reflect/Method;

    .line 223
    const-string v3, "canEncode"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;

    .line 224
    const-string v3, "newEncoder"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;

    .line 225
    const-string v3, "canEncode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;

    .line 226
    const/4 v3, 0x1

    sput-boolean v3, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgNIOCharsetAvailable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v1    # "charsetEncoderClass":Ljava/lang/Class;
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v2

    .line 231
    .local v2, "exc":Ljava/lang/Exception;
    sput-object v7, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetForNameMethod:Ljava/lang/reflect/Method;

    .line 232
    sput-object v7, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;

    .line 233
    sput-object v7, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;

    .line 234
    sput-object v7, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;

    .line 235
    sput-boolean v8, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgNIOCharsetAvailable:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 213
    sget-boolean v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgNIOCharsetAvailable:Z

    return v0
.end method

.method static synthetic access$1()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetForNameMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetCanEncodeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetNewEncoderMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharsetMethods;->fgCharsetEncoderCanEncodeMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
