.class public Lcom/android/server/enterprise/content/SecContentProvider2;
.super Landroid/content/ContentProvider;
.source "SecContentProvider2.java"


# static fields
.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATION:I = 0x1

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider2"

.field private static final CLIENTCERTIFICATEMANAGER:I = 0x2

.field private static final DATETIME:I = 0x4

.field private static final DEVICEACCOUNT:I = 0x3

.field private static final DUALSIM:I = 0x5

.field private static final EMAIL:I = 0x6

.field private static final EMAILACCOUNT:I = 0x7

.field private static final ENTERPRISECERTENROLL:I = 0x8

.field private static final ENTERPRISECONTAINER:I = 0x9

.field private static final ENTERPRISECONTAINERSERVICE:I = 0xa

.field private static final ENTERPRISEDEVICEMANAGER:I = 0xb

.field private static final EXCHANGEACCOUNT:I = 0xc

.field private static final KIOSKMODESEC:I = 0xd

.field private static final KNOXCUSTOMMANAGERSERVICE1:I = 0xe

.field private static final KNOXCUSTOMMANAGERSERVICE2:I = 0xf

.field private static final MISC:I = 0x10

.field private static final MULTIUSERMANAGER:I = 0x11

.field private static final PHONERESTRICTION:I = 0x12

.field private static final TAG:Ljava/lang/String; = "SecContentProvider2"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final VPN:I = 0x13

.field private static final WIFI:I = 0x14


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mKnoxCustomManagerService:Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 134
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 135
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ApplicationPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ClientCertificateManager"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "DeviceAccountPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "DualSimPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EmailPolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EmailAccountPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseContainerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseContainerService"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseDeviceManager"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ExchangeAccountPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KioskMode"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KnoxCustomManagerService1"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KnoxCustomManagerService2"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "MiscPolicy"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "MultiUserManager"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "PhoneRestrictionPolicy"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "vpnPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "WifiPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->DEBUG:Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    return-void
.end method

.method private getCallerName(I)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 3613
    const/4 v0, 0x0

    .line 3614
    .local v0, "callerName":Ljava/lang/String;
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    .line 3615
    .local v1, "mPackageManagerService":Lcom/android/server/pm/PackageManagerService;
    if-eqz v1, :cond_0

    .line 3616
    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 3618
    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v0, "fail to get caller name."

    .end local v0    # "callerName":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getKnoxCustomManagerService()Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;
    .locals 1

    .prologue
    .line 3642
    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    if-nez v0, :cond_0

    .line 3643
    const-string/jumbo v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    .line 3645
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 3624
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3630
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 3575
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3580
    .local v1, "callingUid":I
    sget-object v3, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3608
    :cond_0
    :goto_0
    :pswitch_0
    return-object v5

    .line 3582
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 3585
    :pswitch_2
    const-string/jumbo v3, "eas_account_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 3587
    .local v2, "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    if-eqz v2, :cond_0

    .line 3588
    const-string v3, "API"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3589
    .local v0, "api":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "setAccountEmailPassword"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3590
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v4, "password"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    goto :goto_0

    .line 3596
    .end local v0    # "api":Ljava/lang/String;
    .end local v2    # "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3597
    const-string v3, "SecContentProvider2"

    const-string/jumbo v4, "do notifyChange() for knoxCustomManagerService1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3602
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3603
    const-string v3, "SecContentProvider2"

    const-string/jumbo v4, "do notifyChange() for knoxCustomManagerService2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3580
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 80
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 167
    .local v17, "callingUid":I
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v77

    .line 170
    .local v77, "userId":I
    const/16 v34, 0x0

    .line 175
    .local v34, "knoxCustomService":Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;
    const/16 v49, 0x0

    .line 176
    .local v49, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/16 v16, 0x0

    .line 178
    .local v16, "bundle":Landroid/os/Bundle;
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "query(), uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " selection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "called from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider2;->getCallerName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v5, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 3569
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 189
    :pswitch_1
    const-string/jumbo v5, "phone_restriction_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 191
    .local v45, "lPhoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-eqz v45, :cond_0

    .line 192
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v5, :pswitch_data_1

    .line 408
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v5, 0x0

    goto :goto_1

    .line 192
    :sswitch_0
    const-string/jumbo v6, "isCopyContactToSimAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v6, "isBlockSmsWithStorageEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_2
    const-string v6, "checkEnableUseOfPacketData"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v6, "isBlockMmsWithStorageEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_4
    const-string v6, "canIncomingSms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_5
    const-string/jumbo v6, "isLimitNumberOfSmsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_6
    const-string/jumbo v6, "isOutgoingSmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_7
    const-string v6, "canOutgoingSms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x7

    goto :goto_2

    :sswitch_8
    const-string/jumbo v6, "isIncomingMmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x8

    goto :goto_2

    :sswitch_9
    const-string/jumbo v6, "isIncomingSmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x9

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v6, "isOutgoingMmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xa

    goto/16 :goto_2

    :sswitch_b
    const-string/jumbo v6, "getEmergencyCallOnly"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xb

    goto/16 :goto_2

    :sswitch_c
    const-string/jumbo v6, "isCallerIDDisplayAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xc

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v6, "isWapPushAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xd

    goto/16 :goto_2

    :sswitch_e
    const-string v6, "canIncomingCall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xe

    goto/16 :goto_2

    :sswitch_f
    const-string v6, "canOutgoingCall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xf

    goto/16 :goto_2

    :sswitch_10
    const-string/jumbo v6, "isSimLockedByAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x10

    goto/16 :goto_2

    .line 194
    :pswitch_2
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 195
    .local v67, "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isCopyContactToSimAllowed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v67

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isCopyContactToSimAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 200
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_3
    move-object/from16 v5, v49

    .line 412
    goto/16 :goto_1

    .line 206
    .end local v67    # "result":Z
    :pswitch_3
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 209
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isBlockSmsWithStorageEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 212
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    .line 218
    .end local v67    # "result":Z
    :pswitch_4
    const/4 v13, 0x0

    .line 219
    .local v13, "arg":Z
    if-eqz p4, :cond_2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_2

    .line 220
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 222
    :cond_2
    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v67

    .line 225
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "checkEnableUseOfPacketData"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 228
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    .line 234
    .end local v13    # "arg":Z
    .end local v67    # "result":Z
    :pswitch_5
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 237
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isBlockMmsWithStorageEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 240
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 246
    .end local v67    # "result":Z
    :pswitch_6
    if-eqz p4, :cond_3

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_4

    .line 247
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 249
    :cond_4
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v67

    .line 252
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "canIncomingSms"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 255
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 261
    .end local v67    # "result":Z
    :pswitch_7
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 264
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isLimitNumberOfSmsEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 267
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 273
    .end local v67    # "result":Z
    :pswitch_8
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 277
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isOutgoingSmsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 280
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 286
    .end local v67    # "result":Z
    :pswitch_9
    if-eqz p4, :cond_5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_6

    .line 287
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 289
    :cond_6
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v67

    .line 292
    .restart local v67    # "result":Z
    goto/16 :goto_3

    .line 294
    .end local v67    # "result":Z
    :pswitch_a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 297
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isIncomingMmsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 300
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 306
    .end local v67    # "result":Z
    :pswitch_b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 309
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isIncomingSmsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 312
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 318
    .end local v67    # "result":Z
    :pswitch_c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 321
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isOutgoingMmsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 324
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 330
    .end local v67    # "result":Z
    :pswitch_d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v67

    .line 332
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getEmergencyCallOnly"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 335
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 340
    .end local v67    # "result":Z
    :pswitch_e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCallerIDDisplayAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 343
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isCallerIDDisplayAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 346
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 352
    .end local v67    # "result":Z
    :pswitch_f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 355
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isWapPushAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 358
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 364
    .end local v67    # "result":Z
    :pswitch_10
    if-eqz p4, :cond_7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_8

    .line 365
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 367
    :cond_8
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result v67

    .line 370
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "canIncomingCall"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 373
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 379
    .end local v67    # "result":Z
    :pswitch_11
    if-eqz p4, :cond_9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_a

    .line 380
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 382
    :cond_a
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v67

    .line 384
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "canOutgoingCall"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 387
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 393
    .end local v67    # "result":Z
    :pswitch_12
    if-eqz p4, :cond_b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_c

    .line 394
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 396
    :cond_c
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v67

    .line 399
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isSimLockedByAdmin"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 402
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 417
    .end local v45    # "lPhoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    .end local v67    # "result":Z
    :pswitch_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getKnoxCustomManagerService()Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    move-result-object v34

    .line 418
    if-eqz v34, :cond_21

    if-eqz p3, :cond_21

    .line 422
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :cond_d
    :goto_4
    packed-switch v5, :pswitch_data_2

    .line 1153
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 422
    :sswitch_11
    const-string/jumbo v6, "setSealedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x0

    goto :goto_4

    :sswitch_12
    const-string/jumbo v6, "getSealedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x1

    goto :goto_4

    :sswitch_13
    const-string/jumbo v6, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x2

    goto :goto_4

    :sswitch_14
    const-string/jumbo v6, "getSealedModeString"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x3

    goto :goto_4

    :sswitch_15
    const-string/jumbo v6, "getSealedExitUI"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x4

    goto :goto_4

    :sswitch_16
    const-string/jumbo v6, "getSealedHomeActivity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x5

    goto :goto_4

    :sswitch_17
    const-string/jumbo v6, "getSealedStatusBarMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x6

    goto :goto_4

    :sswitch_18
    const-string/jumbo v6, "getSealedStatusBarClockState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v5, 0x7

    goto :goto_4

    :sswitch_19
    const-string/jumbo v6, "getSealedStatusBarIconsState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x8

    goto :goto_4

    :sswitch_1a
    const-string/jumbo v6, "getSealedUsbMassStorageState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x9

    goto/16 :goto_4

    :sswitch_1b
    const-string/jumbo v6, "getSealedUsbNetState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0xa

    goto/16 :goto_4

    :sswitch_1c
    const-string/jumbo v6, "getSealedUsbNetAddress"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0xb

    goto/16 :goto_4

    :sswitch_1d
    const-string/jumbo v6, "getPowerSavingMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0xc

    goto/16 :goto_4

    :sswitch_1e
    const-string/jumbo v6, "getChargingLEDState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0xd

    goto/16 :goto_4

    :sswitch_1f
    const-string/jumbo v6, "getScreenWakeupOnPowerState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0xe

    goto/16 :goto_4

    :sswitch_20
    const-string/jumbo v6, "getLTESettingState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0xf

    goto/16 :goto_4

    :sswitch_21
    const-string/jumbo v6, "getCallScreenDisabledItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x10

    goto/16 :goto_4

    :sswitch_22
    const-string/jumbo v6, "getExcludedMessagesNotifications"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x11

    goto/16 :goto_4

    :sswitch_23
    const-string/jumbo v6, "getMessageIdsMarkedToDelete"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x12

    goto/16 :goto_4

    :sswitch_24
    const-string/jumbo v6, "getInfraredState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x13

    goto/16 :goto_4

    :sswitch_25
    const-string/jumbo v6, "getSensorDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x14

    goto/16 :goto_4

    :sswitch_26
    const-string/jumbo v6, "getCustomOperatorName"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x15

    goto/16 :goto_4

    :sswitch_27
    const-string/jumbo v6, "getVolumePanelEnabledState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x16

    goto/16 :goto_4

    :sswitch_28
    const-string/jumbo v6, "getVolumeControlStream"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x17

    goto/16 :goto_4

    :sswitch_29
    const-string/jumbo v6, "getStatusBarText"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x18

    goto/16 :goto_4

    :sswitch_2a
    const-string/jumbo v6, "getStatusBarTextStyle"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x19

    goto/16 :goto_4

    :sswitch_2b
    const-string/jumbo v6, "getStatusBarTextSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x1a

    goto/16 :goto_4

    :sswitch_2c
    const-string/jumbo v6, "getWifiConnectedMessageState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x1b

    goto/16 :goto_4

    :sswitch_2d
    const-string/jumbo v6, "getTorchOnVolumeButtonsState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x1c

    goto/16 :goto_4

    :sswitch_2e
    const-string/jumbo v6, "getPowerMenuLockedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v5, 0x1d

    goto/16 :goto_4

    .line 427
    :pswitch_14
    if-eqz p4, :cond_e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_10

    .line 428
    :cond_e
    if-eqz p4, :cond_f

    .line 433
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 437
    :cond_10
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v61

    .line 439
    .local v61, "paramState":Z
    const/4 v5, 0x1

    aget-object v59, p4, v5

    .line 443
    .local v59, "paramPasscode":Ljava/lang/String;
    const/16 v72, -0x1

    .line 446
    .local v72, "returnState":I
    :try_start_0
    move-object/from16 v0, v34

    move/from16 v1, v61

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v72

    .line 453
    :goto_5
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "setSealedState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 456
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v59    # "paramPasscode":Ljava/lang/String;
    .end local v61    # "paramState":Z
    .end local v72    # "returnState":I
    :cond_11
    :goto_6
    move-object/from16 v5, v49

    .line 1156
    goto/16 :goto_1

    .line 447
    .restart local v59    # "paramPasscode":Ljava/lang/String;
    .restart local v61    # "paramState":Z
    .restart local v72    # "returnState":I
    :catch_0
    move-exception v23

    .line 448
    .local v23, "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 465
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v59    # "paramPasscode":Ljava/lang/String;
    .end local v61    # "paramState":Z
    .end local v72    # "returnState":I
    :pswitch_15
    const/16 v64, 0x0

    .line 468
    .local v64, "proKioskState":Z
    :try_start_1
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getProKioskState()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v64

    .line 475
    :goto_7
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 478
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v64 .. v64}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6

    .line 469
    :catch_1
    move-exception v23

    .line 470
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with knoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 487
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v64    # "proKioskState":Z
    :pswitch_16
    const/16 v72, 0x2

    .line 490
    .restart local v72    # "returnState":I
    :try_start_2
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getPowerDialogOptionMode()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v72

    .line 497
    :goto_8
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedPowerDialogOptionMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 500
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6

    .line 491
    :catch_2
    move-exception v23

    .line 492
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 509
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_17
    if-eqz p4, :cond_12

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_14

    .line 510
    :cond_12
    if-eqz p4, :cond_13

    .line 515
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 518
    :cond_14
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v62

    .line 519
    .local v62, "paramStringType":I
    const/16 v73, 0x0

    .line 524
    .local v73, "returnString":Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, v34

    move/from16 v1, v62

    invoke-interface {v0, v1}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v73

    .line 531
    :goto_9
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedModeString"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 534
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v73, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 525
    :catch_3
    move-exception v23

    .line 526
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 543
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v62    # "paramStringType":I
    .end local v73    # "returnString":Ljava/lang/String;
    :pswitch_18
    if-eqz p4, :cond_15

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_17

    .line 544
    :cond_15
    if-eqz p4, :cond_16

    .line 549
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 553
    :cond_17
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v62

    .line 554
    .restart local v62    # "paramStringType":I
    const/16 v73, 0x0

    .line 559
    .restart local v73    # "returnString":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, v34

    move/from16 v1, v62

    invoke-interface {v0, v1}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v73

    .line 566
    :goto_a
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedExitUI"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 569
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v73, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 560
    :catch_4
    move-exception v23

    .line 561
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 578
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v62    # "paramStringType":I
    .end local v73    # "returnString":Ljava/lang/String;
    :pswitch_19
    const/16 v73, 0x0

    .line 581
    .restart local v73    # "returnString":Ljava/lang/String;
    :try_start_5
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getHomeActivity()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v73

    .line 588
    :goto_b
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedHomeActivity"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 591
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v73, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 582
    :catch_5
    move-exception v23

    .line 583
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 600
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v73    # "returnString":Ljava/lang/String;
    :pswitch_1a
    const/16 v72, 0x2

    .line 603
    .restart local v72    # "returnState":I
    :try_start_6
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getStatusBarMode()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v72

    .line 610
    :goto_c
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedStatusBarMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 613
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 604
    :catch_6
    move-exception v23

    .line 605
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 622
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_1b
    const/16 v72, 0x1

    .line 625
    .local v72, "returnState":Z
    :try_start_7
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getStatusBarClockState()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v72

    .line 632
    :goto_d
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedStatusBarClockState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 635
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 626
    :catch_7
    move-exception v23

    .line 627
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 644
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_1c
    const/16 v72, 0x1

    .line 646
    .restart local v72    # "returnState":Z
    :try_start_8
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getStatusBarIconsState()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v72

    .line 653
    :goto_e
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedStatusBarIconsState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 656
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 647
    :catch_8
    move-exception v23

    .line 648
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 665
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_1d
    const/16 v72, 0x1

    .line 668
    .restart local v72    # "returnState":Z
    :try_start_9
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getUsbMassStorageState()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v72

    .line 675
    :goto_f
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedUsbMassStorageState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 678
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 669
    :catch_9
    move-exception v23

    .line 670
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 687
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_1e
    const/16 v72, 0x0

    .line 689
    .restart local v72    # "returnState":Z
    :try_start_a
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getUsbNetState()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    move-result v72

    .line 696
    :goto_10
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedUsbNetState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 699
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 690
    :catch_a
    move-exception v23

    .line 691
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 708
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_1f
    if-eqz p4, :cond_18

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1a

    .line 709
    :cond_18
    if-eqz p4, :cond_19

    .line 714
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 717
    :cond_1a
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    .line 718
    .local v58, "paramAddressType":I
    const/16 v73, 0x0

    .line 723
    .restart local v73    # "returnString":Ljava/lang/String;
    :try_start_b
    move-object/from16 v0, v34

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getUsbNetAddress(I)Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v73

    .line 730
    :goto_11
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedUsbNetAddress"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 733
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v73, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 724
    :catch_b
    move-exception v23

    .line 725
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 742
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v58    # "paramAddressType":I
    .end local v73    # "returnString":Ljava/lang/String;
    :pswitch_20
    const/16 v72, 0x0

    .line 744
    .local v72, "returnState":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "ultra_powersaving_mode"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v76

    .line 745
    .local v76, "ultraSetting":I
    if-eqz v76, :cond_1b

    .line 746
    const/16 v72, 0x2

    .line 764
    :goto_12
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getPowerSavingMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 767
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 748
    :cond_1b
    const/16 v27, 0x0

    .line 752
    .local v27, "globalSetting":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "psm_switch"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 755
    if-nez v27, :cond_1c

    .line 756
    const/16 v72, 0x0

    goto :goto_12

    .line 758
    :cond_1c
    const/16 v72, 0x1

    goto :goto_12

    .line 779
    .end local v27    # "globalSetting":I
    .end local v72    # "returnState":I
    .end local v76    # "ultraSetting":I
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "led_indicator_charing"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v72, 0x1

    .line 783
    .local v72, "returnState":Z
    :goto_13
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getChargingLEDState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 786
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 779
    .end local v72    # "returnState":Z
    :cond_1d
    const/16 v72, 0x0

    goto :goto_13

    .line 795
    :pswitch_22
    const/16 v72, 0x1

    .line 797
    .restart local v72    # "returnState":Z
    :try_start_c
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    move-result v72

    .line 804
    :goto_14
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getScreenWakeupOnPowerState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 807
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 798
    :catch_c
    move-exception v23

    .line 799
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 816
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_23
    const/16 v72, 0x0

    .line 818
    .restart local v72    # "returnState":Z
    :try_start_d
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getLTESettingState()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    move-result v72

    .line 825
    :goto_15
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getLTESettingState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 828
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 819
    :catch_d
    move-exception v23

    .line 820
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 837
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_24
    const/16 v72, 0x0

    .line 840
    .local v72, "returnState":I
    :try_start_e
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getCallScreenDisabledItems()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    move-result v72

    .line 847
    :goto_16
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getCallScreenDisabledItems"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 850
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 841
    :catch_e
    move-exception v23

    .line 842
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 859
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_25
    const/16 v71, 0x0

    .line 862
    .local v71, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_f
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getExcludedMessagesNotifications()Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    move-result-object v71

    .line 867
    :goto_17
    if-eqz v71, :cond_1e

    .line 873
    :cond_1e
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getExcludedMessagesNotifications"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 877
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v71, :cond_11

    invoke-interface/range {v71 .. v71}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 879
    invoke-interface/range {v71 .. v71}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    .line 880
    .local v78, "value":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v78, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_18

    .line 863
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Ljava/lang/String;
    :catch_f
    move-exception v23

    .line 864
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 891
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v71    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_26
    const/16 v71, 0x0

    .line 894
    .restart local v71    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_10
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getMessageIdsMarkedToDelete()Ljava/util/List;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_10

    move-result-object v71

    .line 899
    :goto_19
    if-eqz v71, :cond_1f

    .line 905
    :cond_1f
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getMessageIdsMarkedToDelete"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 909
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v71, :cond_11

    invoke-interface/range {v71 .. v71}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 911
    invoke-interface/range {v71 .. v71}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    .line 912
    .restart local v78    # "value":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v78, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1a

    .line 895
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Ljava/lang/String;
    :catch_10
    move-exception v23

    .line 896
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 923
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v71    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_27
    const/16 v72, 0x1

    .line 925
    .local v72, "returnState":Z
    :try_start_11
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getInfraredState()Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_11

    move-result v72

    .line 932
    :goto_1b
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getInfraredState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 935
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 926
    :catch_11
    move-exception v23

    .line 927
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 944
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_28
    const/16 v72, 0x0

    .line 947
    .local v72, "returnState":I
    :try_start_12
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSensorDisabled()I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_12

    move-result v72

    .line 954
    :goto_1c
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSensorDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 957
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 948
    :catch_12
    move-exception v23

    .line 949
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 966
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_29
    const/16 v73, 0x0

    .line 969
    .restart local v73    # "returnString":Ljava/lang/String;
    :try_start_13
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getCustomOperatorName()Ljava/lang/String;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_13

    move-result-object v73

    .line 976
    :goto_1d
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getCustomOperatorName"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 979
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v73, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 970
    :catch_13
    move-exception v23

    .line 971
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 988
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v73    # "returnString":Ljava/lang/String;
    :pswitch_2a
    const/16 v72, 0x1

    .line 990
    .local v72, "returnState":Z
    :try_start_14
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getVolumePanelEnabledState()Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_14

    move-result v72

    .line 997
    :goto_1e
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getVolumePanelEnabledState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1000
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 991
    :catch_14
    move-exception v23

    .line 992
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 1009
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_2b
    const/16 v72, 0x0

    .line 1012
    .local v72, "returnState":I
    :try_start_15
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getVolumeControlStream()I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_15

    move-result v72

    .line 1019
    :goto_1f
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getVolumeControlStream"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1022
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1013
    :catch_15
    move-exception v23

    .line 1014
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 1031
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_2c
    const/16 v73, 0x0

    .line 1034
    .restart local v73    # "returnString":Ljava/lang/String;
    :try_start_16
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getStatusBarText()Ljava/lang/String;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_16

    move-result-object v73

    .line 1041
    :goto_20
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getStatusBarText"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1044
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v73, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1035
    :catch_16
    move-exception v23

    .line 1036
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 1053
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v73    # "returnString":Ljava/lang/String;
    :pswitch_2d
    const/16 v72, 0x0

    .line 1056
    .restart local v72    # "returnState":I
    :try_start_17
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getStatusBarTextStyle()I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_17

    move-result v72

    .line 1063
    :goto_21
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getStatusBarTextStyle"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1066
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1057
    :catch_17
    move-exception v23

    .line 1058
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 1075
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_2e
    const/16 v72, 0x0

    .line 1078
    .restart local v72    # "returnState":I
    :try_start_18
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getStatusBarTextSize()I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_18

    move-result v72

    .line 1085
    :goto_22
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getStatusBarTextSize"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1088
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1079
    :catch_18
    move-exception v23

    .line 1080
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 1097
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_2f
    const/16 v72, 0x1

    .line 1099
    .local v72, "returnState":Z
    :try_start_19
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getWifiConnectedMessageState()Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_19

    move-result v72

    .line 1106
    :goto_23
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getWifiConnectedMessageState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1109
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1100
    :catch_19
    move-exception v23

    .line 1101
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 1118
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "torchlight_enable"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_20

    const/16 v72, 0x1

    .line 1122
    .restart local v72    # "returnState":Z
    :goto_24
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getTorchOnVolumeButtonsState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1125
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1118
    .end local v72    # "returnState":Z
    :cond_20
    const/16 v72, 0x0

    goto :goto_24

    .line 1134
    :pswitch_31
    const/16 v72, 0x1

    .line 1136
    .restart local v72    # "returnState":Z
    :try_start_1a
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getPowerMenuLockedState()Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_1a

    move-result v72

    .line 1143
    :goto_25
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getPowerMenuLockedState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1146
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1137
    :catch_1a
    move-exception v23

    .line 1138
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 1160
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :cond_21
    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 1166
    :pswitch_32
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getKnoxCustomManagerService()Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    move-result-object v34

    .line 1167
    if-eqz v34, :cond_2a

    if-eqz p3, :cond_2a

    .line 1171
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_2

    :cond_22
    :goto_26
    packed-switch v5, :pswitch_data_3

    .line 1942
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1171
    :sswitch_2f
    const-string/jumbo v6, "getSealedNotificationMessagesState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x0

    goto :goto_26

    :sswitch_30
    const-string/jumbo v6, "getSealedMultiWindowFixedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x1

    goto :goto_26

    :sswitch_31
    const-string/jumbo v6, "getSealedPowerDialogItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x2

    goto :goto_26

    :sswitch_32
    const-string/jumbo v6, "getSealedPowerDialogCustomItemsState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x3

    goto :goto_26

    :sswitch_33
    const-string/jumbo v6, "getSealedPowerDialogCustomItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x4

    goto :goto_26

    :sswitch_34
    const-string/jumbo v6, "getExtendedCallInfoState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x5

    goto :goto_26

    :sswitch_35
    const-string/jumbo v6, "getSettingsHiddenState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x6

    goto :goto_26

    :sswitch_36
    const-string/jumbo v6, "getSealedHideNotificationMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v5, 0x7

    goto :goto_26

    :sswitch_37
    const-string/jumbo v6, "getCheckCoverPopupState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x8

    goto :goto_26

    :sswitch_38
    const-string/jumbo v6, "getRecentLongPressActivity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x9

    goto/16 :goto_26

    :sswitch_39
    const-string/jumbo v6, "getRecentLongPressMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0xa

    goto/16 :goto_26

    :sswitch_3a
    const-string/jumbo v6, "getVolumeButtonRotationState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0xb

    goto/16 :goto_26

    :sswitch_3b
    const-string/jumbo v6, "getGearNotificationState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0xc

    goto/16 :goto_26

    :sswitch_3c
    const-string/jumbo v6, "getScreenOffOnHomeLongPressState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0xd

    goto/16 :goto_26

    :sswitch_3d
    const-string/jumbo v6, "getScreenOffOnStatusBarDoubleTapState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0xe

    goto/16 :goto_26

    :sswitch_3e
    const-string/jumbo v6, "getWifiAutoSwitchState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0xf

    goto/16 :goto_26

    :sswitch_3f
    const-string/jumbo v6, "getWifiAutoSwitchThreshold"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x10

    goto/16 :goto_26

    :sswitch_40
    const-string/jumbo v6, "getWifiAutoSwitchDelay"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x11

    goto/16 :goto_26

    :sswitch_41
    const-string/jumbo v6, "getLockScreenHiddenItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x12

    goto/16 :goto_26

    :sswitch_42
    const-string/jumbo v6, "getToastEnabledState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x13

    goto/16 :goto_26

    :sswitch_43
    const-string/jumbo v6, "getToastShowPackageNameState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x14

    goto/16 :goto_26

    :sswitch_44
    const-string/jumbo v6, "getToastGravityEnabledState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x15

    goto/16 :goto_26

    :sswitch_45
    const-string/jumbo v6, "getToastGravity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x16

    goto/16 :goto_26

    :sswitch_46
    const-string/jumbo v6, "getToastGravityXOffset"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x17

    goto/16 :goto_26

    :sswitch_47
    const-string/jumbo v6, "getToastGravityYOffset"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x18

    goto/16 :goto_26

    :sswitch_48
    const-string/jumbo v6, "getAppBlockDownloadState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x19

    goto/16 :goto_26

    :sswitch_49
    const-string/jumbo v6, "getAppBlockDownloadNamespaces"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x1a

    goto/16 :goto_26

    :sswitch_4a
    const-string/jumbo v6, "getEthernetState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x1b

    goto/16 :goto_26

    :sswitch_4b
    const-string/jumbo v6, "getEthernetConfigurationType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x1c

    goto/16 :goto_26

    :sswitch_4c
    const-string/jumbo v6, "getSealedHardKeyIntentState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x1d

    goto/16 :goto_26

    :sswitch_4d
    const-string/jumbo v6, "getSealedVolumeKeyAppState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x1e

    goto/16 :goto_26

    :sswitch_4e
    const-string/jumbo v6, "getSettingsEnabledItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x1f

    goto/16 :goto_26

    :sswitch_4f
    const-string/jumbo v6, "getSealedVolumeKeyAppsList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v5, 0x20

    goto/16 :goto_26

    .line 1176
    :pswitch_33
    const/16 v72, 0x1

    .line 1179
    .restart local v72    # "returnState":Z
    :try_start_1b
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedNotificationMessagesState()Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_1b

    move-result v72

    .line 1186
    :goto_27
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedNotificationMessagesState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1189
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v72    # "returnState":Z
    :cond_23
    :goto_28
    move-object/from16 v5, v49

    .line 1945
    goto/16 :goto_1

    .line 1180
    .restart local v72    # "returnState":Z
    :catch_1b
    move-exception v23

    .line 1181
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 1198
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_34
    if-eqz p4, :cond_24

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_26

    .line 1199
    :cond_24
    if-eqz p4, :cond_25

    .line 1204
    :cond_25
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1207
    :cond_26
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    .line 1208
    .local v60, "paramReturnType":I
    const/16 v24, 0x0

    .line 1213
    .local v24, "fixedState":I
    :try_start_1c
    move-object/from16 v0, v34

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getMultiWindowFixedState(I)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_1c

    move-result v24

    .line 1220
    :goto_29
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedMultiWindowFixedState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1223
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_28

    .line 1214
    :catch_1c
    move-exception v23

    .line 1215
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with knoxCustomManager service: "

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 1232
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v24    # "fixedState":I
    .end local v60    # "paramReturnType":I
    :pswitch_35
    const/16 v72, -0x1

    .line 1235
    .local v72, "returnState":I
    :try_start_1d
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getPowerDialogItems()I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_1d

    move-result v72

    .line 1242
    :goto_2a
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedPowerDialogItems"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1245
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_28

    .line 1236
    :catch_1d
    move-exception v23

    .line 1237
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 1254
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_36
    const/16 v72, 0x0

    .line 1257
    .local v72, "returnState":Z
    :try_start_1e
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_1e

    move-result v72

    .line 1264
    :goto_2b
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedPowerDialogCustomItemsState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1267
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1258
    :catch_1e
    move-exception v23

    .line 1259
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 1276
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_37
    const/16 v70, 0x0

    .line 1279
    .local v70, "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_1f
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_1f

    move-result-object v70

    .line 1284
    :goto_2c
    if-eqz v70, :cond_27

    .line 1290
    :cond_27
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedPowerDialogCustomItems"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1294
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v70, :cond_23

    invoke-interface/range {v70 .. v70}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_23

    .line 1296
    invoke-interface/range {v70 .. v70}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;

    .line 1297
    .local v78, "value":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v78 .. v78}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2d

    .line 1280
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    :catch_1f
    move-exception v23

    .line 1281
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 1308
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v70    # "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :pswitch_38
    const/16 v72, 0x0

    .line 1311
    .restart local v72    # "returnState":Z
    :try_start_20
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getExtendedCallInfoState()Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_20

    move-result v72

    .line 1318
    :goto_2e
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getExtendedCallInfoState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1321
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1312
    :catch_20
    move-exception v23

    .line 1313
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 1330
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_39
    const/16 v72, 0x0

    .line 1333
    .local v72, "returnState":I
    :try_start_21
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSettingsHiddenState()I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_21

    move-result v72

    .line 1340
    :goto_2f
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSettingsHiddenState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1343
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1334
    :catch_21
    move-exception v23

    .line 1335
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    .line 1352
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_3a
    const/16 v72, -0x1

    .line 1355
    .restart local v72    # "returnState":I
    :try_start_22
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getHideNotificationMessages()I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_22

    move-result v72

    .line 1362
    :goto_30
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedHideNotificationMessages"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1365
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1356
    :catch_22
    move-exception v23

    .line 1357
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 1374
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_3b
    const/16 v72, 0x1

    .line 1377
    .local v72, "returnState":Z
    :try_start_23
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getCheckCoverPopupState()Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_23

    move-result v72

    .line 1384
    :goto_31
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getCheckCoverPopupState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1387
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1378
    :catch_23
    move-exception v23

    .line 1379
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 1396
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_3c
    const/16 v73, 0x0

    .line 1399
    .restart local v73    # "returnString":Ljava/lang/String;
    :try_start_24
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_24

    move-result-object v73

    .line 1406
    :goto_32
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getRecentLongPressActivity"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1409
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v73, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1400
    :catch_24
    move-exception v23

    .line 1401
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    .line 1418
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v73    # "returnString":Ljava/lang/String;
    :pswitch_3d
    const/16 v72, -0x1

    .line 1421
    .local v72, "returnState":I
    :try_start_25
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getRecentLongPressMode()I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_25

    move-result v72

    .line 1428
    :goto_33
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getRecentLongPressMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1431
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1422
    :catch_25
    move-exception v23

    .line 1423
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 1440
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_3e
    const/16 v72, 0x0

    .line 1443
    .local v72, "returnState":Z
    :try_start_26
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getVolumeButtonRotationState()Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_26

    move-result v72

    .line 1450
    :goto_34
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getVolumeButtonRotationState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1453
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1444
    :catch_26
    move-exception v23

    .line 1445
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 1462
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_3f
    const/16 v72, 0x1

    .line 1465
    .restart local v72    # "returnState":Z
    :try_start_27
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getGearNotificationState()Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_27

    move-result v72

    .line 1472
    :goto_35
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getGearNotificationState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1475
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1466
    :catch_27
    move-exception v23

    .line 1467
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 1484
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_40
    const/16 v72, 0x0

    .line 1487
    .restart local v72    # "returnState":Z
    :try_start_28
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getScreenOffOnHomeLongPressState()Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_28

    move-result v72

    .line 1494
    :goto_36
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getScreenOffOnHomeLongPressState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1497
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1488
    :catch_28
    move-exception v23

    .line 1489
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 1506
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_41
    const/16 v72, 0x0

    .line 1509
    .restart local v72    # "returnState":Z
    :try_start_29
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getScreenOffOnStatusBarDoubleTapState()Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_29

    move-result v72

    .line 1516
    :goto_37
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getScreenOffOnStatusBarDoubleTapState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1519
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1510
    :catch_29
    move-exception v23

    .line 1511
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    .line 1528
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_42
    const/16 v72, 0x0

    .line 1531
    .restart local v72    # "returnState":Z
    :try_start_2a
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getWifiAutoSwitchState()Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_2a

    move-result v72

    .line 1538
    :goto_38
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getWifiAutoSwitchState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1541
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1532
    :catch_2a
    move-exception v23

    .line 1533
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 1550
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_43
    const/16 v72, -0xc8

    .line 1553
    .local v72, "returnState":I
    :try_start_2b
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getWifiAutoSwitchThreshold()I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_2b

    move-result v72

    .line 1560
    :goto_39
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getWifiAutoSwitchThreshold"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1563
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1554
    :catch_2b
    move-exception v23

    .line 1555
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 1572
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_44
    const/16 v72, 0x14

    .line 1575
    .restart local v72    # "returnState":I
    :try_start_2c
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getWifiAutoSwitchDelay()I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_2c

    move-result v72

    .line 1582
    :goto_3a
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getWifiAutoSwitchDelay"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1585
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1576
    :catch_2c
    move-exception v23

    .line 1577
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    .line 1594
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_45
    const/16 v72, 0x0

    .line 1597
    .restart local v72    # "returnState":I
    :try_start_2d
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getLockScreenHiddenItems()I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_2d

    move-result v72

    .line 1604
    :goto_3b
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getLockScreenHiddenItems"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1607
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1598
    :catch_2d
    move-exception v23

    .line 1599
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 1616
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_46
    const/16 v72, 0x1

    .line 1619
    .local v72, "returnState":Z
    :try_start_2e
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getToastEnabledState()Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_2e

    move-result v72

    .line 1626
    :goto_3c
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getToastEnabledState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1629
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1620
    :catch_2e
    move-exception v23

    .line 1621
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 1638
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_47
    const/16 v72, 0x0

    .line 1641
    .restart local v72    # "returnState":Z
    :try_start_2f
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getToastShowPackageNameState()Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_2f

    move-result v72

    .line 1648
    :goto_3d
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getToastShowPackageNameState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1651
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1642
    :catch_2f
    move-exception v23

    .line 1643
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 1660
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_48
    const/16 v72, 0x0

    .line 1663
    .restart local v72    # "returnState":Z
    :try_start_30
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getToastGravityEnabledState()Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_30} :catch_30

    move-result v72

    .line 1670
    :goto_3e
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getToastGravityEnabledState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1673
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1664
    :catch_30
    move-exception v23

    .line 1665
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 1682
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_49
    const/16 v72, 0x0

    .line 1685
    .local v72, "returnState":I
    :try_start_31
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getToastGravity()I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_31} :catch_31

    move-result v72

    .line 1692
    :goto_3f
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getToastGravity"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1695
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1686
    :catch_31
    move-exception v23

    .line 1687
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    .line 1704
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_4a
    const/16 v72, 0x0

    .line 1707
    .restart local v72    # "returnState":I
    :try_start_32
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getToastGravityXOffset()I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_32} :catch_32

    move-result v72

    .line 1714
    :goto_40
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getToastGravityXOffset"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1717
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1708
    :catch_32
    move-exception v23

    .line 1709
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 1726
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_4b
    const/16 v72, 0x0

    .line 1729
    .restart local v72    # "returnState":I
    :try_start_33
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getToastGravityYOffset()I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_33

    move-result v72

    .line 1736
    :goto_41
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getToastGravityYOffset"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1739
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1730
    :catch_33
    move-exception v23

    .line 1731
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41

    .line 1748
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_4c
    const/16 v72, 0x0

    .line 1751
    .local v72, "returnState":Z
    :try_start_34
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getAppBlockDownloadState()Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_34} :catch_34

    move-result v72

    .line 1758
    :goto_42
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAppBlockDownloadState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1761
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1752
    :catch_34
    move-exception v23

    .line 1753
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    .line 1770
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_4d
    const/16 v71, 0x0

    .line 1773
    .restart local v71    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_35
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getAppBlockDownloadNamespaces()Ljava/util/List;
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_35} :catch_35

    move-result-object v71

    .line 1778
    :goto_43
    if-eqz v71, :cond_28

    .line 1784
    :cond_28
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAppBlockDownloadNamespaces"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1788
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v71, :cond_23

    invoke-interface/range {v71 .. v71}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_23

    .line 1790
    invoke-interface/range {v71 .. v71}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_44
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    .line 1791
    .local v78, "value":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v78, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_44

    .line 1774
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Ljava/lang/String;
    :catch_35
    move-exception v23

    .line 1775
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    .line 1802
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v71    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4e
    const/16 v72, 0x1

    .line 1805
    .restart local v72    # "returnState":Z
    :try_start_36
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getEthernetState()Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_36} :catch_36

    move-result v72

    .line 1812
    :goto_45
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getEthernetState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1815
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1806
    :catch_36
    move-exception v23

    .line 1807
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 1824
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_4f
    const/16 v72, 0x0

    .line 1827
    .local v72, "returnState":I
    :try_start_37
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getEthernetConfigurationType()I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_37} :catch_37

    move-result v72

    .line 1834
    :goto_46
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getEthernetConfigurationType"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1837
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1828
    :catch_37
    move-exception v23

    .line 1829
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 1846
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_50
    const/16 v72, 0x0

    .line 1849
    .local v72, "returnState":Z
    :try_start_38
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getHardKeyIntentState()Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_38} :catch_38

    move-result v72

    .line 1856
    :goto_47
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedHardKeyIntentState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1859
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1850
    :catch_38
    move-exception v23

    .line 1851
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    .line 1868
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_51
    const/16 v72, 0x0

    .line 1871
    .restart local v72    # "returnState":Z
    :try_start_39
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getVolumeKeyAppState()Z
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_39} :catch_39

    move-result v72

    .line 1878
    :goto_48
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedVolumeKeyAppState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1881
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1872
    :catch_39
    move-exception v23

    .line 1873
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    .line 1890
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_52
    const/16 v72, 0x0

    .line 1893
    .local v72, "returnState":I
    :try_start_3a
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSettingsEnabledItems()I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3a} :catch_3a

    move-result v72

    .line 1900
    :goto_49
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSettingsEnabledItems"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1903
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_28

    .line 1894
    :catch_3a
    move-exception v23

    .line 1895
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    .line 1912
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_53
    const/16 v71, 0x0

    .line 1915
    .restart local v71    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_3b
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getVolumeKeyAppsList()Ljava/util/List;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3b} :catch_3b

    move-result-object v71

    .line 1920
    :goto_4a
    if-eqz v71, :cond_29

    .line 1926
    :cond_29
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedVolumeKeyAppsList"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1930
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v71, :cond_23

    invoke-interface/range {v71 .. v71}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_23

    .line 1932
    invoke-interface/range {v71 .. v71}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_4b
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    .line 1933
    .restart local v78    # "value":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v78, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4b

    .line 1916
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Ljava/lang/String;
    :catch_3b
    move-exception v23

    .line 1917
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 1947
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v71    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2a
    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 1954
    :pswitch_54
    const-string v5, "application_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1956
    .local v4, "lApplicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v4, :cond_0

    .line 1957
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3

    :cond_2b
    :goto_4c
    packed-switch v5, :pswitch_data_4

    .line 2320
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1957
    :sswitch_50
    const-string/jumbo v6, "getApplicationUninstallationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v5, 0x0

    goto :goto_4c

    :sswitch_51
    const-string/jumbo v6, "isApplicationInstalled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v5, 0x1

    goto :goto_4c

    :sswitch_52
    const-string/jumbo v6, "isIntentDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v5, 0x2

    goto :goto_4c

    :sswitch_53
    const-string/jumbo v6, "getApplicationNotificationMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v5, 0x3

    goto :goto_4c

    :sswitch_54
    const-string/jumbo v6, "getAppInstallToSdCard"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v5, 0x4

    goto :goto_4c

    :sswitch_55
    const-string/jumbo v6, "isApplicationForceStopDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v5, 0x5

    goto :goto_4c

    :sswitch_56
    const-string/jumbo v6, "isApplicationClearDataDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v5, 0x6

    goto :goto_4c

    :sswitch_57
    const-string/jumbo v6, "isApplicationClearCacheDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v5, 0x7

    goto :goto_4c

    :sswitch_58
    const-string/jumbo v6, "getApplicationNameFromDb"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v5, 0x8

    goto/16 :goto_4c

    :sswitch_59
    const-string/jumbo v6, "isPackageUpdateAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v5, 0x9

    goto/16 :goto_4c

    :sswitch_5a
    const-string/jumbo v6, "getApplicationComponentState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v5, 0xa

    goto/16 :goto_4c

    :sswitch_5b
    const-string/jumbo v6, "getApplicationStateEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v5, 0xb

    goto/16 :goto_4c

    :sswitch_5c
    const-string/jumbo v6, "isUsbDevicePermittedForPackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v5, 0xc

    goto/16 :goto_4c

    :sswitch_5d
    const-string/jumbo v6, "getApplicationIconFromDb"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v5, 0xd

    goto/16 :goto_4c

    :sswitch_5e
    const-string/jumbo v6, "isChangeSmsDefaultAppAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v5, 0xe

    goto/16 :goto_4c

    :sswitch_5f
    const-string/jumbo v6, "isChangeAssistDefaultAppAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v5, 0xf

    goto/16 :goto_4c

    :sswitch_60
    const-string/jumbo v6, "isApplicationSetToDefault"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v5, 0x10

    goto/16 :goto_4c

    :sswitch_61
    const-string/jumbo v6, "getDefaultApplicationInternal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v5, 0x11

    goto/16 :goto_4c

    :sswitch_62
    const-string/jumbo v6, "getApplicationStateDisabledList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v5, 0x12

    goto/16 :goto_4c

    :sswitch_63
    const-string/jumbo v6, "getApplicationInstallUninstallList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v5, 0x13

    goto/16 :goto_4c

    :sswitch_64
    const-string/jumbo v6, "getAppInstallationMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v5, 0x14

    goto/16 :goto_4c

    :sswitch_65
    const-string/jumbo v6, "getApplicationUninstallationMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v5, 0x15

    goto/16 :goto_4c

    .line 1959
    :pswitch_55
    if-eqz p4, :cond_2c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2d

    .line 1960
    :cond_2c
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1962
    :cond_2d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v67

    .line 1965
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationUninstallationEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1968
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v67    # "result":Z
    :cond_2e
    :goto_4d
    move-object/from16 v5, v49

    .line 2324
    goto/16 :goto_1

    .line 1974
    :pswitch_56
    if-eqz p4, :cond_2f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_30

    .line 1975
    :cond_2f
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1977
    :cond_30
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v67

    .line 1980
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isApplicationInstalled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1983
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4d

    .line 1989
    .end local v67    # "result":Z
    :pswitch_57
    if-eqz p4, :cond_31

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_32

    .line 1990
    :cond_31
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1991
    :cond_32
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v67

    .line 1995
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isIntentDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1998
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4d

    .line 2005
    .end local v67    # "result":Z
    :pswitch_58
    if-eqz p4, :cond_33

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_34

    .line 2006
    :cond_33
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2008
    :cond_34
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNotificationMode(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v66

    .line 2011
    .local v66, "res":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationNotificationMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2014
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2022
    .end local v66    # "res":I
    :pswitch_59
    const/16 v67, 0x1

    .line 2025
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAppInstallToSdCard"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2028
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2035
    .end local v67    # "result":Z
    :pswitch_5a
    if-eqz p4, :cond_35

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_36

    .line 2036
    :cond_35
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2038
    :cond_36
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    const/4 v8, 0x3

    aget-object v8, p4, v8

    const/4 v9, 0x4

    aget-object v9, p4, v9

    const/4 v10, 0x5

    aget-object v10, p4, v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v67

    .line 2044
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isApplicationForceStopDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2047
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2054
    .end local v67    # "result":Z
    :pswitch_5b
    if-eqz p4, :cond_37

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_38

    .line 2055
    :cond_37
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2057
    :cond_38
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    move-result v67

    .line 2060
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isApplicationClearDataDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2063
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2070
    .end local v67    # "result":Z
    :pswitch_5c
    if-eqz p4, :cond_39

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_3a

    .line 2071
    :cond_39
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2073
    :cond_3a
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v67

    .line 2076
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isApplicationClearCacheDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2079
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2086
    .end local v67    # "result":Z
    :pswitch_5d
    if-eqz p4, :cond_3b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_3c

    .line 2087
    :cond_3b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2089
    :cond_3c
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v69

    .line 2092
    .local v69, "resultString":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationNameFromDb"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2095
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v69, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2102
    .end local v69    # "resultString":Ljava/lang/String;
    :pswitch_5e
    if-eqz p4, :cond_3d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_3e

    .line 2103
    :cond_3d
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2105
    :cond_3e
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v67

    .line 2108
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isPackageUpdateAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2111
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2118
    .end local v67    # "result":Z
    :pswitch_5f
    if-eqz p4, :cond_3f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_40

    .line 2119
    :cond_3f
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2121
    :cond_40
    new-instance v6, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v4, v6, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v67

    .line 2125
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationComponentState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2128
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2135
    .end local v67    # "result":Z
    :pswitch_60
    if-eqz p4, :cond_41

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_42

    .line 2136
    :cond_41
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2138
    :cond_42
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v67

    .line 2141
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationStateEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2144
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2151
    .end local v67    # "result":Z
    :pswitch_61
    if-eqz p4, :cond_43

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_44

    .line 2152
    :cond_43
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2154
    :cond_44
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v67

    .line 2158
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isUsbDevicePermittedForPackage"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2161
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2167
    .end local v67    # "result":Z
    :pswitch_62
    if-eqz p4, :cond_45

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_46

    .line 2168
    :cond_45
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2170
    :cond_46
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationIconFromDb(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[B

    move-result-object v65

    .line 2173
    .local v65, "re":[B
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationIconFromDb"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2176
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [[B

    const/4 v6, 0x0

    aput-object v65, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2181
    .end local v65    # "re":[B
    :pswitch_63
    if-eqz p4, :cond_47

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_48

    .line 2182
    :cond_47
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2184
    :cond_48
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeSmsDefaultAppAllowed(Ljava/lang/String;I)Z

    move-result v67

    .line 2188
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isChangeSmsDefaultAppAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2191
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2196
    .end local v67    # "result":Z
    :pswitch_64
    if-eqz p4, :cond_49

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_4a

    .line 2197
    :cond_49
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2199
    :cond_4a
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeAssistDefaultAppAllowed(I)Z

    move-result v67

    .line 2203
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isChangeAssistDefaultAppAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2206
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2211
    .end local v67    # "result":Z
    :pswitch_65
    if-eqz p4, :cond_4b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_4c

    .line 2212
    :cond_4b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2214
    :cond_4c
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    move-result v67

    .line 2218
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isApplicationSetToDefault"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2221
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2226
    .end local v67    # "result":Z
    :pswitch_66
    if-eqz p4, :cond_4d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_4e

    .line 2227
    :cond_4d
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2230
    :cond_4e
    const/16 v33, 0x0

    .line 2232
    .local v33, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    :try_start_3c
    aget-object v5, p4, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3c
    .catch Ljava/net/URISyntaxException; {:try_start_3c .. :try_end_3c} :catch_3c

    move-result-object v33

    .line 2237
    :goto_4e
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v33

    invoke-virtual {v4, v0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v20

    .line 2241
    .local v20, "compName":Landroid/content/ComponentName;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getDefaultApplicationInternal"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2244
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v20, :cond_2e

    .line 2245
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2233
    .end local v20    # "compName":Landroid/content/ComponentName;
    :catch_3c
    move-exception v23

    .line 2234
    .local v23, "e":Ljava/net/URISyntaxException;
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URISyntaxException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 2251
    .end local v23    # "e":Ljava/net/URISyntaxException;
    .end local v33    # "intent":Landroid/content/Intent;
    :pswitch_67
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateDisabledList(I)Ljava/util/List;

    move-result-object v12

    .line 2253
    .local v12, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_4f

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4f

    .line 2255
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationStateDisabledList"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2258
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_4f
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    .line 2259
    .restart local v78    # "value":Ljava/lang/String;
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getApplicationStateDisabledList value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v78

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v78, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4f

    .line 2265
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Ljava/lang/String;
    :cond_4f
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "getApplicationStateDisabledList null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2270
    .end local v12    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_68
    if-eqz p4, :cond_50

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_51

    .line 2271
    :cond_50
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "getApplicationInstallUninstallList selectionArgs is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2275
    :cond_51
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "getApplicationInstallUninstallList"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallUninstallList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v32

    .line 2280
    .local v32, "installUninstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationInstallUninstallList"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2284
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v32, :cond_52

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_52

    .line 2285
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_50
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    .line 2286
    .restart local v78    # "value":Ljava/lang/String;
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getApplicationInstallUninstallList value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v78

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v78, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_50

    .line 2293
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Ljava/lang/String;
    :cond_52
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "getApplicationInstallUninstallList null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2298
    .end local v32    # "installUninstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_69
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInstallationMode(Landroid/app/enterprise/ContextInfo;)I

    move-result v25

    .line 2301
    .local v25, "getAppInstall":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAppInstallationMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2304
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2309
    .end local v25    # "getAppInstall":I
    :pswitch_6a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationMode(Landroid/app/enterprise/ContextInfo;)I

    move-result v26

    .line 2312
    .local v26, "getAppUninstall":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationUninstallationMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2315
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4d

    .line 2329
    .end local v4    # "lApplicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v26    # "getAppUninstall":I
    :pswitch_6b
    const-string/jumbo v5, "eas_account_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 2331
    .local v38, "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    if-eqz v38, :cond_0

    if-eqz p3, :cond_0

    .line 2332
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_4

    :cond_53
    :goto_51
    packed-switch v5, :pswitch_data_5

    .line 2530
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2332
    :sswitch_66
    const-string/jumbo v6, "getRequiredSignedMIMEMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/4 v5, 0x0

    goto :goto_51

    :sswitch_67
    const-string/jumbo v6, "getRequiredEncryptedMIMEMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/4 v5, 0x1

    goto :goto_51

    :sswitch_68
    const-string/jumbo v6, "getForceSMIMECertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/4 v5, 0x2

    goto :goto_51

    :sswitch_69
    const-string/jumbo v6, "isIncomingAttachmentsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/4 v5, 0x3

    goto :goto_51

    :sswitch_6a
    const-string/jumbo v6, "getIncomingAttachmentSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/4 v5, 0x4

    goto :goto_51

    :sswitch_6b
    const-string/jumbo v6, "getMaxCalendarAgeFilter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/4 v5, 0x5

    goto :goto_51

    :sswitch_6c
    const-string/jumbo v6, "getMaxEmailBodyTruncationSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/4 v5, 0x6

    goto :goto_51

    :sswitch_6d
    const-string/jumbo v6, "getMaxEmailHTMLBodyTruncationSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/4 v5, 0x7

    goto :goto_51

    :sswitch_6e
    const-string/jumbo v6, "getForceSMIMECertificateForSigning"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/16 v5, 0x8

    goto/16 :goto_51

    :sswitch_6f
    const-string/jumbo v6, "getForceSMIMECertificateForEncryption"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/16 v5, 0x9

    goto/16 :goto_51

    :sswitch_70
    const-string/jumbo v6, "getAccountEmailPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/16 v5, 0xa

    goto/16 :goto_51

    :sswitch_71
    const-string/jumbo v6, "getAccountCertificatePassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/16 v5, 0xb

    goto/16 :goto_51

    :sswitch_72
    const-string/jumbo v6, "getMaxEmailAgeFilter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/16 v5, 0xc

    goto/16 :goto_51

    :sswitch_73
    const-string/jumbo v6, "setAccountEmailPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/16 v5, 0xd

    goto/16 :goto_51

    .line 2334
    :pswitch_6c
    if-eqz p4, :cond_54

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_55

    .line 2335
    :cond_54
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2336
    :cond_55
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireSignedSMIMEMessages(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v67

    .line 2340
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getRequiredSignedMIMEMessages"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2343
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v67    # "result":Z
    :goto_52
    move-object/from16 v5, v49

    .line 2534
    goto/16 :goto_1

    .line 2348
    :pswitch_6d
    if-eqz p4, :cond_56

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_57

    .line 2349
    :cond_56
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2350
    :cond_57
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireEncryptedSMIMEMessages(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v67

    .line 2354
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getRequiredEncryptedMIMEMessages"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2357
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_52

    .line 2362
    .end local v67    # "result":Z
    :pswitch_6e
    if-eqz p4, :cond_58

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_59

    .line 2363
    :cond_58
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2364
    :cond_59
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificate(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v67

    .line 2368
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getForceSMIMECertificate"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2371
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2376
    .end local v67    # "result":Z
    :pswitch_6f
    if-eqz p4, :cond_5a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_5b

    .line 2377
    :cond_5a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2378
    :cond_5b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isIncomingAttachmentsAllowed(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v67

    .line 2382
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isIncomingAttachmentsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2385
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2390
    .end local v67    # "result":Z
    :pswitch_70
    if-eqz p4, :cond_5c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_5d

    .line 2391
    :cond_5c
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2392
    :cond_5d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getIncomingAttachmentsSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v66

    .line 2396
    .restart local v66    # "res":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getIncomingAttachmentSize"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2399
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2404
    .end local v66    # "res":I
    :pswitch_71
    if-eqz p4, :cond_5e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_5f

    .line 2405
    :cond_5e
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2406
    :cond_5f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Landroid/app/enterprise/ContextInfo;J)I

    move-result v66

    .line 2410
    .restart local v66    # "res":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getMaxCalendarAgeFilter"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2413
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2418
    .end local v66    # "res":I
    :pswitch_72
    if-eqz p4, :cond_60

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_61

    .line 2419
    :cond_60
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2420
    :cond_61
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v66

    .line 2424
    .restart local v66    # "res":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getMaxEmailBodyTruncationSize"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2427
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2432
    .end local v66    # "res":I
    :pswitch_73
    if-eqz p4, :cond_62

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_63

    .line 2433
    :cond_62
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2434
    :cond_63
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v66

    .line 2438
    .restart local v66    # "res":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getMaxEmailHTMLBodyTruncationSize"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2441
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2446
    .end local v66    # "res":I
    :pswitch_74
    if-eqz p4, :cond_64

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_65

    .line 2447
    :cond_64
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2448
    :cond_65
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v67

    .line 2452
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getForceSMIMECertificateForSigning"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2455
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2460
    .end local v67    # "result":Z
    :pswitch_75
    if-eqz p4, :cond_66

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_67

    .line 2461
    :cond_66
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2462
    :cond_67
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v67

    .line 2466
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getForceSMIMECertificateForEncryption"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2469
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2474
    .end local v67    # "result":Z
    :pswitch_76
    if-eqz p4, :cond_68

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_69

    .line 2475
    :cond_68
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2476
    :cond_69
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountEmailPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;

    move-result-object v63

    .line 2480
    .local v63, "passwd":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAccountEmailPassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2483
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v63, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2488
    .end local v63    # "passwd":Ljava/lang/String;
    :pswitch_77
    if-eqz p4, :cond_6a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_6b

    .line 2489
    :cond_6a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2490
    :cond_6b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;

    move-result-object v19

    .line 2494
    .local v19, "certPasswd":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAccountCertificatePassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2497
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2502
    .end local v19    # "certPasswd":Ljava/lang/String;
    :pswitch_78
    if-eqz p4, :cond_6c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_6d

    .line 2503
    :cond_6c
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2504
    :cond_6d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Landroid/app/enterprise/ContextInfo;J)I

    move-result v66

    .line 2508
    .restart local v66    # "res":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getMaxEmailAgeFilter"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2511
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2516
    .end local v66    # "res":I
    :pswitch_79
    if-eqz p4, :cond_6e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_6f

    .line 2517
    :cond_6e
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2518
    :cond_6f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v50

    .line 2522
    .local v50, "long_res":J
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "setAccountEmailPassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2525
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 2538
    .end local v38    # "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .end local v50    # "long_res":J
    :pswitch_7a
    const-string/jumbo v5, "wifi_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 2540
    .local v47, "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-eqz v47, :cond_0

    if-eqz p3, :cond_0

    .line 2541
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_5

    :cond_70
    :goto_53
    packed-switch v5, :pswitch_data_6

    .line 2704
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2541
    :sswitch_74
    const-string/jumbo v6, "getAllowUserPolicyChanges"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    const/4 v5, 0x0

    goto :goto_53

    :sswitch_75
    const-string/jumbo v6, "getAllowUserProfiles"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    const/4 v5, 0x1

    goto :goto_53

    :sswitch_76
    const-string/jumbo v6, "getAutomaticConnectionToWifi"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    const/4 v5, 0x2

    goto :goto_53

    :sswitch_77
    const-string/jumbo v6, "getPasswordHidden"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    const/4 v5, 0x3

    goto :goto_53

    :sswitch_78
    const-string/jumbo v6, "getPromptCredentialsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    const/4 v5, 0x4

    goto :goto_53

    :sswitch_79
    const-string/jumbo v6, "isEnterpriseNetwork"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    const/4 v5, 0x5

    goto :goto_53

    :sswitch_7a
    const-string/jumbo v6, "isWifiApSettingUserModificationAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    const/4 v5, 0x6

    goto :goto_53

    :sswitch_7b
    const-string/jumbo v6, "isWifiStateChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    const/4 v5, 0x7

    goto :goto_53

    :sswitch_7c
    const-string/jumbo v6, "isOpenWifiApAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    const/16 v5, 0x8

    goto :goto_53

    :sswitch_7d
    const-string/jumbo v6, "getAllSsidBlacklist"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    const/16 v5, 0x9

    goto/16 :goto_53

    :sswitch_7e
    const-string/jumbo v6, "getAllSsidWhitelist"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    const/16 v5, 0xa

    goto/16 :goto_53

    :sswitch_7f
    const-string/jumbo v6, "isWifiSsidRestrictionActive"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    const/16 v5, 0xb

    goto/16 :goto_53

    .line 2543
    :pswitch_7b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2546
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAllowUserPolicyChanges"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2549
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v67    # "result":Z
    :cond_71
    :goto_54
    move-object/from16 v5, v49

    .line 2707
    goto/16 :goto_1

    .line 2554
    :pswitch_7c
    if-eqz p4, :cond_72

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_73

    .line 2555
    :cond_72
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2556
    :cond_73
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v47

    move/from16 v1, v77

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Landroid/app/enterprise/ContextInfo;ZI)Z

    move-result v67

    .line 2560
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAllowUserProfiles"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2563
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_54

    .line 2568
    .end local v67    # "result":Z
    :pswitch_7d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2571
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAutomaticConnectionToWifi"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2574
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_54

    .line 2579
    .end local v67    # "result":Z
    :pswitch_7e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPasswordHidden(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2582
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getPasswordHidden"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2585
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    .line 2590
    .end local v67    # "result":Z
    :pswitch_7f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2593
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getPromptCredentialsEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2596
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    .line 2601
    .end local v67    # "result":Z
    :pswitch_80
    if-eqz p4, :cond_74

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_75

    .line 2602
    :cond_74
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2603
    :cond_75
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v67

    .line 2606
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isEnterpriseNetwork"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2609
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    .line 2614
    .end local v67    # "result":Z
    :pswitch_81
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2617
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isWifiApSettingUserModificationAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2620
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    .line 2625
    .end local v67    # "result":Z
    :pswitch_82
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2628
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isWifiStateChangeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2631
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    .line 2636
    .end local v67    # "result":Z
    :pswitch_83
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2639
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isOpenWifiApAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2642
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    .line 2647
    .end local v67    # "result":Z
    :pswitch_84
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllSsidBlacklist(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v15

    .line 2650
    .local v15, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAllSsidBlacklist"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2654
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v15, :cond_76

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_76

    .line 2656
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_55
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    .line 2657
    .restart local v78    # "value":Ljava/lang/String;
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIFIPOLICY_ALLSSIDBLACKLIST_METHOD = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v78

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v78, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_55

    .line 2664
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Ljava/lang/String;
    :cond_76
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    .line 2670
    .end local v15    # "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_85
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllSsidWhitelist(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v79

    .line 2673
    .local v79, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAllSsidWhitelist"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2677
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v79, :cond_77

    invoke-interface/range {v79 .. v79}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_77

    .line 2679
    invoke-interface/range {v79 .. v79}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_56
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    .line 2680
    .restart local v78    # "value":Ljava/lang/String;
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIFIPOLICY_ALLSSIDWHITELIST_METHOD = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v78

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v78, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_56

    .line 2687
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Ljava/lang/String;
    :cond_77
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    .line 2693
    .end local v79    # "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_86
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2696
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isWifiSsidRestrictionActive"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2699
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    .line 2711
    .end local v47    # "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    .end local v67    # "result":Z
    :pswitch_87
    const-string/jumbo v5, "kioskmode"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 2713
    .local v42, "lKioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    if-eqz v42, :cond_0

    .line 2714
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_6

    :cond_78
    :goto_57
    packed-switch v5, :pswitch_data_7

    :goto_58
    move-object/from16 v5, v49

    .line 2900
    goto/16 :goto_1

    .line 2714
    :sswitch_80
    const-string/jumbo v6, "isNavigationBarHidden"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/4 v5, 0x0

    goto :goto_57

    :sswitch_81
    const-string/jumbo v6, "isMultiWindowModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/4 v5, 0x1

    goto :goto_57

    :sswitch_82
    const-string/jumbo v6, "isMultiWindowModeAllowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/4 v5, 0x2

    goto :goto_57

    :sswitch_83
    const-string/jumbo v6, "isAirCommandModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/4 v5, 0x3

    goto :goto_57

    :sswitch_84
    const-string/jumbo v6, "isAirViewModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/4 v5, 0x4

    goto :goto_57

    :sswitch_85
    const-string/jumbo v6, "getBlockedHwKeysCache"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/4 v5, 0x5

    goto :goto_57

    :sswitch_86
    const-string/jumbo v6, "isTaskManagerAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/4 v5, 0x6

    goto :goto_57

    :sswitch_87
    const-string/jumbo v6, "isKioskModeEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/4 v5, 0x7

    goto :goto_57

    :sswitch_88
    const-string/jumbo v6, "getKioskHomePackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/16 v5, 0x8

    goto :goto_57

    :sswitch_89
    const-string/jumbo v6, "isNightClockAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/16 v5, 0x9

    goto/16 :goto_57

    :sswitch_8a
    const-string/jumbo v6, "isPeopleEdgeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/16 v5, 0xa

    goto/16 :goto_57

    :sswitch_8b
    const-string/jumbo v6, "isEdgeLightingAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/16 v5, 0xb

    goto/16 :goto_57

    :sswitch_8c
    const-string/jumbo v6, "isInformationStreamAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/16 v5, 0xc

    goto/16 :goto_57

    :sswitch_8d
    const-string/jumbo v6, "isAppsEdgeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/16 v5, 0xd

    goto/16 :goto_57

    :sswitch_8e
    const-string/jumbo v6, "isEdgeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const/16 v5, 0xe

    goto/16 :goto_57

    .line 2716
    :pswitch_88
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2720
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isNavigationBarHidden"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2722
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    .line 2726
    .end local v67    # "result":Z
    :pswitch_89
    if-eqz p4, :cond_79

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_7a

    .line 2727
    :cond_79
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2729
    :cond_7a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v67

    .line 2733
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isMultiWindowModeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2735
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    .line 2739
    .end local v67    # "result":Z
    :pswitch_8a
    if-eqz p4, :cond_7b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_7c

    .line 2740
    :cond_7b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2742
    :cond_7c
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v67

    .line 2743
    .restart local v67    # "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isMultiWindowModeAllowedAsUser return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v67

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isMultiWindowModeAllowedAsUser"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2747
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    .line 2751
    .end local v67    # "result":Z
    :pswitch_8b
    if-nez p4, :cond_7d

    .line 2752
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2760
    .restart local v67    # "result":Z
    :goto_59
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirCommandModeAllowed return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v67

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isAirCommandModeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2764
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    .line 2756
    .end local v67    # "result":Z
    :cond_7d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2758
    .restart local v67    # "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirCommandModeAllowed uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 2768
    .end local v67    # "result":Z
    :pswitch_8c
    if-nez p4, :cond_7e

    .line 2769
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2777
    .restart local v67    # "result":Z
    :goto_5a
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirViewModeAllowed return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v67

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isAirViewModeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2781
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    .line 2773
    .end local v67    # "result":Z
    :cond_7e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2775
    .restart local v67    # "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirViewModeAllowed uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 2785
    .end local v67    # "result":Z
    :pswitch_8d
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v68

    .line 2788
    .local v68, "resultMap":Ljava/util/Map;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getBlockedHwKeysCache"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2790
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v68, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    .line 2794
    .end local v68    # "resultMap":Ljava/util/Map;
    :pswitch_8e
    if-eqz p4, :cond_7f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_80

    .line 2795
    :cond_7f
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2797
    :cond_80
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v67

    .line 2801
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isTaskManagerAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2803
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    .line 2807
    .end local v67    # "result":Z
    :pswitch_8f
    if-nez p4, :cond_81

    .line 2808
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2816
    .restart local v67    # "result":Z
    :goto_5b
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isKioskModeEnabled return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v67

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isKioskModeEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2820
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    .line 2812
    .end local v67    # "result":Z
    :cond_81
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2814
    .restart local v67    # "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isKioskModeEnabled uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 2824
    .end local v67    # "result":Z
    :pswitch_90
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v28

    .line 2828
    .local v28, "homePkg":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getKioskHomePackage"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2830
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v28, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    .line 2835
    .end local v28    # "homePkg":Ljava/lang/String;
    :pswitch_91
    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNightClockAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2838
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isNightClockAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2841
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    .line 2846
    .end local v67    # "result":Z
    :pswitch_92
    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isPeopleEdgeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2849
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isPeopleEdgeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2852
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    .line 2857
    .end local v67    # "result":Z
    :pswitch_93
    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeLightingAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2860
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isEdgeLightingAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2863
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    .line 2868
    .end local v67    # "result":Z
    :pswitch_94
    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isInformationStreamAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2871
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isInformationStreamAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2874
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    .line 2879
    .end local v67    # "result":Z
    :pswitch_95
    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAppsEdgeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2882
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isAppsEdgeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2885
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    .line 2890
    .end local v67    # "result":Z
    :pswitch_96
    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2893
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isEdgeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2896
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    .line 2907
    .end local v42    # "lKioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .end local v67    # "result":Z
    :pswitch_97
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v41

    .line 2909
    .local v41, "lEnterpriseDeviceManagerService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    if-eqz v41, :cond_0

    if-eqz p3, :cond_0

    .line 2910
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_7

    :cond_82
    :goto_5c
    packed-switch v5, :pswitch_data_8

    :cond_83
    :goto_5d
    :pswitch_98
    move-object/from16 v5, v49

    .line 3039
    goto/16 :goto_1

    .line 2910
    :sswitch_8f
    const-string/jumbo v6, "getAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x0

    goto :goto_5c

    :sswitch_90
    const-string/jumbo v6, "getActiveAdmins"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x1

    goto :goto_5c

    :sswitch_91
    const-string/jumbo v6, "getRemoveWarning"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x2

    goto :goto_5c

    :sswitch_92
    const-string/jumbo v6, "isAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x3

    goto :goto_5c

    :sswitch_93
    const-string/jumbo v6, "setActiveAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x4

    goto :goto_5c

    :sswitch_94
    const-string/jumbo v6, "removeActiveAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x5

    goto :goto_5c

    :sswitch_95
    const-string/jumbo v6, "setAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x6

    goto :goto_5c

    :sswitch_96
    const-string/jumbo v6, "updateAdminPermissions"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x7

    goto :goto_5c

    :sswitch_97
    const-string/jumbo v6, "getMyKnoxAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/16 v5, 0x8

    goto :goto_5c

    :sswitch_98
    const-string/jumbo v6, "isMdmAdminPresent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/16 v5, 0x9

    goto/16 :goto_5c

    :sswitch_99
    const-string/jumbo v6, "getEnterpriseSdkVer"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/16 v5, 0xa

    goto/16 :goto_5c

    .line 2912
    :pswitch_99
    if-eqz p4, :cond_84

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_85

    .line 2913
    :cond_84
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2914
    :cond_85
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminRemovable(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v67

    .line 2917
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAdminRemovable"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2921
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5d

    .line 2926
    .end local v67    # "result":Z
    :pswitch_9a
    if-eqz p4, :cond_86

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_87

    .line 2927
    :cond_86
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2928
    :cond_87
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v48

    .line 2932
    .local v48, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getActiveAdmins"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2936
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v48, :cond_83

    invoke-interface/range {v48 .. v48}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_83

    .line 2938
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_5e
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/content/ComponentName;

    .line 2939
    .local v78, "value":Landroid/content/ComponentName;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v78 .. v78}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5e

    .line 2946
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v48    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v78    # "value":Landroid/content/ComponentName;
    :pswitch_9b
    if-eqz p4, :cond_88

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_89

    .line 2947
    :cond_88
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2949
    :cond_89
    const/4 v5, 0x0

    :try_start_3d
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_3d} :catch_3d

    goto/16 :goto_5d

    .line 2951
    :catch_3d
    move-exception v23

    .line 2953
    .local v23, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v23 .. v23}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5d

    .line 2957
    .end local v23    # "e":Landroid/os/RemoteException;
    :pswitch_9c
    if-eqz p4, :cond_8a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_8b

    .line 2958
    :cond_8a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2959
    :cond_8b
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result v67

    .line 2961
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isAdminRemovable"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2965
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5d

    .line 2970
    .end local v67    # "result":Z
    :pswitch_9d
    if-eqz p4, :cond_8c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_8d

    .line 2971
    :cond_8c
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2973
    :cond_8d
    const/4 v5, 0x0

    :try_start_3e
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_3e} :catch_3e

    goto/16 :goto_5d

    .line 2975
    :catch_3e
    move-exception v23

    .line 2977
    .restart local v23    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v23 .. v23}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5d

    .line 2981
    .end local v23    # "e":Landroid/os/RemoteException;
    :pswitch_9e
    if-eqz p4, :cond_8e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_8f

    .line 2982
    :cond_8e
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2984
    :cond_8f
    const/4 v5, 0x0

    :try_start_3f
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_3f} :catch_3f

    goto/16 :goto_5d

    .line 2985
    :catch_3f
    move-exception v23

    .line 2987
    .restart local v23    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v23 .. v23}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5d

    .line 2991
    .end local v23    # "e":Landroid/os/RemoteException;
    :pswitch_9f
    if-eqz p4, :cond_90

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_91

    .line 2992
    :cond_90
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2993
    :cond_91
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    aget-object v7, p4, v7

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    move-result v67

    .line 2996
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "setAdminRemovable"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2999
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5d

    .line 3007
    .end local v67    # "result":Z
    :pswitch_a0
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getMyKnoxAdmin(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v11

    .line 3008
    .local v11, "admin":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getMyKnoxAdmin"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3011
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5d

    .line 3016
    .end local v11    # "admin":Ljava/lang/String;
    :pswitch_a1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v74

    .line 3018
    .local v74, "token":J
    :try_start_40
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresent()Z

    move-result v67

    .line 3019
    .restart local v67    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_0

    .line 3022
    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .local v52, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    :try_start_41
    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_1

    .line 3026
    invoke-static/range {v74 .. v75}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v49, v52

    .line 3028
    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    goto/16 :goto_5d

    .line 3026
    .end local v67    # "result":Z
    :catchall_0
    move-exception v5

    :goto_5f
    invoke-static/range {v74 .. v75}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 3030
    .end local v74    # "token":J
    :pswitch_a2
    const-string v5, "16"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v53

    .line 3031
    .local v53, "mdm_config_version":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getEnterpriseSdkVer"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3034
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5d

    .line 3043
    .end local v41    # "lEnterpriseDeviceManagerService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v53    # "mdm_config_version":I
    :pswitch_a3
    const-string/jumbo v5, "email_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/enterprise/email/EmailPolicy;

    .line 3045
    .local v40, "lEmailPolicy":Lcom/android/server/enterprise/email/EmailPolicy;
    if-eqz v40, :cond_0

    if-eqz p3, :cond_0

    .line 3046
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_8

    :cond_92
    :goto_60
    packed-switch v5, :pswitch_data_9

    .line 3144
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3046
    :sswitch_9a
    const-string/jumbo v6, "isAccountAdditionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    const/4 v5, 0x0

    goto :goto_60

    :sswitch_9b
    const-string/jumbo v6, "getAllowEmailForwarding"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    const/4 v5, 0x1

    goto :goto_60

    :sswitch_9c
    const-string/jumbo v6, "isEmailSettingsChangesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    const/4 v5, 0x2

    goto :goto_60

    :sswitch_9d
    const-string/jumbo v6, "isEmailNotificationsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    const/4 v5, 0x3

    goto :goto_60

    :sswitch_9e
    const-string/jumbo v6, "getAllowHtmlEmail"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    const/4 v5, 0x4

    goto :goto_60

    :sswitch_9f
    const-string/jumbo v6, "getEnterpriseExchangeAccountObject"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    const/4 v5, 0x5

    goto :goto_60

    :sswitch_a0
    const-string/jumbo v6, "getEnterpriseEmailAccountObject"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    const/4 v5, 0x6

    goto :goto_60

    .line 3048
    :pswitch_a4
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/email/EmailPolicy;->isAccountAdditionAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 3051
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isAccountAdditionAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3054
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v67    # "result":Z
    :goto_61
    move-object/from16 v5, v49

    .line 3147
    goto/16 :goto_1

    .line 3059
    :pswitch_a5
    if-eqz p4, :cond_93

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_94

    .line 3060
    :cond_93
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3061
    :cond_94
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowEmailForwarding(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v67

    .line 3065
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAllowEmailForwarding"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3068
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_61

    .line 3073
    .end local v67    # "result":Z
    :pswitch_a6
    if-eqz p4, :cond_95

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_96

    .line 3074
    :cond_95
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3075
    :cond_96
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailSettingsChangeAllowed(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v67

    .line 3079
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isEmailSettingsChangesAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3082
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_61

    .line 3087
    .end local v67    # "result":Z
    :pswitch_a7
    if-eqz p4, :cond_97

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_98

    .line 3088
    :cond_97
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3089
    :cond_98
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailNotificationsEnabled(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v67

    .line 3093
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isEmailNotificationsEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3096
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_61

    .line 3101
    .end local v67    # "result":Z
    :pswitch_a8
    if-eqz p4, :cond_99

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_9a

    .line 3102
    :cond_99
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3103
    :cond_9a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v67

    .line 3107
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAllowHtmlEmail"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3110
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_61

    .line 3115
    .end local v67    # "result":Z
    :pswitch_a9
    if-eqz p4, :cond_9b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_9c

    .line 3116
    :cond_9b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3117
    :cond_9c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getExchangeAccountObject(Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v54

    .line 3120
    .local v54, "obj_eas":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getEnterpriseExchangeAccountObject"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3123
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-nez v16, :cond_9d

    .line 3124
    new-instance v16, Landroid/os/Bundle;

    .end local v16    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 3125
    .restart local v16    # "bundle":Landroid/os/Bundle;
    :cond_9d
    const-string/jumbo v5, "eas.account"

    move-object/from16 v0, v16

    move-object/from16 v1, v54

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3126
    move-object/from16 v0, v49

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_61

    .line 3129
    .end local v54    # "obj_eas":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :pswitch_aa
    if-eqz p4, :cond_9e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_9f

    .line 3130
    :cond_9e
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3131
    :cond_9f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailAccountObject(Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v55

    .line 3134
    .local v55, "obj_email":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getEnterpriseEmailAccountObject"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3137
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-nez v16, :cond_a0

    .line 3138
    new-instance v16, Landroid/os/Bundle;

    .end local v16    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 3139
    .restart local v16    # "bundle":Landroid/os/Bundle;
    :cond_a0
    const-string/jumbo v5, "email.account"

    move-object/from16 v0, v16

    move-object/from16 v1, v55

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3140
    move-object/from16 v0, v49

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_61

    .line 3153
    .end local v40    # "lEmailPolicy":Lcom/android/server/enterprise/email/EmailPolicy;
    .end local v55    # "obj_email":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :pswitch_ab
    const-string/jumbo v5, "vpn_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 3155
    .local v46, "lVpnInfoPolicy":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    if-eqz v46, :cond_0

    .line 3156
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_9

    :cond_a1
    :goto_62
    packed-switch v5, :pswitch_data_a

    .line 3222
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3156
    :sswitch_a1
    const-string v6, "checkRacoonSecurity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a1

    const/4 v5, 0x0

    goto :goto_62

    :sswitch_a2
    const-string/jumbo v6, "isUserAddProfilesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a1

    const/4 v5, 0x1

    goto :goto_62

    :sswitch_a3
    const-string/jumbo v6, "isUserChangeProfilesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a1

    const/4 v5, 0x2

    goto :goto_62

    :sswitch_a4
    const-string/jumbo v6, "isUserSetAlwaysOnAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a1

    const/4 v5, 0x3

    goto :goto_62

    .line 3158
    :pswitch_ac
    if-eqz p4, :cond_a2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_a3

    .line 3159
    :cond_a2
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3161
    :cond_a3
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkRacoonSecurity(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;)Z

    move-result v67

    .line 3164
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "checkRacoonSecurity"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3167
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_63
    move-object/from16 v5, v49

    .line 3225
    goto/16 :goto_1

    .line 3173
    .end local v67    # "result":Z
    :pswitch_ad
    const/4 v13, 0x0

    .line 3174
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_a4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_a4

    .line 3175
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3177
    :cond_a4
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserAddProfilesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v67

    .line 3180
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isUserAddProfilesAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3183
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_63

    .line 3189
    .end local v13    # "arg":Z
    .end local v67    # "result":Z
    :pswitch_ae
    const/4 v13, 0x0

    .line 3190
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_a5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_a5

    .line 3191
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3193
    :cond_a5
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserChangeProfilesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v67

    .line 3196
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isUserChangeProfilesAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3199
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_63

    .line 3205
    .end local v13    # "arg":Z
    .end local v67    # "result":Z
    :pswitch_af
    const/4 v13, 0x0

    .line 3206
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_a6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_a6

    .line 3207
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3209
    :cond_a6
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserSetAlwaysOnAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v67

    .line 3212
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isUserSetAlwaysOnAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3215
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_63

    .line 3229
    .end local v13    # "arg":Z
    .end local v46    # "lVpnInfoPolicy":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    .end local v67    # "result":Z
    :pswitch_b0
    const-string/jumbo v5, "knox_ccm_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 3231
    .local v35, "lClientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-eqz v35, :cond_0

    .line 3232
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_a

    :cond_a7
    :goto_64
    packed-switch v5, :pswitch_data_b

    .line 3305
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3232
    :sswitch_a5
    const-string/jumbo v6, "installCertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    const/4 v5, 0x0

    goto :goto_64

    :sswitch_a6
    const-string/jumbo v6, "deleteCertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    const/4 v5, 0x1

    goto :goto_64

    :sswitch_a7
    const-string/jumbo v6, "isCCMPolicyEnabledForPackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    const/4 v5, 0x2

    goto :goto_64

    :sswitch_a8
    const-string/jumbo v6, "getCCMVersion"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    const/4 v5, 0x3

    goto :goto_64

    .line 3234
    :pswitch_b1
    if-eqz p4, :cond_a8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_a9

    .line 3235
    :cond_a8
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3237
    :cond_a9
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v14

    .line 3238
    .local v14, "arrayLength":I
    new-instance v57, Ljava/util/ArrayList;

    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V

    .line 3240
    .local v57, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v21, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct/range {v21 .. v21}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .line 3241
    .local v21, "cp":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z

    .line 3242
    const/4 v5, 0x1

    aget-object v5, p4, v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    .line 3243
    const/4 v5, 0x2

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    .line 3244
    const/4 v5, 0x3

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    .line 3246
    const/16 v29, 0x4

    .local v29, "i":I
    :goto_65
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    move/from16 v0, v29

    if-ge v0, v5, :cond_aa

    .line 3247
    aget-object v5, p4, v29

    move-object/from16 v0, v57

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3246
    add-int/lit8 v29, v29, 0x1

    goto :goto_65

    .line 3248
    :cond_aa
    move-object/from16 v0, v57

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    .line 3250
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    add-int/lit8 v6, v14, -0x2

    aget-object v6, p4, v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    add-int/lit8 v7, v14, -0x1

    aget-object v7, p4, v7

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1, v6, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installCertificate(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;[BLjava/lang/String;)Z

    move-result v67

    .line 3254
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "installCertificate"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3257
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v14    # "arrayLength":I
    .end local v21    # "cp":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .end local v29    # "i":I
    .end local v57    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v67    # "result":Z
    :goto_66
    move-object/from16 v5, v49

    .line 3307
    goto/16 :goto_1

    .line 3263
    :pswitch_b2
    if-eqz p4, :cond_ab

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_ac

    .line 3264
    :cond_ab
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3266
    :cond_ac
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v67

    .line 3269
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "deleteCertificate"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3272
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_66

    .line 3278
    .end local v67    # "result":Z
    :pswitch_b3
    if-eqz p4, :cond_ad

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_ae

    .line 3279
    :cond_ad
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3281
    :cond_ae
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v67

    .line 3284
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isCCMPolicyEnabledForPackage"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3287
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_66

    .line 3293
    .end local v67    # "result":Z
    :pswitch_b4
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v18

    .line 3296
    .local v18, "ccmVersion":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getCCMVersion"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3299
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v18, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_66

    .line 3312
    .end local v18    # "ccmVersion":Ljava/lang/String;
    .end local v35    # "lClientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    :pswitch_b5
    const-string/jumbo v5, "multi_user_manager_service"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    .line 3314
    .local v44, "lMultiUserManagerService":Lcom/android/server/enterprise/multiuser/MultiUserManagerService;
    if-eqz v44, :cond_0

    .line 3315
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_b

    :cond_af
    :goto_67
    packed-switch v5, :pswitch_data_c

    .line 3387
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3315
    :sswitch_a9
    const-string/jumbo v6, "multipleUsersAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    const/4 v5, 0x0

    goto :goto_67

    :sswitch_aa
    const-string/jumbo v6, "isUserCreationAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    const/4 v5, 0x1

    goto :goto_67

    :sswitch_ab
    const-string/jumbo v6, "isUserRemovalAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    const/4 v5, 0x2

    goto :goto_67

    :sswitch_ac
    const-string/jumbo v6, "multipleUsersSupported"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    const/4 v5, 0x3

    goto :goto_67

    .line 3317
    :pswitch_b6
    const/4 v13, 0x0

    .line 3318
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_b0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_b0

    .line 3319
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3322
    :cond_b0
    :try_start_42
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_42} :catch_40

    move-result v66

    .line 3327
    .restart local v66    # "res":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "multipleUsersAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3330
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v13    # "arg":Z
    .end local v66    # "res":I
    :goto_68
    move-object/from16 v5, v49

    .line 3390
    goto/16 :goto_1

    .line 3323
    .restart local v13    # "arg":Z
    :catch_40
    move-exception v23

    .line 3324
    .restart local v23    # "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3336
    .end local v13    # "arg":Z
    .end local v23    # "e":Landroid/os/RemoteException;
    :pswitch_b7
    const/4 v13, 0x0

    .line 3337
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_b1

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_b1

    .line 3338
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3340
    :cond_b1
    :try_start_43
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserCreationAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_41

    move-result v67

    .line 3345
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isUserCreationAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3348
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_68

    .line 3341
    .end local v67    # "result":Z
    :catch_41
    move-exception v23

    .line 3342
    .local v23, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3354
    .end local v13    # "arg":Z
    .end local v23    # "e":Ljava/lang/Exception;
    :pswitch_b8
    const/4 v13, 0x0

    .line 3355
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_b2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_b2

    .line 3356
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3359
    :cond_b2
    :try_start_44
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserRemovalAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_44} :catch_42

    move-result v67

    .line 3364
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isUserRemovalAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3367
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_68

    .line 3360
    .end local v67    # "result":Z
    :catch_42
    move-exception v23

    .line 3361
    .local v23, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3374
    .end local v13    # "arg":Z
    .end local v23    # "e":Landroid/os/RemoteException;
    :pswitch_b9
    :try_start_45
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersSupported(Landroid/app/enterprise/ContextInfo;)Z
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_45} :catch_43

    move-result v67

    .line 3378
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3381
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_68

    .line 3375
    .end local v67    # "result":Z
    :catch_43
    move-exception v23

    .line 3376
    .restart local v23    # "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3395
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v44    # "lMultiUserManagerService":Lcom/android/server/enterprise/multiuser/MultiUserManagerService;
    :pswitch_ba
    const-string/jumbo v5, "device_account_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 3397
    .local v36, "lDeviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-eqz v36, :cond_0

    if-eqz p3, :cond_0

    .line 3398
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_c

    :cond_b3
    :goto_69
    packed-switch v5, :pswitch_data_d

    .line 3432
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3398
    :sswitch_ad
    const-string/jumbo v6, "isAccountRemovalAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b3

    const/4 v5, 0x0

    goto :goto_69

    :sswitch_ae
    const-string/jumbo v6, "isAccountAdditionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b3

    const/4 v5, 0x1

    goto :goto_69

    .line 3400
    :pswitch_bb
    if-eqz p4, :cond_b4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_b5

    .line 3401
    :cond_b4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3403
    :cond_b5
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v67

    .line 3407
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isAccountRemovalAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3410
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_6a
    move-object/from16 v5, v49

    .line 3435
    goto/16 :goto_1

    .line 3416
    .end local v67    # "result":Z
    :pswitch_bc
    if-eqz p4, :cond_b6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_b7

    .line 3417
    :cond_b6
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3419
    :cond_b7
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v67

    .line 3423
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isAccountAdditionAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3426
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6a

    .line 3439
    .end local v36    # "lDeviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .end local v67    # "result":Z
    :pswitch_bd
    const-string/jumbo v5, "misc_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/enterprise/general/MiscPolicy;

    .line 3441
    .local v43, "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    if-eqz v43, :cond_0

    if-eqz p3, :cond_0

    .line 3442
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_d

    :cond_b8
    :goto_6b
    packed-switch v5, :pswitch_data_e

    .line 3466
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3442
    :sswitch_af
    const-string/jumbo v6, "getCurrentLockScreenString"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b8

    const/4 v5, 0x0

    goto :goto_6b

    :sswitch_b0
    const-string/jumbo v6, "isNFCStateChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b8

    const/4 v5, 0x1

    goto :goto_6b

    .line 3444
    :pswitch_be
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/general/MiscPolicy;->getCurrentLockScreenString(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v22

    .line 3447
    .local v22, "current":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getCurrentLockScreenString"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3450
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v22, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v22    # "current":Ljava/lang/String;
    :goto_6c
    move-object/from16 v5, v49

    .line 3469
    goto/16 :goto_1

    .line 3455
    :pswitch_bf
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result v67

    .line 3458
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isNFCStateChangeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3461
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6c

    .line 3473
    .end local v43    # "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    .end local v67    # "result":Z
    :pswitch_c0
    const-string/jumbo v5, "email_account_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    .line 3475
    .local v39, "lEmailAccountPolicy":Lcom/android/server/enterprise/email/EmailAccountPolicy;
    if-eqz v39, :cond_0

    if-eqz p3, :cond_0

    .line 3476
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_e

    :cond_b9
    :goto_6d
    packed-switch v5, :pswitch_data_f

    .line 3535
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3476
    :sswitch_b1
    const-string/jumbo v6, "getSecurityIncomingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    const/4 v5, 0x0

    goto :goto_6d

    :sswitch_b2
    const-string/jumbo v6, "getSecurityOutgoingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    const/4 v5, 0x1

    goto :goto_6d

    :sswitch_b3
    const-string/jumbo v6, "setSecurityInComingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    const/4 v5, 0x2

    goto :goto_6d

    :sswitch_b4
    const-string/jumbo v6, "setSecurityOutGoingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    const/4 v5, 0x3

    goto :goto_6d

    .line 3478
    :pswitch_c1
    if-eqz p4, :cond_ba

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_bb

    .line 3479
    :cond_ba
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3481
    :cond_bb
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityInComingServerPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;

    move-result-object v31

    .line 3485
    .local v31, "incServer":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSecurityIncomingServerPassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3488
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v31, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v31    # "incServer":Ljava/lang/String;
    :goto_6e
    move-object/from16 v5, v49

    .line 3538
    goto/16 :goto_1

    .line 3493
    :pswitch_c2
    if-eqz p4, :cond_bc

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_bd

    .line 3494
    :cond_bc
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3496
    :cond_bd
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;

    move-result-object v56

    .line 3500
    .local v56, "outServer":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSecurityOutgoingServerPassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3503
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v56, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6e

    .line 3508
    .end local v56    # "outServer":Ljava/lang/String;
    :pswitch_c3
    if-eqz p4, :cond_be

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_bf

    .line 3509
    :cond_be
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3510
    :cond_bf
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v50

    .line 3513
    .restart local v50    # "long_res":J
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3516
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6e

    .line 3522
    .end local v50    # "long_res":J
    :pswitch_c4
    if-eqz p4, :cond_c0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_c1

    .line 3523
    :cond_c0
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3524
    :cond_c1
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v50

    .line 3527
    .restart local v50    # "long_res":J
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3530
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6e

    .line 3542
    .end local v39    # "lEmailAccountPolicy":Lcom/android/server/enterprise/email/EmailAccountPolicy;
    .end local v50    # "long_res":J
    :pswitch_c5
    const-string/jumbo v5, "dualsim_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;

    .line 3544
    .local v37, "lDualSimPolicy":Lcom/android/server/enterprise/dualsim/DualSimPolicyService;
    if-eqz v37, :cond_0

    if-eqz p3, :cond_0

    .line 3545
    const-string/jumbo v5, "getpreferredsimslot"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3546
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getPreferredSimSlot(Landroid/app/enterprise/ContextInfo;)I

    move-result v66

    .line 3550
    .restart local v66    # "res":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getpreferredsimslot"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3555
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v5, v49

    .line 3559
    goto/16 :goto_1

    .line 3026
    .end local v37    # "lDualSimPolicy":Lcom/android/server/enterprise/dualsim/DualSimPolicyService;
    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .end local v66    # "res":I
    .restart local v41    # "lEnterpriseDeviceManagerService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .restart local v67    # "result":Z
    .restart local v74    # "token":J
    :catchall_1
    move-exception v5

    move-object/from16 v49, v52

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    goto/16 :goto_5f

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_54
        :pswitch_b0
        :pswitch_ba
        :pswitch_0
        :pswitch_c5
        :pswitch_a3
        :pswitch_c0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_97
        :pswitch_6b
        :pswitch_87
        :pswitch_13
        :pswitch_32
        :pswitch_bd
        :pswitch_b5
        :pswitch_1
        :pswitch_ab
        :pswitch_7a
    .end packed-switch

    .line 192
    :sswitch_data_0
    .sparse-switch
        -0x7c20b2e4 -> :sswitch_3
        -0x75b6adce -> :sswitch_d
        -0x516c3a61 -> :sswitch_9
        -0x4b848555 -> :sswitch_a
        -0x45f6c0db -> :sswitch_b
        -0x3f23242a -> :sswitch_c
        -0x308af1de -> :sswitch_1
        -0xb24e11b -> :sswitch_8
        0x1134efad -> :sswitch_0
        0x1410b963 -> :sswitch_4
        0x14e927da -> :sswitch_f
        0x42bd705d -> :sswitch_7
        0x617af081 -> :sswitch_10
        0x6b27fd59 -> :sswitch_5
        0x6dfeff94 -> :sswitch_e
        0x6e342165 -> :sswitch_6
        0x7be8d885 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 422
    :sswitch_data_1
    .sparse-switch
        -0x7de23aaa -> :sswitch_26
        -0x75228db3 -> :sswitch_1e
        -0x6dd40464 -> :sswitch_22
        -0x5e8b707a -> :sswitch_14
        -0x535b24ed -> :sswitch_13
        -0x5344faa1 -> :sswitch_12
        -0x49b19ab4 -> :sswitch_25
        -0x47aa5058 -> :sswitch_2c
        -0x477f69dc -> :sswitch_21
        -0x47062780 -> :sswitch_16
        -0x2d0232dc -> :sswitch_15
        -0x1b1e2f47 -> :sswitch_2a
        -0x6441366 -> :sswitch_24
        -0x2067e91 -> :sswitch_2d
        0x10dc886c -> :sswitch_1d
        0x27deb5dc -> :sswitch_1a
        0x28bec559 -> :sswitch_23
        0x376703d8 -> :sswitch_29
        0x3e24f8e6 -> :sswitch_1b
        0x428f670d -> :sswitch_28
        0x432078d3 -> :sswitch_11
        0x433f1786 -> :sswitch_19
        0x4f9505ac -> :sswitch_1f
        0x5afa1a68 -> :sswitch_20
        0x5b05ced2 -> :sswitch_17
        0x6238abf9 -> :sswitch_2b
        0x694839c4 -> :sswitch_27
        0x6ad3e979 -> :sswitch_2e
        0x6c630712 -> :sswitch_18
        0x75760f09 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch

    .line 1171
    :sswitch_data_2
    .sparse-switch
        -0x7d00b11f -> :sswitch_3b
        -0x7bc370bc -> :sswitch_4a
        -0x757aa1fb -> :sswitch_38
        -0x6ff99d8b -> :sswitch_40
        -0x6f61ea52 -> :sswitch_35
        -0x6f1f927d -> :sswitch_3e
        -0x6cd5112c -> :sswitch_33
        -0x6b02fb56 -> :sswitch_37
        -0x68231777 -> :sswitch_41
        -0x5f479d3d -> :sswitch_4d
        -0x5d96bdfd -> :sswitch_4f
        -0x49039c7d -> :sswitch_4b
        -0x3eeccaaa -> :sswitch_34
        -0x3b6d6c7b -> :sswitch_31
        -0x105b68f3 -> :sswitch_44
        -0xf88924c -> :sswitch_30
        -0x63922de -> :sswitch_49
        -0x2246832 -> :sswitch_46
        -0x117c459 -> :sswitch_48
        0x4fd98e1 -> :sswitch_42
        0x12bb4d48 -> :sswitch_2f
        0x18e41b33 -> :sswitch_4c
        0x1d261c9d -> :sswitch_45
        0x240ce64e -> :sswitch_43
        0x32c1d30f -> :sswitch_47
        0x438d32f5 -> :sswitch_3c
        0x4875c45d -> :sswitch_3f
        0x4a948f99 -> :sswitch_39
        0x64defd38 -> :sswitch_4e
        0x67050a1d -> :sswitch_32
        0x6c8af02b -> :sswitch_36
        0x6db77171 -> :sswitch_3a
        0x6ec40bb4 -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
    .end packed-switch

    .line 1957
    :sswitch_data_3
    .sparse-switch
        -0x777467f8 -> :sswitch_64
        -0x4de6cfb2 -> :sswitch_5a
        -0x4378abac -> :sswitch_51
        -0x308e1a98 -> :sswitch_53
        -0x29404601 -> :sswitch_63
        -0x2360eeb0 -> :sswitch_65
        -0xf8e19f3 -> :sswitch_56
        0x14014325 -> :sswitch_5f
        0x1a458c22 -> :sswitch_61
        0x1e373fed -> :sswitch_58
        0x21074337 -> :sswitch_57
        0x22e592aa -> :sswitch_5b
        0x2383ddea -> :sswitch_60
        0x2952fe03 -> :sswitch_55
        0x2d2b575b -> :sswitch_5d
        0x2dd7b5a9 -> :sswitch_5e
        0x38dd3e65 -> :sswitch_5c
        0x3c3b0102 -> :sswitch_52
        0x3d4c4243 -> :sswitch_59
        0x3d73f371 -> :sswitch_62
        0x49cef874 -> :sswitch_50
        0x767a17ac -> :sswitch_54
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
    .end packed-switch

    .line 2332
    :sswitch_data_4
    .sparse-switch
        -0x7f6b9b80 -> :sswitch_6a
        -0x7a29af54 -> :sswitch_73
        -0x7672ed17 -> :sswitch_72
        -0x6a25634f -> :sswitch_66
        -0x437f6e25 -> :sswitch_71
        -0x1e01c219 -> :sswitch_6f
        -0x14b468b1 -> :sswitch_67
        0xb8321a0 -> :sswitch_70
        0x26b3fb45 -> :sswitch_68
        0x2a7ba768 -> :sswitch_69
        0x37929121 -> :sswitch_6e
        0x6e37395a -> :sswitch_6c
        0x77ba6b2b -> :sswitch_6b
        0x7ec2cd45 -> :sswitch_6d
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
    .end packed-switch

    .line 2541
    :sswitch_data_5
    .sparse-switch
        -0x741f137a -> :sswitch_7b
        -0x5d7bb47d -> :sswitch_79
        -0x511c5d9f -> :sswitch_7e
        -0x44588ee5 -> :sswitch_77
        -0x420e1f50 -> :sswitch_7c
        -0x23226268 -> :sswitch_7f
        -0x208922d -> :sswitch_74
        0x1b40829f -> :sswitch_78
        0x2e222643 -> :sswitch_76
        0x5a7559bf -> :sswitch_7a
        0x60eb8b37 -> :sswitch_7d
        0x6406da08 -> :sswitch_75
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
    .end packed-switch

    .line 2714
    :sswitch_data_6
    .sparse-switch
        -0x678cfb16 -> :sswitch_86
        -0x5d1cb00b -> :sswitch_8b
        -0x58dab65f -> :sswitch_8e
        -0x55d0d0ee -> :sswitch_8a
        -0x495e7741 -> :sswitch_87
        -0x1abb5fa -> :sswitch_81
        0xf077a09 -> :sswitch_85
        0x1fa36ac0 -> :sswitch_84
        0x2f421cc3 -> :sswitch_82
        0x32574534 -> :sswitch_88
        0x34565e5f -> :sswitch_80
        0x38ab60cf -> :sswitch_8d
        0x3ab3e61a -> :sswitch_83
        0x4ed22f86 -> :sswitch_8c
        0x6c0df1e8 -> :sswitch_89
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
    .end packed-switch

    .line 2910
    :sswitch_data_7
    .sparse-switch
        -0x76e9095f -> :sswitch_97
        -0x755ab0b2 -> :sswitch_95
        -0x69b477e0 -> :sswitch_90
        -0x5fd37362 -> :sswitch_96
        -0x3d5118be -> :sswitch_8f
        -0x4e0d4c0 -> :sswitch_99
        0x1d6710b8 -> :sswitch_98
        0x2fe3c227 -> :sswitch_93
        0x3854fcc5 -> :sswitch_94
        0x47a72ec2 -> :sswitch_91
        0x7ac2a216 -> :sswitch_92
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_98
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
    .end packed-switch

    .line 3046
    :sswitch_data_8
    .sparse-switch
        -0x793fada2 -> :sswitch_9e
        -0x5c3258ae -> :sswitch_9f
        -0x3c3a3ab9 -> :sswitch_a0
        -0x394ec066 -> :sswitch_9c
        0x1733e8eb -> :sswitch_9d
        0x4e985da6 -> :sswitch_9b
        0x4fb7d6e9 -> :sswitch_9a
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
    .end packed-switch

    .line 3156
    :sswitch_data_9
    .sparse-switch
        0x20839282 -> :sswitch_a1
        0x20e4e472 -> :sswitch_a2
        0x528665ad -> :sswitch_a4
        0x75693779 -> :sswitch_a3
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
    .end packed-switch

    .line 3232
    :sswitch_data_a
    .sparse-switch
        -0x602f3b04 -> :sswitch_a5
        -0x148747ff -> :sswitch_a8
        0x37b7b049 -> :sswitch_a7
        0x7a36baec -> :sswitch_a6
    .end sparse-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_b4
    .end packed-switch

    .line 3315
    :sswitch_data_b
    .sparse-switch
        -0xa355b0c -> :sswitch_aa
        -0x7ddb46f -> :sswitch_ab
        0x9914b0 -> :sswitch_a9
        0x274445b6 -> :sswitch_ac
    .end sparse-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_b7
        :pswitch_b8
        :pswitch_b9
    .end packed-switch

    .line 3398
    :sswitch_data_c
    .sparse-switch
        -0x7117b61 -> :sswitch_ad
        0x4fb7d6e9 -> :sswitch_ae
    .end sparse-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_bb
        :pswitch_bc
    .end packed-switch

    .line 3442
    :sswitch_data_d
    .sparse-switch
        -0x7cedec35 -> :sswitch_af
        0x30468cc8 -> :sswitch_b0
    .end sparse-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_be
        :pswitch_bf
    .end packed-switch

    .line 3476
    :sswitch_data_e
    .sparse-switch
        -0x5ed62634 -> :sswitch_b4
        0x655a3d46 -> :sswitch_b3
        0x705941e0 -> :sswitch_b2
        0x7378391a -> :sswitch_b1
    .end sparse-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_c2
        :pswitch_c3
        :pswitch_c4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 3637
    const/4 v0, 0x0

    return v0
.end method
