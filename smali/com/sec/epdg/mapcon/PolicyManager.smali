.class public Lcom/sec/epdg/mapcon/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[PolicyMgr]"

.field private static mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

.field private static mInstance:Lcom/sec/epdg/mapcon/PolicyManager;

.field private static mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance:Lcom/sec/epdg/mapcon/PolicyManager;

    .line 19
    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    .line 20
    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    .line 36
    invoke-static {}, Lcom/sec/epdg/mapcon/IfomTable;->getInstance()Lcom/sec/epdg/mapcon/IfomTable;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    .line 37
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/mapcon/PolicyManager;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/sec/epdg/mapcon/PolicyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance:Lcom/sec/epdg/mapcon/PolicyManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/sec/epdg/mapcon/PolicyManager;

    invoke-direct {v0}, Lcom/sec/epdg/mapcon/PolicyManager;-><init>()V

    sput-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance:Lcom/sec/epdg/mapcon/PolicyManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mInstance:Lcom/sec/epdg/mapcon/PolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized createPolicyTable(Landroid/content/Context;ZZ)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "mapcon"    # Z
    .param p3, "appPolicy"    # Z

    .prologue
    .line 121
    monitor-enter p0

    const/4 v0, 0x0

    .line 122
    .local v0, "result":Z
    if-eqz p2, :cond_0

    .line 123
    :try_start_0
    sget-object v2, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v2, p1}, Lcom/sec/epdg/mapcon/MapconTable;->createMapconTable(Landroid/content/Context;)Z

    move-result v0

    .line 124
    if-nez v0, :cond_0

    .line 125
    const-string v2, "[PolicyMgr]"

    const-string/jumbo v3, "error to create MAPCON table"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 135
    .end local v0    # "result":Z
    .local v1, "result":Z
    :goto_0
    monitor-exit p0

    return v1

    .line 129
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :cond_0
    if-eqz p3, :cond_1

    .line 130
    :try_start_1
    sget-object v2, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v2, p1}, Lcom/sec/epdg/mapcon/IfomTable;->createIfomTable(Landroid/content/Context;)Z

    move-result v0

    .line 131
    if-nez v0, :cond_1

    .line 132
    const-string v2, "[PolicyMgr]"

    const-string/jumbo v3, "error to create IFOM table"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v1, v0

    .line 135
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    goto :goto_0

    .line 121
    .end local v1    # "result":Z
    .restart local v0    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isL2WRecommended(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "rule"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "result":Z
    if-nez p1, :cond_1

    .line 82
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "isL2WRecommended(): null apnType"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isL2WRecommended(): result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return v0

    .line 83
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "isL2WRecommended(): EPDG not available"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "isL2WRecommended(): Airplane mode ON"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :cond_3
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2, p1}, Lcom/sec/epdg/mapcon/IfomTable;->checkIsRuleforApn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 90
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isL2WRecommended: LTE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") CS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") VoWIFI ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") call ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2}, Lcom/sec/epdg/mapcon/IfomTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isL2WRecommended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should go to WLAN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 98
    :cond_4
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2}, Lcom/sec/epdg/mapcon/IfomTable;->shouldMoveToWifiInNoLte(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 101
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isL2WRecommended: No LTE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should go to WLAN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 103
    :cond_5
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "isL2WRecommended: LTE (good) + VoLTE off + no CS + VoWIFI on"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 111
    :cond_6
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "rule"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "result":Z
    if-nez p1, :cond_1

    .line 42
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "isW2LRecommended(): null apnType"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isW2LRecommended(): result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return v0

    .line 43
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 44
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isW2LRecommended(): TELEPHONY in service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 47
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "isW2LRecommended(): EPDG not available"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :cond_3
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50
    const-string v1, "[PolicyMgr]"

    const-string/jumbo v2, "isW2LRecommended(): only LTE is allowed RAT"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :cond_4
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2, p1}, Lcom/sec/epdg/mapcon/IfomTable;->checkIsRuleforApn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 54
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isW2LRecommended(): LTE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") CS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") VoWIFI ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") call ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2}, Lcom/sec/epdg/mapcon/IfomTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v0

    .line 59
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    .line 60
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1, p2}, Lcom/sec/epdg/mapcon/IfomTable;->shouldLeaveFromWIFIInNoLte(Ljava/lang/String;)Z

    move-result v0

    .line 61
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isW2LRecommended: no LTE, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " goes to CS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :cond_5
    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVideoEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 66
    :cond_6
    const/4 v0, 0x0

    .line 67
    const-string v1, "[PolicyMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isW2LRecommended: LTE (good) + VoLTE off + VoWIFI on + cs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :cond_7
    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v1}, Lcom/sec/epdg/mapcon/MapconTable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v1}, Lcom/sec/epdg/mapcon/IfomTable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appType"    # Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .prologue
    .line 147
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/mapcon/IfomTable;->updateIfomTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 148
    return-void
.end method

.method public updateAppPolicy(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appTypeList"    # [Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .prologue
    .line 151
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mIfomTable:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/mapcon/IfomTable;->updateIfomTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 152
    return-void
.end method

.method public updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apntype"    # Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 139
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    .line 140
    return-void
.end method

.method public updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apntypeList"    # [Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 143
    sget-object v0, Lcom/sec/epdg/mapcon/PolicyManager;->mMapconTable:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    .line 144
    return-void
.end method
