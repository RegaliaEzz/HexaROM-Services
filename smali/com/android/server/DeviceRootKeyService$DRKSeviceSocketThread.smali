.class final Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;
.super Ljava/lang/Object;
.source "DeviceRootKeyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceRootKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DRKSeviceSocketThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;,
        Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;
    }
.end annotation


# static fields
.field private static final BUF_MAX:I = 0x2000

.field private static final CMD_ID_ADD_TLV:I = 0x6

.field private static final CMD_ID_CREATE_SERVICE_KEY_SESSION:I = 0x3

.field private static final CMD_ID_GET_DRK_UID:I = 0x2

.field private static final CMD_ID_INIT_TLV:I = 0x5

.field private static final CMD_ID_IS_EXIST_DRK:I = 0x1

.field private static final CMD_ID_RELEASE_SERVICE_KEY_SESSION:I = 0x4

.field private static final DRK_SERIVCE_SOCKET_NAME:Ljava/lang/String; = "DeviceRootKeyService"

.field private static final DRK_SERVICE_PROTOCOL_VERSION:B = 0x1t

.field private static final ERR_FAILED_ACTION:S = 0x5s

.field private static final ERR_INVALID_COMMAND_ID:S = 0x3s

.field private static final ERR_INVALID_DATA:S = 0x1s

.field private static final ERR_INVALID_VERSION:S = 0x2s

.field private static final ERR_NOT_EXIST_DRK:S = 0x4s

.field private static final ERR_NO_ERROR:S = 0x0s

.field private static final ERR_PERMISSION_DENIED:S = 0x6s

.field private static final MIN_IN_DATA_SIZE:I = 0xc

.field private static final MIN_OUT_DATA_SIZE:I = 0x9

.field private static final NOT_INITIALIZED:I = -0x1

.field private static final POS_COMMAND_ID:I = 0x1

.field private static final POS_IN_BOOL_VALUE:I = 0x7

.field private static final POS_IN_INT_VALUE:I = 0x3

.field private static final POS_IN_STRING_SIZE:I = 0x8

.field private static final POS_IN_STRING_VALUE:I = 0xc

.field private static final POS_OUT_DATA_VALUE:I = 0x9

.field private static final POS_OUT_ERR_VALUE:I = 0x3

.field private static final POS_OUT_SIZE_VALUE:I = 0x5

.field private static final POS_VERSION:I


# instance fields
.field private input:[B

.field private mLocalServerSocket:Landroid/net/LocalServerSocket;

.field private mLocalSocket:Landroid/net/LocalSocket;

.field private mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

.field final synthetic this$0:Lcom/android/server/DeviceRootKeyService;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceRootKeyService;)V
    .locals 1

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 352
    return-void
.end method

.method private addTlv(I[B)Z
    .locals 1
    .param p1, "tlvTag"    # I
    .param p2, "tlvValue"    # [B

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-direct {v0}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    move-result v0

    return v0
.end method

.method private executeCommand([BZ)[B
    .locals 10
    .param p1, "input"    # [B
    .param p2, "hasPermission"    # Z

    .prologue
    const/4 v9, 0x5

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 419
    new-instance v1, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;-><init>(Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;)V

    .line 420
    .local v1, "icp":Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;
    new-instance v2, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;

    invoke-direct {v2, p0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;-><init>(Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;)V

    .line 422
    .local v2, "odg":Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;
    invoke-virtual {v1, p1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ParserData([B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 424
    const-string v4, "DeviceRootKeyServiceSocket"

    const-string v5, "Parsing is failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {v2, v6}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setVersion(B)V

    .line 426
    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getCommandId()S

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setCommandID(S)V

    .line 427
    invoke-virtual {v2, v6}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 428
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->getOutputStreamData()[B

    move-result-object v4

    .line 507
    :goto_0
    return-object v4

    .line 431
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getVersion()B

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setVersion(B)V

    .line 432
    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getCommandId()S

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setCommandID(S)V

    .line 434
    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getVersion()B

    move-result v4

    if-eq v4, v6, :cond_1

    .line 436
    const-string v4, "DeviceRootKeyServiceSocket"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Version is not matched. Caller version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getVersion()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 438
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->getOutputStreamData()[B

    move-result-object v4

    goto :goto_0

    .line 441
    :cond_1
    if-nez p2, :cond_2

    .line 443
    const-string v4, "DeviceRootKeyServiceSocket"

    const-string v5, "Permission denied."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 445
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->getOutputStreamData()[B

    move-result-object v4

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getCommandId()S

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 503
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 507
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->getOutputStreamData()[B

    move-result-object v4

    goto :goto_0

    .line 451
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/DeviceRootKeyService;->isExistDeviceRootKey(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 452
    invoke-virtual {v2, v8}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_1

    .line 454
    :cond_3
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_1

    .line 458
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/DeviceRootKeyService;->getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "drkUID":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 461
    invoke-virtual {v2, v8}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 462
    invoke-virtual {v2, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setRawData(Ljava/lang/String;)V

    goto :goto_1

    .line 465
    :cond_4
    invoke-virtual {v2, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_1

    .line 471
    .end local v0    # "drkUID":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getEnableTlv()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 472
    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/DeviceRootKeyService;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v3

    .line 476
    .local v3, "serviceKey":[B
    :goto_2
    if-eqz v3, :cond_6

    .line 478
    invoke-virtual {v2, v8}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    .line 479
    invoke-virtual {v2, v3}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setRawData([B)V

    goto :goto_1

    .line 474
    .end local v3    # "serviceKey":[B
    :cond_5
    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getKeyType()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/DeviceRootKeyService;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v3

    .restart local v3    # "serviceKey":[B
    goto :goto_2

    .line 482
    :cond_6
    invoke-virtual {v2, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_1

    .line 486
    .end local v3    # "serviceKey":[B
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v4}, Lcom/android/server/DeviceRootKeyService;->releaseServiceKeySession()I

    .line 487
    invoke-virtual {v2, v8}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_1

    .line 491
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->initTlv()V

    .line 492
    invoke-virtual {v2, v8}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto :goto_1

    .line 496
    :pswitch_5
    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getTlvTag()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->getTlvValue()[B

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->addTlv(I[B)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 497
    invoke-virtual {v2, v8}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_1

    .line 499
    :cond_7
    invoke-virtual {v2, v9}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->setErrorCode(S)V

    goto/16 :goto_1

    .line 448
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private initTlv()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 407
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 357
    :try_start_0
    new-instance v5, Landroid/net/LocalServerSocket;

    const-string v6, "DeviceRootKeyService"

    invoke-direct {v5, v6}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    .line 358
    const/16 v5, 0x2000

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->input:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 366
    :goto_0
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v5, :cond_2

    .line 369
    :try_start_1
    const-string v5, "DeviceRootKeyServiceSocket"

    const-string v6, "Ready to connect."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v5}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    .line 372
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    if-eqz v5, :cond_1

    .line 374
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 375
    .local v2, "is":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 377
    .local v3, "os":Ljava/io/OutputStream;
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->input:[B

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 378
    .local v4, "readLen":I
    const-string v5, "DeviceRootKeyServiceSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    :goto_1
    if-lez v4, :cond_1

    .line 382
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v0

    .line 384
    .local v0, "cred":Landroid/net/Credentials;
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->input:[B

    iget-object v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->this$0:Lcom/android/server/DeviceRootKeyService;

    invoke-virtual {v0}, Landroid/net/Credentials;->getPid()I

    move-result v7

    invoke-virtual {v0}, Landroid/net/Credentials;->getUid()I

    move-result v8

    const/4 v9, 0x1

    # invokes: Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZ)Z
    invoke-static {v6, v7, v8, v9}, Lcom/android/server/DeviceRootKeyService;->access$000(Lcom/android/server/DeviceRootKeyService;IIZ)Z

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->executeCommand([BZ)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 386
    iget-object v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;->input:[B

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 388
    if-lez v4, :cond_0

    .line 389
    const-string v5, "DeviceRootKeyServiceSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 395
    .end local v0    # "cred":Landroid/net/Credentials;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "readLen":I
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "DeviceRootKeyServiceSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Socket connection may be closed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 360
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 362
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "DeviceRootKeyServiceSocket"

    const-string v6, "Failed to excute socket service."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 393
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string v5, "DeviceRootKeyServiceSocket"

    const-string v6, "Disconnected."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 401
    :cond_2
    const-string v5, "DeviceRootKeyServiceSocket"

    const-string v6, "Socket thread has been stopped."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void
.end method
