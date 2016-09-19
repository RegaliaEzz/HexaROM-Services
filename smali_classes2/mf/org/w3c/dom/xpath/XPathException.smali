.class public Lmf/org/w3c/dom/xpath/XPathException;
.super Ljava/lang/RuntimeException;
.source "XPathException.java"


# static fields
.field public static final INVALID_EXPRESSION_ERR:S = 0x33s

.field public static final TYPE_ERR:S = 0x34s


# instance fields
.field public code:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 0
    .param p1, "code"    # S
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    iput-short p1, p0, Lmf/org/w3c/dom/xpath/XPathException;->code:S

    .line 24
    return-void
.end method
