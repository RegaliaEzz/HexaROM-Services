.class Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;
.super Ljava/lang/Object;
.source "DOMUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/util/DOMUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThrowableMethods"
.end annotation


# static fields
.field private static fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

.field private static fgThrowableMethodsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 878
    sput-object v7, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    .line 881
    sput-boolean v6, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    .line 888
    :try_start_0
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "initCause"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    .line 889
    const/4 v1, 0x1

    sput-boolean v1, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableMethodsAvailable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    .local v0, "exc":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 893
    .end local v0    # "exc":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 894
    .restart local v0    # "exc":Ljava/lang/Exception;
    sput-object v7, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    .line 895
    sput-boolean v6, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 881
    sget-boolean v0, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    return v0
.end method

.method static synthetic access$1()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 878
    sget-object v0, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
