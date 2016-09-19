.class public Lcom/android/server/clipboard/ClipboardService;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;,
        Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardService"

.field private static final is3LMAllowed:Z


# instance fields
.field private GENERIC_CATEGORY_END:I

.field private GENERIC_CATEGORY_START:I

.field private GOOD_CATEGORY:I

.field private final mAm:Landroid/app/IActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerID:I

.field private final mContext:Landroid/content/Context;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUm:Landroid/os/IUserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    .line 84
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 105
    const/16 v3, 0x66

    iput v3, p0, Lcom/android/server/clipboard/ClipboardService;->GOOD_CATEGORY:I

    .line 106
    const/16 v3, 0xc9

    iput v3, p0, Lcom/android/server/clipboard/ClipboardService;->GENERIC_CATEGORY_START:I

    .line 107
    const/16 v3, 0x1f4

    iput v3, p0, Lcom/android/server/clipboard/ClipboardService;->GENERIC_CATEGORY_END:I

    .line 132
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    .line 138
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    .line 139
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 141
    const-string/jumbo v3, "user"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Landroid/os/IUserManager;

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    .line 142
    const-string v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, "permOwner":Landroid/os/IBinder;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const-string v4, "clipboard"

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    :goto_0
    iput-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 152
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/clipboard/ClipboardService$1;

    invoke-direct {v4, p0}, Lcom/android/server/clipboard/ClipboardService$1;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/clipboard/ClipboardService;->mContainerID:I

    .line 168
    return-void

    .line 146
    .end local v2    # "userFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "clipboard"

    const-string v4, "AM dead"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/clipboard/ClipboardService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboard/ClipboardService;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->removeClipboard(I)V

    return-void
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 664
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 665
    .local v7, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 666
    .local v8, "targetUserHandle":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 668
    .local v4, "oldIdentity":J
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {v7, p2, v9, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 669
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_0

    .line 670
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v9

    .line 679
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 681
    :goto_0
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    .line 685
    .local v1, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getPersonaId()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/clipboard/ClipboardService;->isClipboardShareAllowed(I)I

    move-result v3

    .line 686
    .local v3, "isClipboardShareAllowed":I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_4

    .line 687
    if-nez v3, :cond_3

    .line 688
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 689
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 690
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 691
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    invoke-virtual {v9, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {p0, v9, p2, v10}, Lcom/android/server/clipboard/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;I)V

    .line 690
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 672
    .end local v0    # "N":I
    .end local v1    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .end local v2    # "i":I
    .end local v3    # "isClipboardShareAllowed":I
    .restart local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :try_start_1
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v9

    if-nez v9, :cond_1

    .line 673
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Calling uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not own package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 679
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v9

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .restart local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 693
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v0    # "N":I
    .restart local v1    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .restart local v2    # "i":I
    .restart local v3    # "isClipboardShareAllowed":I
    :cond_2
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 708
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return-void

    .line 701
    :cond_4
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 702
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 703
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_5

    .line 704
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {p0, v9, p2, v10}, Lcom/android/server/clipboard/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;I)V

    .line 703
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 706
    :cond_5
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .locals 3
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "uid"    # I

    .prologue
    .line 634
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 635
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 636
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService;->checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 638
    :cond_0
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "uid"    # I

    .prologue
    .line 624
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 627
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 628
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 629
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 631
    :cond_1
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I

    .prologue
    .line 608
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    :goto_0
    return-void

    .line 611
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 614
    .local v6, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    move v1, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 619
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    goto :goto_0
.end method

.method private getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 192
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v2

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .line 194
    .local v0, "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .end local v0    # "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-direct {v0, p0, p1}, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/clipboard/ClipboardService;I)V

    .line 196
    .restart local v0    # "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    :cond_0
    monitor-exit v2

    return-object v0

    .line 199
    .end local v0    # "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPersonaManager()Z
    .locals 2

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v0, :cond_1

    .line 892
    const/4 v0, 0x1

    .line 895
    :goto_0
    return v0

    .line 894
    :cond_1
    const-string v0, "ClipboardService"

    const-string/jumbo v1, "personaManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSEAMSCategory(Ljava/lang/String;)I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 761
    const/4 v4, 0x0

    .line 762
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, -0x1

    .line 763
    .local v1, "category":I
    iget-object v6, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_1

    .line 764
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 769
    const/4 v0, 0x0

    .line 770
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    .line 771
    .local v5, "seinfo":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 773
    const/16 v6, 0x80

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-interface {v4, p1, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 778
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 779
    const-string v6, "ClipboardService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appInfo is null for packageName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v2, v1

    .line 789
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "category":I
    .end local v5    # "seinfo":Ljava/lang/String;
    .local v2, "category":I
    :goto_2
    return v2

    .line 766
    .end local v2    # "category":I
    .restart local v1    # "category":I
    :cond_1
    const-string v6, "ClipboardService"

    const-string v7, "Cannot get context for package manager"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 767
    .end local v1    # "category":I
    .restart local v2    # "category":I
    goto :goto_2

    .line 774
    .end local v2    # "category":I
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "category":I
    .restart local v5    # "seinfo":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 775
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 781
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 782
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 783
    const-string v6, "ClipboardService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSEAMSCategory, before checking range, category: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", seinfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget v6, p0, Lcom/android/server/clipboard/ClipboardService;->GOOD_CATEGORY:I

    if-eq v1, v6, :cond_3

    iget v6, p0, Lcom/android/server/clipboard/ClipboardService;->GENERIC_CATEGORY_START:I

    if-lt v1, v6, :cond_4

    :cond_3
    iget v6, p0, Lcom/android/server/clipboard/ClipboardService;->GENERIC_CATEGORY_END:I

    if-le v1, v6, :cond_5

    .line 785
    :cond_4
    const/4 v1, 0x0

    .line 787
    :cond_5
    const-string v6, "ClipboardService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSEAMSCategory, category: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", seinfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private final grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;I)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 654
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 655
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 657
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 658
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 659
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 661
    :cond_1
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 641
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 643
    .local v8, "ident":J
    :try_start_0
    invoke-static {p1, p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 644
    .local v6, "sourceUserId":I
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 645
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v5, 0x1

    move-object v3, p2

    move-object v4, p1

    move v7, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 651
    .end local v6    # "sourceUserId":I
    :goto_0
    return-void

    .line 647
    :catch_0
    move-exception v0

    .line 649
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private isClipboardAllowed(ZI)I
    .locals 10
    .param p1, "showToast"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 828
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v7

    .line 847
    :goto_0
    return v0

    .line 832
    :cond_0
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 833
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 834
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isClipboardAllowedAsUser"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 835
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 837
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 838
    const-string/jumbo v0, "isClipboardAllowedAsUser"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 842
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 847
    goto :goto_0

    .line 842
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v7

    .line 845
    goto :goto_0
.end method

.method private isClipboardShareAllowed(I)I
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 854
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v7

    .line 873
    :goto_0
    return v0

    .line 858
    :cond_0
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 859
    .local v1, "uri":Landroid/net/Uri;
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 860
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isClipboardShareAllowedAsUser"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 861
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 863
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 864
    const-string/jumbo v0, "isClipboardShareAllowedAsUser"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 868
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 873
    goto :goto_0

    .line 868
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v7

    .line 871
    goto :goto_0
.end method

.method private isSEContainerClipboardEnabled(I)I
    .locals 10
    .param p1, "category"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 793
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v7

    .line 813
    :goto_0
    return v0

    .line 796
    :cond_0
    const-string v0, "content://com.sec.knox.provider/SeamsPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 797
    .local v1, "uri":Landroid/net/Uri;
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 798
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "getSEContainerClipboardMode"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 799
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 801
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 802
    const-string/jumbo v0, "getSEContainerClipboardMode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 806
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 812
    const-string v0, "ClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSEContainerClipboardEnabled for secontainerid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 813
    goto :goto_0

    .line 806
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 809
    :cond_2
    const-string v0, "ClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSEContainerClipboardEnabled for secontainerid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is -1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 810
    goto/16 :goto_0
.end method

.method private removeClipboard(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 205
    monitor-exit v1

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;

    .prologue
    .line 723
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 724
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/clipboard/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    .line 726
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 727
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 728
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/clipboard/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    .line 730
    :cond_1
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 711
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {p1, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v2

    .line 712
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 714
    .local v0, "ident":J
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 715
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v3, v4, p1, v5, v2}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 720
    :goto_0
    return-void

    .line 716
    :catch_0
    move-exception v3

    .line 718
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private final revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .locals 3
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .prologue
    .line 733
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v2, :cond_1

    .line 740
    :cond_0
    return-void

    .line 736
    :cond_1
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 737
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 738
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/clipboard/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public UpdateClipboardDB(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 819
    iget v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContainerID:I

    if-eq v0, p1, :cond_0

    .line 820
    iput p1, p0, Lcom/android/server/clipboard/ClipboardService;->mContainerID:I

    .line 822
    :cond_0
    return-void
.end method

.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 530
    monitor-enter p0

    .line 533
    :try_start_0
    iget v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContainerID:I

    if-eqz v0, :cond_0

    .line 534
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 535
    monitor-exit p0

    .line 541
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 540
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPersonaId()I
    .locals 2

    .prologue
    .line 877
    const/4 v0, 0x0

    .line 878
    .local v0, "userId":I
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->getFocusedUser()I

    move-result v0

    .line 883
    :goto_0
    return v0

    .line 881
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0
.end method

.method public getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 371
    monitor-enter p0

    .line 373
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getPersonaId()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/clipboard/ClipboardService;->isClipboardAllowed(ZI)I

    move-result v1

    .line 374
    .local v1, "isClipboardAllowed":I
    if-nez v1, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 376
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 377
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 378
    monitor-exit p0

    .line 430
    :goto_0
    return-object v3

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getPersonaId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/clipboard/ClipboardService;->isClipboardShareAllowed(I)I

    move-result v2

    .line 400
    .local v2, "isClipboardShareAllowed":I
    if-eqz v2, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 409
    :goto_1
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v5, v6, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 410
    const-string v4, "ClipboardService"

    const-string v5, "MODE_ALLOWED is false return!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    monitor-exit p0

    goto :goto_0

    .line 431
    .end local v1    # "isClipboardAllowed":I
    .end local v2    # "isClipboardShareAllowed":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 403
    .restart local v1    # "isClipboardAllowed":I
    .restart local v2    # "isClipboardShareAllowed":I
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 404
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_1

    .line 413
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/clipboard/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getPersonaId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/clipboard/ClipboardService;->isClipboardShareAllowed(I)I

    move-result v2

    .line 418
    if-nez v2, :cond_3

    .line 419
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_0

    .line 422
    :cond_3
    iget v3, p0, Lcom/android/server/clipboard/ClipboardService;->mContainerID:I

    if-eqz v3, :cond_4

    .line 423
    const-string v3, "ClipboardService"

    const-string/jumbo v4, "getPrimaryClip knox return!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_0

    .line 428
    :cond_4
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v0, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 429
    .local v0, "data":Landroid/content/ClipData;
    const-string v4, "ClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPrimaryClip : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    monitor-exit p0

    move-object v3, v0

    goto/16 :goto_0

    .line 429
    :cond_5
    const-string/jumbo v3, "null"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 435
    monitor-enter p0

    .line 436
    :try_start_0
    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 437
    monitor-exit p0

    .line 471
    :goto_0
    return-object v4

    .line 439
    :cond_0
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 443
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getPersonaId()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/clipboard/ClipboardService;->isClipboardAllowed(ZI)I

    move-result v1

    .line 444
    .local v1, "isClipboardAllowed":I
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getPersonaId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/clipboard/ClipboardService;->isClipboardShareAllowed(I)I

    move-result v2

    .line 445
    .local v2, "isClipboardShareAllowed":I
    if-nez v1, :cond_1

    .line 446
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 447
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 448
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 449
    monitor-exit p0

    goto :goto_0

    .line 472
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .end local v1    # "isClipboardAllowed":I
    .end local v2    # "isClipboardShareAllowed":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 452
    .restart local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .restart local v1    # "isClipboardAllowed":I
    .restart local v2    # "isClipboardShareAllowed":I
    :cond_1
    if-eqz v2, :cond_3

    .line 453
    :try_start_1
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 465
    iget v5, p0, Lcom/android/server/clipboard/ClipboardService;->mContainerID:I

    if-eqz v5, :cond_5

    .line 466
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v5, :cond_2

    iget-object v4, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 455
    :cond_3
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 456
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 458
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 459
    .local v3, "uid":I
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 460
    monitor-exit p0

    goto :goto_0

    .line 462
    :cond_4
    iget-object v4, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipData;

    invoke-virtual {v4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    monitor-exit p0

    goto :goto_0

    .line 471
    .end local v3    # "uid":I
    :cond_5
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v5, :cond_6

    iget-object v4, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method getRelatedProfiles(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 325
    .local v2, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 330
    .local v1, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    .end local v1    # "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_0
    return-object v1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "ClipboardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote Exception calling UserManager: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    const/4 v1, 0x0

    .line 330
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public hasClipboardText(Ljava/lang/String;)Z
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 558
    monitor-enter p0

    .line 559
    :try_start_0
    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v8, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v5, v8, v9, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 561
    monitor-exit p0

    move v5, v6

    .line 603
    :goto_0
    return v5

    .line 563
    :cond_0
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 567
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getPersonaId()I

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/android/server/clipboard/ClipboardService;->isClipboardAllowed(ZI)I

    move-result v1

    .line 568
    .local v1, "isClipboardAllowed":I
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getPersonaId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/clipboard/ClipboardService;->isClipboardShareAllowed(I)I

    move-result v2

    .line 569
    .local v2, "isClipboardShareAllowed":I
    if-nez v1, :cond_1

    .line 570
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 571
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 572
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 573
    monitor-exit p0

    move v5, v6

    goto :goto_0

    .line 576
    :cond_1
    if-eqz v2, :cond_2

    .line 577
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 590
    iget v5, p0, Lcom/android/server/clipboard/ClipboardService;->mContainerID:I

    if-eqz v5, :cond_6

    .line 591
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v5, :cond_6

    .line 592
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 593
    .local v3, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_5

    move v5, v7

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 604
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .end local v1    # "isClipboardAllowed":I
    .end local v2    # "isClipboardShareAllowed":I
    .end local v3    # "text":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 579
    .restart local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .restart local v1    # "isClipboardAllowed":I
    .restart local v2    # "isClipboardShareAllowed":I
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 580
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 582
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 583
    .local v4, "uid":I
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 584
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipData;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 585
    .restart local v3    # "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_3

    move v5, v7

    :goto_2
    monitor-exit p0

    goto/16 :goto_0

    :cond_3
    move v5, v6

    goto :goto_2

    .line 587
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_4
    monitor-exit p0

    move v5, v6

    goto/16 :goto_0

    .end local v4    # "uid":I
    .restart local v3    # "text":Ljava/lang/CharSequence;
    :cond_5
    move v5, v6

    .line 593
    goto :goto_1

    .line 599
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_6
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v5, :cond_8

    .line 600
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 601
    .restart local v3    # "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_7

    move v5, v7

    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    :cond_7
    move v5, v6

    goto :goto_3

    .line 603
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v6

    goto/16 :goto_0
.end method

.method public hasPrimaryClip(Ljava/lang/String;)Z
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 476
    monitor-enter p0

    .line 492
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 493
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getPersonaId()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/clipboard/ClipboardService;->isClipboardAllowed(ZI)I

    move-result v1

    .line 494
    .local v1, "isClipboardAllowed":I
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getPersonaId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/clipboard/ClipboardService;->isClipboardShareAllowed(I)I

    move-result v2

    .line 495
    .local v2, "isClipboardShareAllowed":I
    if-nez v1, :cond_0

    .line 496
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 497
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 498
    iget-object v4, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 499
    monitor-exit p0

    .line 524
    :goto_0
    return v3

    .line 502
    :cond_0
    if-eqz v2, :cond_1

    .line 503
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 512
    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 513
    monitor-exit p0

    goto :goto_0

    .line 525
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .end local v1    # "isClipboardAllowed":I
    .end local v2    # "isClipboardShareAllowed":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 505
    .restart local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .restart local v1    # "isClipboardAllowed":I
    .restart local v2    # "isClipboardShareAllowed":I
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 506
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 507
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    move v3, v4

    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 518
    :cond_3
    iget v5, p0, Lcom/android/server/clipboard/ClipboardService;->mContainerID:I

    if-eqz v5, :cond_5

    .line 519
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v5, :cond_4

    move v3, v4

    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 524
    :cond_5
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v5, :cond_6

    move v3, v4

    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isSEContainerAndIsolated(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 745
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->getPersonaId()I

    move-result v5

    if-nez v5, :cond_0

    .line 746
    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->getSEAMSCategory(Ljava/lang/String;)I

    move-result v0

    .line 747
    .local v0, "cat":I
    if-lez v0, :cond_0

    .line 748
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 749
    .local v2, "ident":J
    invoke-direct {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->isSEContainerClipboardEnabled(I)I

    move-result v1

    .line 750
    .local v1, "status":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 751
    if-ne v1, v4, :cond_0

    .line 752
    const-string v5, "ClipboardService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSEContainerAndIsolated, isSEContainerClipboardEnabled returned 1 for cat: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", return"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    .end local v0    # "cat":I
    .end local v1    # "status":I
    .end local v2    # "ident":J
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 177
    const-string v1, "clipboard"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    :cond_0
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;

    .prologue
    .line 544
    monitor-enter p0

    .line 547
    :try_start_0
    iget v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContainerID:I

    if-eqz v0, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 549
    monitor-exit p0

    .line 555
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-direct {p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 554
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    .locals 20
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 209
    monitor-enter p0

    .line 212
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v5

    .line 213
    .local v5, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/clipboard/ClipboardService;->getPersonaId()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/clipboard/ClipboardService;->isClipboardAllowed(ZI)I

    move-result v9

    .line 214
    .local v9, "isClipboardAllowed":I
    if-nez v9, :cond_0

    .line 215
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 216
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 217
    iget-object v0, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->clear()V

    .line 218
    monitor-exit p0

    .line 319
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/clipboard/ClipboardService;->getPersonaId()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/clipboard/ClipboardService;->isClipboardShareAllowed(I)I

    move-result v10

    .line 222
    .local v10, "isClipboardShareAllowed":I
    if-nez v10, :cond_1

    .line 223
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 224
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 228
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/clipboard/ClipboardService;->isSEContainerAndIsolated(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 229
    monitor-exit p0

    goto :goto_0

    .line 318
    .end local v5    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .end local v9    # "isClipboardAllowed":I
    .end local v10    # "isClipboardShareAllowed":I
    :catchall_0
    move-exception v17

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 226
    .restart local v5    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .restart local v9    # "isClipboardAllowed":I
    .restart local v10    # "isClipboardShareAllowed":I
    :cond_1
    :try_start_1
    iget-object v0, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->clear()V

    goto :goto_1

    .line 234
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v17

    if-gtz v17, :cond_3

    .line 235
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "No items"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 237
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 238
    .local v3, "callingUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1e

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_4

    .line 240
    monitor-exit p0

    goto :goto_0

    .line 242
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/clipboard/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v5

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/clipboard/ClipboardService;->getPersonaId()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/clipboard/ClipboardService;->isClipboardShareAllowed(I)I

    move-result v17

    if-nez v17, :cond_5

    .line 261
    iget-object v0, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ClipData;

    .line 263
    .local v14, "ret":Landroid/content/ClipData;
    monitor-exit p0

    goto/16 :goto_0

    .line 265
    .end local v14    # "ret":Landroid/content/ClipData;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/clipboard/ClipboardService;->mContainerID:I

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 266
    move-object/from16 v0, p1

    iput-object v0, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 274
    :goto_2
    const/16 v16, -0x1

    .line 275
    .local v16, "userId":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 276
    const/16 v16, 0x0

    .line 281
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v5

    .line 282
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/clipboard/ClipboardService;->revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V

    .line 284
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v13

    .line 285
    .local v13, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v13, :cond_c

    .line 286
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    .line 287
    .local v15, "size":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v15, v0, :cond_c

    .line 288
    const/4 v4, 0x0

    .line 289
    .local v4, "canCopy":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "persona"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PersonaManager;

    .line 290
    .local v11, "pm":Landroid/os/PersonaManager;
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 291
    const/4 v4, 0x0

    .line 292
    const-string/jumbo v17, "persona_policy"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PersonaPolicyManager;

    .line 293
    .local v12, "ppm":Landroid/os/PersonaPolicyManager;
    if-eqz v12, :cond_6

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/os/PersonaPolicyManager;->isShareClipboardDataToOwnerAllowed(I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 294
    const/4 v4, 0x1

    .line 305
    .end local v12    # "ppm":Landroid/os/PersonaPolicyManager;
    :cond_6
    :goto_4
    if-eqz v4, :cond_c

    .line 306
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->fixUrisLight(I)V

    .line 308
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v15, :cond_c

    .line 309
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v17

    iget v8, v0, Landroid/content/pm/UserInfo;->id:I

    .line 310
    .local v8, "id":I
    move/from16 v0, v16

    if-eq v8, v0, :cond_7

    .line 311
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/clipboard/ClipboardService;->getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V

    .line 308
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 268
    .end local v4    # "canCopy":Z
    .end local v7    # "i":I
    .end local v8    # "id":I
    .end local v11    # "pm":Landroid/os/PersonaManager;
    .end local v13    # "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v15    # "size":I
    .end local v16    # "userId":I
    :cond_8
    move-object/from16 v0, p1

    iput-object v0, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 269
    move-object/from16 v0, p1

    iput-object v0, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto/16 :goto_2

    .line 278
    .restart local v16    # "userId":I
    :cond_9
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v16

    goto/16 :goto_3

    .line 298
    .restart local v4    # "canCopy":Z
    .restart local v11    # "pm":Landroid/os/PersonaManager;
    .restart local v13    # "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v15    # "size":I
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v17

    const-string/jumbo v18, "no_cross_profile_copy_paste"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    if-nez v17, :cond_b

    const/4 v4, 0x1

    :goto_6
    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    goto :goto_6

    .line 299
    :catch_0
    move-exception v6

    .line 300
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v17, "ClipboardService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Remote Exception calling UserManager: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 318
    .end local v4    # "canCopy":Z
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v11    # "pm":Landroid/os/PersonaManager;
    .end local v15    # "size":I
    :cond_c
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V
    .locals 10
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .param p2, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 336
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 337
    if-nez p2, :cond_0

    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v6, :cond_0

    .line 368
    :goto_0
    return-void

    .line 341
    :cond_0
    if-eqz p2, :cond_1

    .line 342
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 343
    .local v0, "description":Landroid/content/ClipDescription;
    if-eqz v0, :cond_4

    .line 344
    const-string v7, "ClipboardService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPrimaryClipInternal : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->userId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", type : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v6

    if-ltz v6, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v0    # "description":Landroid/content/ClipDescription;
    :cond_1
    :goto_2
    iput-object p2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 350
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 351
    .local v2, "ident":J
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 353
    .local v5, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v5, :cond_5

    .line 355
    :try_start_0
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    .line 356
    .local v4, "li":Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    iget-object v6, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x1d

    iget v8, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    iget-object v9, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 357
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v6}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .end local v4    # "li":Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 344
    .end local v1    # "i":I
    .end local v2    # "ident":J
    .end local v5    # "n":I
    .restart local v0    # "description":Landroid/content/ClipDescription;
    :cond_3
    const-string/jumbo v6, "no mime type"

    goto :goto_1

    .line 346
    :cond_4
    const-string v6, "ClipboardService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPrimaryClipInternal : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->userId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", description is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 365
    .end local v0    # "description":Landroid/content/ClipDescription;
    .restart local v1    # "i":I
    .restart local v2    # "ident":J
    .restart local v5    # "n":I
    :cond_5
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 366
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 365
    :catchall_0
    move-exception v6

    iget-object v7, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 366
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 359
    :catch_0
    move-exception v6

    goto :goto_4
.end method
