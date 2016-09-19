.class Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;
.super Ljava/lang/Object;
.source "MsgParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/msg/MsgParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyInformation"
.end annotation


# instance fields
.field public chipPubKey:[B

.field private keySize:I

.field public rootPriv_Sig_r:[B

.field public rootPriv_Sig_s:[B

.field private signatureSize:I

.field public signedRandVal_r:[B

.field public signedRandVal_s:[B

.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/msg/MsgParser;B)V
    .locals 1
    .param p2, "productId"    # B

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->this$0:Lcom/samsung/accessory/manager/authentication/msg/MsgParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    and-int/lit16 v0, p2, 0xff

    sparse-switch v0, :sswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 87
    :sswitch_0
    const/16 v0, 0x28

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    .line 88
    const/16 v0, 0x2a

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    .line 90
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    .line 92
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    .line 93
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    .line 94
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_r:[B

    .line 95
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_s:[B

    goto :goto_0

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_0
        0x55 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public isValidCertificate(I)Z
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 70
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidSignature(I)Z
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 77
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    if-ne p1, v0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCertificateOfChip([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 58
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 59
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->keySize:I

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 61
    return-void
.end method

.method public setSignatueOfRandomValue([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_r:[B

    iget v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 66
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_s:[B

    iget v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signatureSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 67
    return-void
.end method
