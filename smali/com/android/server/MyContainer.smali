.class public Lcom/android/server/MyContainer;
.super Lcom/android/server/SEAMSContainer;
.source "MyContainer.java"


# static fields
.field private static final MAX_MYCONTAIN_NUM:I = 0x12c

.field private static MYCONTAINER_MAC_PERM:Ljava/lang/String; = null

.field private static final MYCONTAINER_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/mycontainer"

.field private static MYCONTAINER_SEAPP_CONTEXT:Ljava/lang/String; = null

.field private static final MYCONTAINER_TYPE:I = 0x2

.field private static final MYCONTAIN_START_NUM:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "MyContainer"

.field private static mSKLog:Lcom/android/server/SKLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "/data/security/mycontainer/mac_permissions.xml"

    sput-object v0, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    .line 69
    const-string v0, "/data/security/mycontainer/seapp_contexts"

    sput-object v0, Lcom/android/server/MyContainer;->MYCONTAINER_SEAPP_CONTEXT:Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/server/SEAMSContainer;-><init>()V

    .line 84
    sput-object p1, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    .line 85
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 86
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object v1, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/MyContainer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 87
    return-void
.end method


# virtual methods
.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 411
    const/4 v11, 0x0

    .line 415
    .local v11, "appNotInstalled":Z
    const/4 v5, 0x3

    move/from16 v0, p4

    if-eq v0, v5, :cond_0

    const/4 v5, 0x4

    move/from16 v0, p4

    if-eq v0, v5, :cond_0

    .line 416
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "Apptype not 3 or 4"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const/4 v5, -0x3

    .line 583
    :goto_0
    return v5

    .line 421
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/MyContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 422
    if-nez p1, :cond_1

    .line 423
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, " addAppToContainer failed, no packageName found"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/4 v5, -0x1

    goto :goto_0

    .line 426
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 427
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, " invalid container ID"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/16 v5, -0xc

    goto :goto_0

    .line 430
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v15

    .line 431
    .local v15, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v15, :cond_3

    .line 432
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string/jumbo v8, "genericMDMID is null, Returning null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v5, -0x2

    goto :goto_0

    .line 436
    :cond_3
    iget-object v5, v15, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v7, v15, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v5, v7, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 437
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v5, -0x2

    goto :goto_0

    .line 443
    :cond_4
    const/4 v12, 0x0

    .line 444
    .local v12, "certMatch":Z
    const/4 v4, 0x0

    .line 445
    .local v4, "signature":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v16, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/MyContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 447
    if-nez p2, :cond_5

    .line 449
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, Input Certificate is null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/16 v5, -0xe

    goto :goto_0

    .line 452
    :cond_5
    if-nez v16, :cond_7

    .line 453
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, signature is null, package not installed yet"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v5, 0x0

    aget-object v4, p2, v5

    .line 455
    const/4 v11, 0x1

    .line 479
    :cond_6
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    .local v3, "macPermFile":Ljava/io/File;
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    .line 492
    .local v18, "userId":I
    const/4 v13, 0x0

    .line 497
    .local v13, "containerAllowCat":Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 501
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x4

    move/from16 v0, p4

    if-ne v0, v5, :cond_9

    .line 502
    if-eqz v10, :cond_a

    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const/16 v7, 0x66

    const/16 v8, 0xc8

    move/from16 v0, p4

    invoke-static {v5, v7, v8, v0}, Lcom/android/server/MyContainer;->checkCategoryRange(Ljava/lang/String;III)I

    move-result v5

    if-eqz v5, :cond_a

    .line 505
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, Given Package Name has a non-empty third party Container Allow Category"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    const/16 v5, -0x9

    goto/16 :goto_0

    .line 457
    .end local v3    # "macPermFile":Ljava/io/File;
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "containerAllowCat":Ljava/lang/String;
    .end local v18    # "userId":I
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "signature":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 460
    .restart local v4    # "signature":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 464
    const/4 v12, 0x1

    .line 469
    :cond_8
    if-nez v12, :cond_6

    .line 471
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/16 v5, -0xd

    goto/16 :goto_0

    .line 509
    .restart local v3    # "macPermFile":Ljava/io/File;
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "containerAllowCat":Ljava/lang/String;
    .restart local v18    # "userId":I
    :cond_9
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_a

    .line 510
    if-eqz v10, :cond_a

    :try_start_1
    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const/4 v7, 0x1

    const/16 v8, 0x2bc

    move/from16 v0, p4

    invoke-static {v5, v7, v8, v0}, Lcom/android/server/MyContainer;->checkCategoryRange(Ljava/lang/String;III)I

    move-result v5

    if-eqz v5, :cond_a

    .line 513
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer_GENERIC_SECURED_APPTYPE, Given Package Name has a non-empty third party Container Allow Category"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const/16 v5, -0x9

    goto/16 :goto_0

    .line 518
    :cond_a
    const/4 v5, 0x4

    move/from16 v0, p4

    if-eq v0, v5, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/MyContainer;->isProcessRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/MyContainer;->checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 520
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, App is Running and is not an Agent which owns a Single Container"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v5, -0x8

    goto/16 :goto_0

    .line 524
    :cond_b
    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v5, :cond_13

    .line 525
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, Got Application Info, Seinfo is not null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget v5, v10, Landroid/content/pm/ApplicationInfo;->category:I

    if-lez v5, :cond_c

    iget v5, v10, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v7, 0x1f5

    if-ge v5, v7, :cond_c

    .line 527
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, ERROR_ALREADY_CONTAINER_APP is returned"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const/16 v5, -0x9

    goto/16 :goto_0

    .line 529
    :cond_c
    iget v5, v10, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez v5, :cond_d

    .line 530
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, Got Application Info, appinfo.category is 0"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 533
    :cond_d
    const-string/jumbo v5, "default"

    iget-object v7, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 534
    const-string/jumbo v5, "untrusted"

    iput-object v5, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 539
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 540
    .local v17, "uid":I
    const/4 v6, 0x0

    .line 541
    .local v6, "newSeinfo":Ljava/lang/String;
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_f

    .line 542
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":s0:c"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 546
    :goto_1
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move/from16 v8, p4

    invoke-static/range {v3 .. v9}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v5

    if-eqz v5, :cond_10

    .line 547
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer: addEntryToMac failed"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 544
    :cond_f
    iget-object v6, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_1

    .line 550
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/MyContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_11

    .line 551
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer: loadContainerSetting failed"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v3, v4, v0, v5, v1}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 553
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 558
    :cond_11
    if-nez v11, :cond_12

    .line 559
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_12

    .line 563
    sget-object v5, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_12

    .line 564
    sget-object v5, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    .line 583
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 570
    .end local v6    # "newSeinfo":Ljava/lang/String;
    .end local v17    # "uid":I
    :cond_13
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAppToContainer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " seinfo is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 572
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 574
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "containerAllowCat":Ljava/lang/String;
    .end local v18    # "userId":I
    :catch_0
    move-exception v14

    .line 576
    .local v14, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string/jumbo v8, "leave addAppToContainer + Exception e + Returning Policy Failed"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const/4 v5, -0x1

    goto/16 :goto_0
.end method

.method protected checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v1

    .line 190
    .local v1, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v1, :cond_0

    .line 191
    const-string v3, "MyContainer"

    const-string v4, "checkIfSingleContainerOwnerIsBeingAdded, genericMDMID is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_0
    return v2

    .line 194
    .restart local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_0
    iget-object v3, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 201
    .end local v1    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "MyContainer"

    const-string v4, "checkIfSingleContainerOwnerIsBeingAdded, false is returned"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createSEContainer(II)I
    .locals 15
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 100
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    .line 102
    .local v14, "userId":I
    :try_start_0
    new-instance v13, Ljava/io/File;

    const-string v1, "/data/security/mycontainer"

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v13, "myContainerDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->hasGenericContainers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "createSEContainer, Issue with myContainerDir directory"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v10, -0x1

    .line 176
    .end local v13    # "myContainerDir":Ljava/io/File;
    :goto_0
    return v10

    .line 109
    .restart local v13    # "myContainerDir":Ljava/io/File;
    :cond_0
    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    .line 110
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 111
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "macPermFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v12

    .line 127
    .local v12, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v12, :cond_2

    .line 128
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "createSEContainer, genericMDMID is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v10, -0x1

    goto :goto_0

    .line 114
    .end local v0    # "macPermFile":Ljava/io/File;
    .end local v12    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .end local v13    # "myContainerDir":Ljava/io/File;
    :catch_0
    move-exception v11

    .line 115
    .local v11, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "createSEContainer, Issue with myContainerDir directory"

    invoke-virtual {v1, v2, v3, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    const/4 v10, -0x1

    goto :goto_0

    .line 134
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v0    # "macPermFile":Ljava/io/File;
    .restart local v12    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .restart local v13    # "myContainerDir":Ljava/io/File;
    :cond_2
    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    aput-object v2, v9, v1

    .line 135
    .local v9, "certificates":[Ljava/lang/String;
    iget-object v1, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 140
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v8, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v1, :cond_3

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v2, 0x1f5

    if-ge v1, v2, :cond_3

    .line 141
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "createSEContainer, The Agent is a Container App"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/16 v10, -0x9

    goto :goto_0

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->createContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 145
    .local v10, "containerID":I
    const/4 v1, -0x7

    if-ne v10, v1, :cond_4

    .line 146
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "createContainer, Generic Container Count Overflow"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v10, -0x7

    goto :goto_0

    .line 149
    :cond_4
    invoke-static {v10}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 150
    iget-object v1, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v1

    if-eqz v1, :cond_5

    .line 153
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "createSEContainer: addEntryToMac failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v10}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    .line 155
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 157
    :cond_5
    iget-object v1, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v14, v2}, Lcom/android/server/MyContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 158
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "createSEContainer: loadcontainersetting failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 160
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v10}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    .line 161
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 168
    :cond_6
    sget-object v1, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2}, Lcom/sec/enterprise/knox/seams/SEAMS;->setSEContainerClipboardMode(II)I

    .line 172
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.SECONTAINER_ADDED"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v7, "additionIntent":Landroid/content/Intent;
    const-string/jumbo v1, "secontainerid"

    invoke-virtual {v7, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    sget-object v1, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 175
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast addition of secontainer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 7
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 310
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 314
    invoke-virtual {p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    .line 315
    .local v0, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v0, :cond_0

    .line 316
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string/jumbo v4, "genericMDMID is null, Returning null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .end local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_0
    return-object v1

    .line 319
    .restart local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_0
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "genericmdmid packagename = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "genericmdmid certs= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 323
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string/jumbo v4, "getPackageNamesFromSEContainer, Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 327
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v6, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageNamesFromSEContainerID(III)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 328
    :cond_2
    const/4 v2, 0x4

    if-ne p2, v2, :cond_3

    .line 332
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v6, p2}, Lcom/android/server/pm/PackageManagerService;->getContainerAllowPackageNamesFromSEContainer(III)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 335
    .end local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_3
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string/jumbo v4, "getPackageNamesFromSEContainer, Given Container ID is not my Container ID, returning null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getSEContainerIDs()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    .line 383
    .local v0, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v0, :cond_0

    .line 385
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "getSEContainerIDs, genericMDMID is null, Returning null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v1, 0x0

    .line 389
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getMyContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    goto :goto_0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x2

    .line 349
    invoke-static {p1}, Lcom/android/server/MyContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-virtual {p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v6

    .line 351
    .local v6, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v6, :cond_0

    .line 353
    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "MyContainer"

    const-string/jumbo v2, "genericMDMID is null, Returning null"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_0
    return-object v7

    .line 357
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    .line 359
    .local v8, "retContainerID":I
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x0

    aput v8, v7, v0

    .line 360
    .local v7, "retContainerArray":[I
    goto :goto_0

    .line 361
    .end local v7    # "retContainerArray":[I
    .end local v8    # "retContainerID":I
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDsFromContainerAllowPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[I

    move-result-object v7

    goto :goto_0

    .line 364
    :cond_2
    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "MyContainer"

    const-string/jumbo v2, "getSEContainerIDsfromPackageName, null is returned"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 370
    const/4 v1, 0x0

    .line 371
    .local v1, "signature":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "macPermFile":Ljava/io/File;
    invoke-static {v0, p1}, Lcom/android/server/MyContainer;->getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    return-object v1
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 587
    const/4 v11, 0x0

    .line 591
    .local v11, "appNotInstalled":Z
    const/4 v5, 0x3

    move/from16 v0, p4

    if-eq v0, v5, :cond_0

    const/4 v5, 0x4

    move/from16 v0, p4

    if-eq v0, v5, :cond_0

    .line 592
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "Apptype not 3 or 4"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v5, -0x3

    .line 717
    :goto_0
    return v5

    .line 595
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/MyContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 596
    if-nez p1, :cond_1

    .line 597
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, " removeAppFromContainer failed, no packageName found"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const/4 v5, -0x1

    goto :goto_0

    .line 600
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v14

    .line 601
    .local v14, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v14, :cond_2

    .line 602
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer, genericMDMID is null, Returning null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const/4 v5, -0x2

    goto :goto_0

    .line 605
    :cond_2
    iget-object v5, v14, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v6, v14, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v5, v6, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 606
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer, Given Container ID not created by Caller - Returning Refused - Container Allow Package Case"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/4 v5, -0x2

    goto :goto_0

    .line 610
    :cond_3
    const/4 v12, 0x0

    .line 611
    .local v12, "certMatch":Z
    const/4 v4, 0x0

    .line 612
    .local v4, "signature":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v16, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/MyContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 614
    if-nez p2, :cond_4

    .line 616
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, " removeAppFromContainer, Input Certificate is null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const/16 v5, -0xe

    goto :goto_0

    .line 619
    :cond_4
    if-nez v16, :cond_6

    .line 620
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer, signature is null, package not installed yet"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const/4 v5, 0x0

    aget-object v4, p2, v5

    .line 622
    const/4 v11, 0x1

    .line 646
    :cond_5
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 656
    .local v3, "macPermFile":Ljava/io/File;
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 657
    .local v17, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 658
    .local v15, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    .line 662
    .local v18, "userId":I
    const/4 v5, 0x4

    move/from16 v0, p4

    if-eq v0, v5, :cond_8

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/MyContainer;->isProcessRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/MyContainer;->checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 664
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer, App is Running and is not an Agent which owns a Single Container"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    const/4 v5, -0x8

    goto/16 :goto_0

    .line 624
    .end local v3    # "macPermFile":Ljava/io/File;
    .end local v15    # "pid":I
    .end local v17    # "uid":I
    .end local v18    # "userId":I
    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "signature":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 627
    .restart local v4    # "signature":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 631
    const/4 v12, 0x1

    .line 636
    :cond_7
    if-nez v12, :cond_5

    .line 638
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/16 v5, -0xd

    goto/16 :goto_0

    .line 668
    .restart local v3    # "macPermFile":Ljava/io/File;
    .restart local v15    # "pid":I
    .restart local v17    # "uid":I
    .restart local v18    # "userId":I
    :cond_8
    :try_start_1
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 672
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 673
    const/4 v5, 0x3

    move/from16 v0, p4

    if-ne v0, v5, :cond_b

    .line 677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v10, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v3, v4, v0, v5, v1}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 678
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer, removeEntryFromMac failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 681
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/MyContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a

    .line 682
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer, loadContainerSetting failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v6, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v10, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 684
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 686
    :cond_a
    if-nez v11, :cond_b

    .line 687
    sget-object v5, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_b

    .line 688
    sget-object v5, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    .line 695
    :cond_b
    const/4 v5, 0x4

    move/from16 v0, p4

    if-ne v0, v5, :cond_e

    .line 696
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v3, v4, v0, v5, v1}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_c

    .line 697
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer_GENERIC_TRUSTED_APPTYPE, removeEntryFromMac failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 700
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/MyContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_e

    .line 701
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer_GENERIC_TRUSTED_APPTYPE, loadContainerSetting failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v6, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 703
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 707
    :cond_d
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeAppFromContainer, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seinfo is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 708
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 710
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "pid":I
    .end local v17    # "uid":I
    .end local v18    # "userId":I
    :catch_0
    move-exception v13

    .line 711
    .local v13, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 717
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v15    # "pid":I
    .restart local v17    # "uid":I
    .restart local v18    # "userId":I
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public removeSEContainer(III)I
    .locals 12
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "containerID"    # I

    .prologue
    const/4 v8, 0x0

    const/16 v7, -0xb

    const/4 v6, -0x1

    .line 220
    new-instance v1, Ljava/io/File;

    sget-object v9, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "macPermFile":Ljava/io/File;
    const/4 v4, -0x1

    .line 227
    .local v4, "status":I
    invoke-virtual {p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    .line 228
    .local v0, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-nez v0, :cond_0

    .line 229
    sget-object v7, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    const-string/jumbo v9, "removeSEContainer, genericMDMID is null"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    return v6

    .line 239
    :cond_0
    invoke-static {p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 240
    sget-object v9, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v9

    invoke-virtual {v9, p3}, Lcom/sec/enterprise/knox/seams/SEAMS;->getSEContainerClipboardMode(I)I

    move-result v4

    .line 244
    const/4 v9, 0x3

    invoke-virtual {p0, p3, v9}, Lcom/android/server/MyContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v9, v2

    if-nez v9, :cond_8

    .line 249
    :cond_1
    const/4 v9, 0x4

    invoke-virtual {p0, p3, v9}, Lcom/android/server/MyContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, "trustedPackages":[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v9, v5

    if-nez v9, :cond_7

    .line 254
    :cond_2
    iget-object v7, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v7, v9, v10, p3}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_6

    .line 258
    iget-object v7, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v7, v9, v10, v8}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 259
    sget-object v7, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    const-string/jumbo v9, "removeEntryFromMac failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SECONTAINER_REMOVED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v3, "removalIntent":Landroid/content/Intent;
    const-string/jumbo v7, "secontainerid"

    invoke-virtual {v3, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    sget-object v7, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 269
    sget-object v7, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "MyContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Broadcast removal of secontainer:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    if-ltz v4, :cond_5

    .line 272
    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Generic clipboard for containerID:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", deleting the entry now"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, p3, v4}, Lcom/android/server/MyContainer;->deleteSEContainerClipboardTableEntry(II)I

    :cond_4
    :goto_1
    move v6, v8

    .line 279
    goto/16 :goto_0

    .line 274
    :cond_5
    if-ne v4, v6, :cond_4

    .line 275
    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v9, "Error retrieving status of Generic clipboard "

    invoke-virtual {v6, v7, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 282
    .end local v3    # "removalIntent":Landroid/content/Intent;
    :cond_6
    sget-object v7, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    const-string/jumbo v9, "remove MyContainer ID Failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_7
    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    const-string v9, "Trusted Package List not emPty"

    invoke-virtual {v6, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 286
    goto/16 :goto_0

    .line 289
    .end local v5    # "trustedPackages":[Ljava/lang/String;
    :cond_8
    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    const-string v9, "CONTAINER not empty"

    invoke-virtual {v6, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 290
    goto/16 :goto_0

    .line 294
    .end local v2    # "packageNames":[Ljava/lang/String;
    :cond_9
    sget-object v7, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    const-string v9, "Not my containerID"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
