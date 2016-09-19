.class public Lcom/sec/epdg/EpdgWfcProfileReader;
.super Ljava/lang/Object;
.source "EpdgWfcProfileReader.java"


# static fields
.field public static final COLUMN_AP_ENABLED:Ljava/lang/String; = "ap_enabled"

.field public static final COLUMN_AP_SSID:Ljava/lang/String; = "ap_ssid"

.field public static final CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "[EPDGWFCREADER]"

.field private static mEpdgWfcProfileInstance:Lcom/sec/epdg/EpdgWfcProfileReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgWfcProfileReader;->mEpdgWfcProfileInstance:Lcom/sec/epdg/EpdgWfcProfileReader;

    .line 18
    const-string v0, "content://com.sec.sprint.wfc.provider/wfc_profiles"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/EpdgWfcProfileReader;->CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/EpdgWfcProfileReader;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/sec/epdg/EpdgWfcProfileReader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/EpdgWfcProfileReader;->mEpdgWfcProfileInstance:Lcom/sec/epdg/EpdgWfcProfileReader;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/sec/epdg/EpdgWfcProfileReader;

    invoke-direct {v0}, Lcom/sec/epdg/EpdgWfcProfileReader;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgWfcProfileReader;->mEpdgWfcProfileInstance:Lcom/sec/epdg/EpdgWfcProfileReader;

    .line 30
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgWfcProfileReader;->mEpdgWfcProfileInstance:Lcom/sec/epdg/EpdgWfcProfileReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized checkWfcProfileStatus(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 34
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 35
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "ap_enabled"

    aput-object v3, v2, v1

    .line 38
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 40
    .local v7, "status":I
    sget-object v1, Lcom/sec/epdg/EpdgWfcProfileReader;->CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

    const-string v3, "ap_ssid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2}, Lcom/sec/epdg/EpdgUtils;->stripLeadingAndTrailingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 46
    .local v6, "messagesCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 48
    :cond_0
    const-string v1, "[EPDGWFCREADER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty WFC Profile DB for SSID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    if-eqz v6, :cond_1

    .line 58
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    const/4 v6, 0x0

    :cond_1
    move v1, v9

    .line 62
    :goto_0
    monitor-exit p0

    return v1

    .line 51
    :cond_2
    :goto_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    const-string v1, "ap_enabled"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 54
    const-string v1, "[EPDGWFCREADER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "status of SSID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 57
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 58
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 59
    const/4 v6, 0x0

    :cond_3
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 34
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "messagesCursor":Landroid/database/Cursor;
    .end local v7    # "status":I
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 57
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "messagesCursor":Landroid/database/Cursor;
    .restart local v7    # "status":I
    :cond_4
    if-eqz v6, :cond_5

    .line 58
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 59
    const/4 v6, 0x0

    .line 62
    :cond_5
    if-ne v7, v8, :cond_6

    move v1, v8

    goto :goto_0

    :cond_6
    move v1, v9

    goto :goto_0
.end method
