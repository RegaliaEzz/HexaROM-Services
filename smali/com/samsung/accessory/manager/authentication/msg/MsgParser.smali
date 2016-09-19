.class public Lcom/samsung/accessory/manager/authentication/msg/MsgParser;
.super Ljava/lang/Object;
.source "MsgParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;
    }
.end annotation


# static fields
.field public static final PRODUCT_T9MF:I = 0x33

.field public static final PRODUCT_W6MA:I = 0x55


# instance fields
.field private final RES_ATQS:I

.field private final RES_FIRMWARE:I

.field private final RES_KEY_CHANGE:I

.field private final RES_PUB_KEY:I

.field private final RES_READ_ID:I

.field private final RES_REQ_URL:I

.field private final RES_SEC_PUB_KEY:I

.field private final RES_VERIFICATION:I

.field private final RES_WRITE_ID:I

.field private final ROOTPUBKEY:I

.field private final SEC_ROOTPUBKEY:I

.field private TAG:Ljava/lang/String;

.field private extraData:[B

.field private keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

.field private mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

.field private mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

.field private managerUrl:[B

.field private productId:B

.field private publicKey:Ljava/lang/String;

.field private randNum:[B

.field private serialNumber:[B

.field private urlExtra:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, "MsgParser"

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->ROOTPUBKEY:I

    .line 13
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->SEC_ROOTPUBKEY:I

    .line 14
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_ATQS:I

    .line 15
    iput v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_PUB_KEY:I

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_VERIFICATION:I

    .line 17
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_WRITE_ID:I

    .line 18
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_READ_ID:I

    .line 19
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_FIRMWARE:I

    .line 20
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_KEY_CHANGE:I

    .line 21
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_SEC_PUB_KEY:I

    .line 22
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->RES_REQ_URL:I

    .line 28
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->randNum:[B

    .line 102
    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 103
    return-void
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .locals 6
    .param p1, "input"    # [B

    .prologue
    .line 241
    if-eqz p1, :cond_1

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 244
    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :goto_1
    return-object v2

    :cond_1
    const-string/jumbo v2, "null"

    goto :goto_1
.end method

.method public checkAtqs()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 146
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 147
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v1

    aget-byte v1, v1, v0

    iput-byte v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    .line 148
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "productId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-byte v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    invoke-direct {v1, p0, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;-><init>(Lcom/samsung/accessory/manager/authentication/msg/MsgParser;B)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkPubKey(I)Z
    .locals 7
    .param p1, "what"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->isValidCertificate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->setCertificateOfChip([B)V

    .line 162
    if-ne p1, v6, :cond_1

    .line 163
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v3, v3, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    invoke-virtual {p0, v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v4, v4, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    invoke-virtual {p0, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->verify_certificate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 174
    :goto_0
    if-ne v0, v5, :cond_0

    .line 175
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->publicKey:Ljava/lang/String;

    .line 177
    :cond_0
    return v0

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v3, v3, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_r:[B

    invoke-virtual {p0, v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v4, v4, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->rootPriv_Sig_s:[B

    invoke-virtual {p0, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v6, v2, v3, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->verify_certificate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public checkReadId()Z
    .locals 2

    .prologue
    .line 195
    const/4 v0, 0x1

    .line 196
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->serialNumber:[B

    .line 197
    return v0
.end method

.method public checkUrl()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 201
    const/4 v1, 0x1

    .line 202
    .local v1, "result":Z
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    .line 203
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    aget-byte v3, v3, v7

    and-int/lit16 v2, v3, 0xff

    .line 204
    .local v2, "urlLength":I
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 205
    .local v0, "extraLength":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    .line 206
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    .line 207
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    add-int/lit8 v5, v2, 0x1

    invoke-static {v3, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 208
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->urlExtra:[B

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    add-int/lit8 v6, v0, 0x1

    invoke-static {v3, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 209
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    invoke-virtual {p0, v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "extra Data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    invoke-virtual {p0, v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return v1
.end method

.method public checkVerification()Z
    .locals 6

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->isValidSignature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/Message;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->setSignatueOfRandomValue([B)V

    .line 185
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->chipPubKey:[B

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->randNum:[B

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v4, v4, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_r:[B

    invoke-virtual {p0, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->keyInform:Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;

    iget-object v5, v5, Lcom/samsung/accessory/manager/authentication/msg/MsgParser$KeyInformation;->signedRandVal_s:[B

    invoke-virtual {p0, v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->verify_rand_signature(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 191
    :goto_0
    return v0

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "signature is invalid"

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getExtraData()[B
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->extraData:[B

    return-object v0
.end method

.method public getManagerUrl()[B
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->managerUrl:[B

    return-object v0
.end method

.method public getProductId()B
    .locals 1

    .prologue
    .line 237
    iget-byte v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->productId:B

    return v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->publicKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 220
    const-string v0, ""

    .line 221
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->publicKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSerialNumber()[B
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->serialNumber:[B

    return-object v0
.end method

.method public parseData(I[B)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 106
    const/4 v0, 0x1

    .line 108
    .local v0, "result":Z
    packed-switch p1, :pswitch_data_0

    .line 142
    :goto_0
    :pswitch_0
    return v0

    .line 110
    :pswitch_1
    new-instance v1, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 111
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkAtqs()Z

    move-result v0

    .line 112
    goto :goto_0

    .line 114
    :pswitch_2
    new-instance v1, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 115
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkPubKey(I)Z

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :pswitch_3
    new-instance v1, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 120
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkVerification()Z

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :pswitch_4
    new-instance v1, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 127
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkReadId()Z

    move-result v0

    .line 128
    goto :goto_0

    .line 132
    :pswitch_5
    new-instance v1, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 133
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkPubKey(I)Z

    move-result v0

    .line 134
    goto/16 :goto_0

    .line 138
    :pswitch_6
    new-instance v1, Lcom/samsung/accessory/manager/authentication/msg/Message;

    invoke-direct {v1, p1, p2}, Lcom/samsung/accessory/manager/authentication/msg/Message;-><init>(I[B)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->mMsg:Lcom/samsung/accessory/manager/authentication/msg/Message;

    .line 139
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->checkUrl()Z

    move-result v0

    goto/16 :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setRandNum([B)V
    .locals 1
    .param p1, "randNum"    # [B

    .prologue
    .line 215
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/msg/MsgParser;->randNum:[B

    .line 216
    return-void
.end method
