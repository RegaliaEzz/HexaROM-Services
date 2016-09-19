.class public Lcom/sec/epdg/IWlanError$IkeError;
.super Ljava/lang/Object;
.source "IWlanError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IkeError"
.end annotation


# instance fields
.field private final mIkeErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "ikeErrorCode"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/sec/epdg/IWlanError$IkeError;->mIkeErrorCode:I

    .line 41
    return-void
.end method


# virtual methods
.method public getIkeErrorCode()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/sec/epdg/IWlanError$IkeError;->mIkeErrorCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "ret":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget v1, p0, Lcom/sec/epdg/IWlanError$IkeError;->mIkeErrorCode:I

    invoke-static {v1}, Lcom/sec/epdg/VerizonIkeError;->printVerizonIkeErrorCode(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 53
    :cond_0
    iget v1, p0, Lcom/sec/epdg/IWlanError$IkeError;->mIkeErrorCode:I

    invoke-static {v1}, Lcom/sec/epdg/RfcIkeError;->printRfcIkeErrorCode(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
