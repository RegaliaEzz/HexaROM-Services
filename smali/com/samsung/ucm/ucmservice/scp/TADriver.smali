.class public Lcom/samsung/ucm/ucmservice/scp/TADriver;
.super Ljava/lang/Object;
.source "TADriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/scp/TADriver$1;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$CACertPubType;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$Protocol;
    }
.end annotation


# static fields
.field public static final SCP_BAD_APDU:I = 0x6

.field public static final SCP_BAD_ARGUMENTS:I = 0x2

.field public static final SCP_CHANNEL_CONSTRUCTED:I = 0x4

.field public static final SCP_CHANNEL_NOT_EXIST:I = 0x5

.field public static final SCP_FORWARD_APDU:I = 0x3

.field public static final SCP_GENERAL_ERROR:I = 0x1

.field public static final SCP_NO_MEMORY:I = 0x8

.field public static final SCP_PROTOCOL_ERROR:I = 0x7

.field public static final SCP_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UCM.SCP.TADriver"


# instance fields
.field private _config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

.field certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

.field private mRetFailed:Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

.field private mRetFailedChannelRequired:Lcom/sec/enterprise/knox/ucm/core/ApduMessage;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x191

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    invoke-direct {v0, p0, v2}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;-><init>(Lcom/samsung/ucm/ucmservice/scp/TADriver;Lcom/samsung/ucm/ucmservice/scp/TADriver$1;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    .line 14
    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    .line 34
    new-instance v0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(II[B)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mRetFailed:Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    .line 38
    new-instance v0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    const/16 v1, 0x12d

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(II[B)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mRetFailedChannelRequired:Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    .line 48
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    .line 49
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->ca_cert_pub:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    .line 50
    return-void
.end method

.method private static native constructSecureChannel(II[B)[B
.end method

.method private static native encodeAPDU(I[BZ)[B
.end method

.method private forwardApdu(I[B)[B
    .locals 1
    .param p1, "uid"    # I
    .param p2, "apdu"    # [B

    .prologue
    .line 194
    invoke-static {p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->forwardApduResponse(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static native forwardApduResponse(I[B)[B
.end method

.method private getSW([B)S
    .locals 3
    .param p1, "apdu"    # [B

    .prologue
    .line 198
    array-length v0, p1

    .line 200
    .local v0, "length":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/16 v1, 0x6700

    .line 201
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, -0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p1, v2

    or-int/2addr v1, v2

    int-to-short v1, v1

    goto :goto_0
.end method

.method public static native getStringFromJNI()Ljava/lang/String;
.end method

.method private static native installCACert(ILjava/lang/String;[B)I
.end method

.method private static native setDhParams(I[B[B)I
.end method


# virtual methods
.method public createSecureChannel(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    .locals 8
    .param p1, "uid"    # I
    .param p2, "protocol"    # I

    .prologue
    const/4 v7, 0x0

    .line 83
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    invoke-virtual {v3, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->isSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    const-string v3, "UCM.SCP.TADriver"

    const-string v4, "Not supported protocol"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mRetFailed:Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    .line 118
    :goto_0
    return-object v3

    .line 88
    :cond_0
    const/16 v3, 0x66

    if-ne p2, v3, :cond_1

    .line 89
    sget-object v3, Lcom/samsung/ucm/ucmservice/scp/ErcomCustom;->GENERATOR:[B

    sget-object v4, Lcom/samsung/ucm/ucmservice/scp/ErcomCustom;->MODULUS:[B

    invoke-static {p1, v3, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->setDhParams(I[B[B)I

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    const-string v3, "UCM.SCP.TADriver"

    const-string/jumbo v4, "failed to set dh parameter"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mRetFailed:Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    goto :goto_0

    .line 97
    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    .line 101
    .local v0, "in":[B
    invoke-static {p1, p2, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->constructSecureChannel(II[B)[B

    move-result-object v1

    .line 102
    .local v1, "resp":[B
    if-eqz v1, :cond_2

    array-length v3, v1

    if-gtz v3, :cond_3

    .line 103
    :cond_2
    const-string v3, "UCM.SCP.TADriver"

    const-string v4, "Invalid msg returned from SCPConstructSecureChannel(in)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mRetFailed:Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    goto :goto_0

    .line 107
    :cond_3
    aget-byte v2, v1, v7

    .line 108
    .local v2, "tzRet":I
    packed-switch v2, :pswitch_data_0

    .line 114
    const-string v3, "UCM.SCP.TADriver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown TZ response : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mRetFailed:Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    goto :goto_0

    .line 110
    :pswitch_0
    new-instance v3, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    const/16 v4, 0x190

    const/4 v5, 0x1

    array-length v6, v1

    invoke-static {v1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-direct {v3, v7, v4, v5}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(II[B)V

    goto :goto_0

    .line 97
    :array_0
    .array-data 1
        0x1t
        0x2t
    .end array-data

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public deleteCACerttificate(ILjava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 77
    const/4 v1, 0x1

    .line 79
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installCACerttificate(Ljava/lang/String;[BI)Z
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # [B
    .param p3, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "modified_cert":[B
    :try_start_0
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    invoke-virtual {v4, p2}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->updateTlvCaCert([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 67
    invoke-static {p3, p1, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->installCACert(ILjava/lang/String;[B)I

    move-result v2

    .line 68
    .local v2, "ret":I
    if-nez v2, :cond_0

    .line 69
    const/4 v3, 0x1

    .line 71
    .end local v2    # "ret":I
    :cond_0
    :goto_0
    return v3

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public processMsg(II[B)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    .locals 11
    .param p1, "uid"    # I
    .param p2, "type"    # I
    .param p3, "msg"    # [B

    .prologue
    const/16 v10, 0x191

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 122
    packed-switch p2, :pswitch_data_0

    .line 190
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mRetFailed:Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    :goto_0
    return-object v5

    .line 125
    :pswitch_0
    invoke-static {p1, p3, v9}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->encodeAPDU(I[BZ)[B

    move-result-object v0

    .line 126
    .local v0, "encrypted_apdu":[B
    if-nez v0, :cond_0

    .line 127
    const-string v5, "UCM.SCP.TADriver"

    const-string v6, "Failed to encode APDU"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mRetFailedChannelRequired:Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    goto :goto_0

    .line 129
    :cond_0
    aget-byte v5, v0, v8

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 130
    const-string v5, "UCM.SCP.TADriver"

    const-string v6, "Failed to encode APDU : SCP Channel not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mRetFailedChannelRequired:Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    goto :goto_0

    .line 135
    :cond_1
    new-instance v5, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    array-length v6, v0

    invoke-static {v0, v9, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-direct {v5, v8, v10, v6}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(II[B)V

    goto :goto_0

    .line 142
    .end local v0    # "encrypted_apdu":[B
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSW([B)S

    move-result v3

    .line 143
    .local v3, "sw":S
    const-string v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SW of response : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/16 v5, -0x7000

    if-eq v3, v5, :cond_2

    .line 146
    const-string v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure response : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mRetFailedChannelRequired:Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    goto :goto_0

    .line 150
    :cond_2
    invoke-static {p1, p3, v8}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->encodeAPDU(I[BZ)[B

    move-result-object v1

    .line 151
    .local v1, "plain_apdu":[B
    if-nez v1, :cond_3

    .line 152
    const-string v5, "UCM.SCP.TADriver"

    const-string v6, "Failed to decode APDU"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mRetFailedChannelRequired:Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    goto :goto_0

    .line 155
    :cond_3
    new-instance v5, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    array-length v6, v1

    invoke-static {v1, v9, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-direct {v5, v8, v10, v6}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(II[B)V

    goto/16 :goto_0

    .line 162
    .end local v1    # "plain_apdu":[B
    .end local v3    # "sw":S
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->forwardApdu(I[B)[B

    move-result-object v2

    .line 164
    .local v2, "resp":[B
    if-eqz v2, :cond_4

    array-length v5, v2

    if-gtz v5, :cond_5

    .line 165
    :cond_4
    const-string v5, "UCM.SCP.TADriver"

    const-string v6, "Invalid msg returned from SCPForwardApduMessage()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mRetFailed:Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    goto/16 :goto_0

    .line 169
    :cond_5
    aget-byte v4, v2, v8

    .line 170
    .local v4, "tzRet":I
    packed-switch v4, :pswitch_data_1

    .line 182
    const-string v5, "UCM.SCP.TADriver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown TZ response : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mRetFailed:Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    goto/16 :goto_0

    .line 172
    :pswitch_3
    new-instance v5, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    const/16 v6, 0x12c

    const/4 v7, 0x0

    invoke-direct {v5, v6, v10, v7}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(II[B)V

    goto/16 :goto_0

    .line 178
    :pswitch_4
    new-instance v5, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;

    const/16 v6, 0x190

    array-length v7, v2

    invoke-static {v2, v9, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-direct {v5, v8, v6, v7}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(II[B)V

    goto/16 :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 170
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
