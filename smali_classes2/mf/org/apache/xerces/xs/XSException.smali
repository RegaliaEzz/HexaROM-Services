.class public Lmf/org/apache/xerces/xs/XSException;
.super Ljava/lang/RuntimeException;
.source "XSException.java"


# static fields
.field public static final INDEX_SIZE_ERR:S = 0x2s

.field public static final NOT_SUPPORTED_ERR:S = 0x1s

.field static final serialVersionUID:J = 0x2b2faa45e338cc2eL


# instance fields
.field public code:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 0
    .param p1, "code"    # S
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    iput-short p1, p0, Lmf/org/apache/xerces/xs/XSException;->code:S

    .line 40
    return-void
.end method
