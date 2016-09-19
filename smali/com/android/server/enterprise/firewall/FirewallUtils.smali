.class Lcom/android/server/enterprise/firewall/FirewallUtils;
.super Ljava/lang/Object;
.source "FirewallUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/FirewallUtils$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FirewallUtils"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    return-void
.end method

.method static convertAddressType(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$AddressType;
    .locals 1
    .param p0, "sAddressType"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV4:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV4:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    .line 124
    :goto_0
    return-object v0

    .line 121
    :cond_0
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    goto :goto_0

    .line 124
    :cond_1
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV4:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    goto :goto_0
.end method

.method static convertDirection(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Direction;
    .locals 1
    .param p0, "sDirection"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Direction;->INPUT:Lcom/sec/enterprise/firewall/Firewall$Direction;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Direction;->INPUT:Lcom/sec/enterprise/firewall/Firewall$Direction;

    .line 47
    :goto_0
    return-object v0

    .line 44
    :cond_0
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Direction;->OUTPUT:Lcom/sec/enterprise/firewall/Firewall$Direction;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Direction;->OUTPUT:Lcom/sec/enterprise/firewall/Firewall$Direction;

    goto :goto_0

    .line 47
    :cond_1
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Direction;->ALL:Lcom/sec/enterprise/firewall/Firewall$Direction;

    goto :goto_0
.end method

.method static convertNetworkInterface(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;
    .locals 1
    .param p0, "sNetworkInterface"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    .line 63
    :goto_0
    return-object v0

    .line 60
    :cond_0
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    goto :goto_0
.end method

.method static convertPortLocation(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$PortLocation;
    .locals 1
    .param p0, "sPortLocation"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->LOCAL:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->LOCAL:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    .line 79
    :goto_0
    return-object v0

    .line 76
    :cond_0
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->REMOTE:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->REMOTE:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->ALL:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    goto :goto_0
.end method

.method static convertProtocol(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Protocol;
    .locals 1
    .param p0, "sProtocol"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;->TCP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;->TCP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    .line 94
    :goto_0
    return-object v0

    .line 91
    :cond_0
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;->UDP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;->UDP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    goto :goto_0

    .line 94
    :cond_1
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;->ALL:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    goto :goto_0
.end method

.method static convertStatus(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule$Status;
    .locals 1
    .param p0, "sStatus"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;->ENABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;->ENABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    .line 109
    :goto_0
    return-object v0

    .line 106
    :cond_0
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;->PENDING:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;->PENDING:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    goto :goto_0

    .line 109
    :cond_1
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;->DISABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    goto :goto_0
.end method

.method static filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "userId"    # I
    .param p1, "rules"    # Ljava/lang/String;

    .prologue
    .line 388
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .local v9, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 390
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 431
    :goto_0
    return-object v12

    .line 391
    :cond_0
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v12, "\n"

    invoke-direct {v10, p1, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .local v10, "stringTokenizer":Ljava/util/StringTokenizer;
    const-string/jumbo v7, "owner UID match"

    .line 393
    .local v7, "ownerKey":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 394
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "currentLine":Ljava/lang/String;
    const-string/jumbo v12, "owner UID match"

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 396
    .local v6, "ownerIdIndex":I
    const/4 v11, 0x0

    .line 397
    .local v11, "uidMatched":Z
    const/4 v12, -0x1

    if-ne v6, v12, :cond_3

    .line 398
    const/4 v11, 0x1

    .line 426
    :cond_2
    :goto_2
    if-eqz v11, :cond_1

    .line 427
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 400
    :cond_3
    const-string/jumbo v12, "owner UID match"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "ownerId":Ljava/lang/String;
    :try_start_0
    const-string v12, "-"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 403
    const-string v12, "-"

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, "range":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 405
    .local v0, "begin":I
    move v4, v0

    .line 406
    .local v4, "end":I
    const/4 v12, 0x1

    aget-object v12, v8, v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 407
    .local v2, "delimIndex":I
    const/4 v12, -0x1

    if-gt v2, v12, :cond_4

    .line 409
    const/4 v12, 0x1

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 415
    :goto_3
    if-lt p0, v0, :cond_2

    if-gt p0, v4, :cond_2

    .line 416
    const/4 v11, 0x1

    goto :goto_2

    .line 412
    :cond_4
    const/4 v12, 0x1

    aget-object v12, v8, v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    goto :goto_3

    .line 418
    .end local v0    # "begin":I
    .end local v2    # "delimIndex":I
    .end local v4    # "end":I
    .end local v8    # "range":[Ljava/lang/String;
    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-ne p0, v12, :cond_2

    .line 419
    const/4 v11, 0x1

    goto :goto_2

    .line 421
    :catch_0
    move-exception v3

    .line 422
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 431
    .end local v1    # "currentLine":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "ownerId":Ljava/lang/String;
    .end local v6    # "ownerIdIndex":I
    .end local v11    # "uidMatched":Z
    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0
.end method

.method static getContentValuesFromRule(Lcom/sec/enterprise/firewall/FirewallRule;I)Landroid/content/ContentValues;
    .locals 3
    .param p0, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p1, "uid"    # I

    .prologue
    .line 135
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v0, "cv":Landroid/content/ContentValues;
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_0

    .line 137
    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string/jumbo v1, "status"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getStatus()Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallUtils$1;->$SwitchMap$com$sec$enterprise$firewall$FirewallRule$RuleType:[I

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 199
    :goto_0
    return-object v0

    .line 143
    :pswitch_0
    const-string/jumbo v1, "ruleType"

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v1, "ipAddress"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v1, "portNumber"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v1, "portLocation"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v1, "packageName"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 149
    const-string/jumbo v1, "signature"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    const-string/jumbo v1, "networkInterface"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v1, "direction"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v1, "protocol"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "addressType"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :pswitch_1
    const-string/jumbo v1, "ruleType"

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v1, "ipAddress"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v1, "portNumber"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v1, "portLocation"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v1, "packageName"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 163
    const-string/jumbo v1, "signature"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_2
    const-string/jumbo v1, "networkInterface"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v1, "direction"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v1, "protocol"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "addressType"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :pswitch_2
    const-string/jumbo v1, "ruleType"

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v1, "ipAddress"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v1, "portNumber"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v1, "packageName"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 176
    const-string/jumbo v1, "signature"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_3
    const-string/jumbo v1, "networkInterface"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v1, "protocol"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "addressType"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string/jumbo v1, "targetIpAddress"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v1, "targetPortNumber"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :pswitch_3
    const-string/jumbo v1, "ruleType"

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v1, "ipAddress"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v1, "portNumber"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string/jumbo v1, "packageName"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 190
    const-string/jumbo v1, "signature"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_4
    const-string/jumbo v1, "networkInterface"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string/jumbo v1, "protocol"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "addressType"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static getRuleFromContentValues(Ljava/util/List;Lcom/sec/enterprise/firewall/FirewallRule$RuleType;)[Lcom/sec/enterprise/firewall/FirewallRule;
    .locals 8
    .param p1, "type"    # Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/sec/enterprise/firewall/FirewallRule$RuleType;",
            ")[",
            "Lcom/sec/enterprise/firewall/FirewallRule;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [Lcom/sec/enterprise/firewall/FirewallRule;

    .line 206
    .local v4, "returnRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v1, 0x0

    .line 207
    .local v1, "counter":I
    sget-object v6, Lcom/android/server/enterprise/firewall/FirewallUtils$1;->$SwitchMap$com$sec$enterprise$firewall$FirewallRule$RuleType:[I

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 308
    :cond_0
    return-object v4

    .line 210
    :pswitch_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 211
    .local v2, "cv":Landroid/content/ContentValues;
    new-instance v5, Lcom/sec/enterprise/firewall/FirewallRule;

    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    const-string v7, "addressType"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertAddressType(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sec/enterprise/firewall/FirewallRule;-><init>(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Lcom/sec/enterprise/firewall/Firewall$AddressType;)V

    .line 214
    .local v5, "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    const-string/jumbo v6, "ipAddress"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 215
    const-string/jumbo v6, "portNumber"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v6, "portLocation"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertPortLocation(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortLocation(Lcom/sec/enterprise/firewall/Firewall$PortLocation;)V

    .line 218
    new-instance v0, Lcom/sec/enterprise/AppIdentity;

    const-string/jumbo v6, "packageName"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "signature"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .local v0, "appIdentity":Lcom/sec/enterprise/AppIdentity;
    invoke-virtual {v5, v0}, Lcom/sec/enterprise/firewall/FirewallRule;->setApplication(Lcom/sec/enterprise/AppIdentity;)V

    .line 222
    const-string/jumbo v6, "networkInterface"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertNetworkInterface(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setNetworkInterface(Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;)V

    .line 224
    const-string/jumbo v6, "direction"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertDirection(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setDirection(Lcom/sec/enterprise/firewall/Firewall$Direction;)V

    .line 226
    const-string/jumbo v6, "protocol"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertProtocol(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setProtocol(Lcom/sec/enterprise/firewall/Firewall$Protocol;)V

    .line 228
    const-string/jumbo v6, "status"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertStatus(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setStatus(Lcom/sec/enterprise/firewall/FirewallRule$Status;)V

    .line 230
    const-string/jumbo v6, "id"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setId(I)V

    .line 231
    aput-object v5, v4, v1

    .line 232
    add-int/lit8 v1, v1, 0x1

    .line 233
    goto/16 :goto_0

    .line 236
    .end local v0    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :pswitch_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 237
    .restart local v2    # "cv":Landroid/content/ContentValues;
    new-instance v5, Lcom/sec/enterprise/firewall/FirewallRule;

    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    const-string v7, "addressType"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertAddressType(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sec/enterprise/firewall/FirewallRule;-><init>(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Lcom/sec/enterprise/firewall/Firewall$AddressType;)V

    .line 240
    .restart local v5    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    const-string/jumbo v6, "ipAddress"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 241
    const-string/jumbo v6, "portNumber"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 242
    const-string/jumbo v6, "portLocation"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertPortLocation(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortLocation(Lcom/sec/enterprise/firewall/Firewall$PortLocation;)V

    .line 244
    new-instance v0, Lcom/sec/enterprise/AppIdentity;

    const-string/jumbo v6, "packageName"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "signature"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .restart local v0    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    invoke-virtual {v5, v0}, Lcom/sec/enterprise/firewall/FirewallRule;->setApplication(Lcom/sec/enterprise/AppIdentity;)V

    .line 248
    const-string/jumbo v6, "networkInterface"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertNetworkInterface(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setNetworkInterface(Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;)V

    .line 250
    const-string/jumbo v6, "direction"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertDirection(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setDirection(Lcom/sec/enterprise/firewall/Firewall$Direction;)V

    .line 252
    const-string/jumbo v6, "protocol"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertProtocol(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setProtocol(Lcom/sec/enterprise/firewall/Firewall$Protocol;)V

    .line 254
    const-string/jumbo v6, "status"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertStatus(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setStatus(Lcom/sec/enterprise/firewall/FirewallRule$Status;)V

    .line 256
    const-string/jumbo v6, "id"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setId(I)V

    .line 257
    aput-object v5, v4, v1

    .line 258
    add-int/lit8 v1, v1, 0x1

    .line 259
    goto/16 :goto_1

    .line 262
    .end local v0    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :pswitch_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 263
    .restart local v2    # "cv":Landroid/content/ContentValues;
    new-instance v5, Lcom/sec/enterprise/firewall/FirewallRule;

    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    const-string v7, "addressType"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertAddressType(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sec/enterprise/firewall/FirewallRule;-><init>(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Lcom/sec/enterprise/firewall/Firewall$AddressType;)V

    .line 266
    .restart local v5    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    const-string/jumbo v6, "ipAddress"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 267
    const-string/jumbo v6, "portNumber"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v6, "targetIpAddress"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setTargetIpAddress(Ljava/lang/String;)V

    .line 269
    const-string/jumbo v6, "targetPortNumber"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setTargetPortNumber(Ljava/lang/String;)V

    .line 270
    new-instance v0, Lcom/sec/enterprise/AppIdentity;

    const-string/jumbo v6, "packageName"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "signature"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .restart local v0    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    invoke-virtual {v5, v0}, Lcom/sec/enterprise/firewall/FirewallRule;->setApplication(Lcom/sec/enterprise/AppIdentity;)V

    .line 274
    const-string/jumbo v6, "networkInterface"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertNetworkInterface(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setNetworkInterface(Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;)V

    .line 276
    const-string/jumbo v6, "protocol"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertProtocol(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setProtocol(Lcom/sec/enterprise/firewall/Firewall$Protocol;)V

    .line 278
    const-string/jumbo v6, "status"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertStatus(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setStatus(Lcom/sec/enterprise/firewall/FirewallRule$Status;)V

    .line 280
    const-string/jumbo v6, "id"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setId(I)V

    .line 281
    aput-object v5, v4, v1

    .line 282
    add-int/lit8 v1, v1, 0x1

    .line 283
    goto/16 :goto_2

    .line 286
    .end local v0    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :pswitch_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 287
    .restart local v2    # "cv":Landroid/content/ContentValues;
    new-instance v5, Lcom/sec/enterprise/firewall/FirewallRule;

    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    const-string v7, "addressType"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertAddressType(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sec/enterprise/firewall/FirewallRule;-><init>(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Lcom/sec/enterprise/firewall/Firewall$AddressType;)V

    .line 290
    .restart local v5    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    const-string/jumbo v6, "ipAddress"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 291
    const-string/jumbo v6, "portNumber"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 292
    new-instance v0, Lcom/sec/enterprise/AppIdentity;

    const-string/jumbo v6, "packageName"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "signature"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .restart local v0    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    invoke-virtual {v5, v0}, Lcom/sec/enterprise/firewall/FirewallRule;->setApplication(Lcom/sec/enterprise/AppIdentity;)V

    .line 296
    const-string/jumbo v6, "networkInterface"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertNetworkInterface(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setNetworkInterface(Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;)V

    .line 298
    const-string/jumbo v6, "protocol"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertProtocol(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setProtocol(Lcom/sec/enterprise/firewall/Firewall$Protocol;)V

    .line 300
    const-string/jumbo v6, "status"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertStatus(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setStatus(Lcom/sec/enterprise/firewall/FirewallRule$Status;)V

    .line 302
    const-string/jumbo v6, "id"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setId(I)V

    .line 303
    aput-object v5, v4, v1

    .line 304
    add-int/lit8 v1, v1, 0x1

    .line 305
    goto/16 :goto_3

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static isRuleEnabled(Lcom/sec/enterprise/firewall/FirewallRule;ILandroid/content/Context;)Z
    .locals 8
    .param p0, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 319
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 321
    .local v3, "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v6, "status"

    aput-object v6, v0, v4

    .line 325
    .local v0, "columnSelection":[Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getContentValuesFromRule(Lcom/sec/enterprise/firewall/FirewallRule;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 327
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "status"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 329
    const-string v6, "FirewallRule"

    invoke-virtual {v3, v6, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 331
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v4

    .line 335
    :cond_1
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v7, "status"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "dbRet":Ljava/lang/String;
    const/4 v4, 0x0

    .line 338
    .local v4, "ret":Z
    if-eqz v2, :cond_0

    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$Status;->ENABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-virtual {v6}, Lcom/sec/enterprise/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 339
    const/4 v4, 0x1

    goto :goto_0
.end method

.method static isRuleInDb(Lcom/sec/enterprise/firewall/FirewallRule;ILandroid/content/Context;)Z
    .locals 4
    .param p0, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 353
    .local v1, "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getContentValuesFromRule(Lcom/sec/enterprise/firewall/FirewallRule;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 354
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 355
    const-string v2, "FirewallRule"

    sget-object v3, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    const/4 v2, 0x1

    .line 359
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static validateDomain(Ljava/lang/String;)Z
    .locals 15
    .param p0, "domainUrl"    # Ljava/lang/String;

    .prologue
    .line 440
    move-object v2, p0

    .line 444
    .local v2, "domain":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 445
    const/4 v13, 0x0

    .line 553
    :goto_0
    return v13

    .line 449
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 451
    const-string/jumbo v13, "http:"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string/jumbo v13, "https:"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 452
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xff

    if-le v13, v14, :cond_3

    .line 459
    const/4 v13, 0x0

    goto :goto_0

    .line 462
    :cond_3
    const-string v13, "*"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 463
    const/4 v13, 0x1

    goto :goto_0

    .line 466
    :cond_4
    const/4 v12, 0x0

    .local v12, "startsWithWildcard":Z
    const/4 v3, 0x0

    .line 467
    .local v3, "endsWithWildcard":Z
    const-string v13, "*"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 470
    const-string v13, "*."

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 471
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 475
    :goto_1
    const/4 v12, 0x1

    .line 478
    :cond_5
    const-string v13, "*"

    invoke-virtual {v2, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 481
    const-string v13, ".*"

    invoke-virtual {v2, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 482
    const/4 v13, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 486
    :goto_2
    const/4 v3, 0x1

    .line 492
    :cond_6
    const-string v13, "\\."

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 497
    .local v8, "labels":[Ljava/lang/String;
    if-nez v12, :cond_d

    .line 502
    const/4 v6, 0x0

    .line 503
    .local v6, "isDomainCandidate":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_9

    .line 504
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 505
    .local v1, "ch":C
    const/16 v13, 0x61

    if-lt v1, v13, :cond_7

    const/16 v13, 0x7a

    if-le v1, v13, :cond_8

    :cond_7
    const/16 v13, 0x41

    if-lt v1, v13, :cond_c

    const/16 v13, 0x5a

    if-gt v1, v13, :cond_c

    .line 506
    :cond_8
    const/4 v6, 0x1

    .line 514
    .end local v1    # "ch":C
    :cond_9
    if-nez v6, :cond_d

    .line 515
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 473
    .end local v4    # "i":I
    .end local v6    # "isDomainCandidate":Z
    .end local v8    # "labels":[Ljava/lang/String;
    :cond_a
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 484
    :cond_b
    const/4 v13, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 503
    .restart local v1    # "ch":C
    .restart local v4    # "i":I
    .restart local v6    # "isDomainCandidate":Z
    .restart local v8    # "labels":[Ljava/lang/String;
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 519
    .end local v1    # "ch":C
    .end local v4    # "i":I
    .end local v6    # "isDomainCandidate":Z
    :cond_d
    const/4 v10, 0x0

    .line 520
    .local v10, "numDots":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_f

    .line 521
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-ne v13, v14, :cond_e

    .line 522
    add-int/lit8 v10, v10, 0x1

    .line 520
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 528
    :cond_f
    array-length v13, v8

    if-lt v10, v13, :cond_10

    .line 529
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 534
    :cond_10
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_5
    if-ge v5, v9, :cond_12

    aget-object v7, v0, v5

    .line 535
    .local v7, "label":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x3f

    if-le v13, v14, :cond_11

    .line 536
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 534
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 546
    .end local v7    # "label":Ljava/lang/String;
    :cond_12
    const-string v11, "^[A-Za-z0-9-]+$"

    .line 547
    .local v11, "regex":Ljava/lang/String;
    move-object v0, v8

    array-length v9, v0

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v9, :cond_16

    aget-object v7, v0, v5

    .line 548
    .restart local v7    # "label":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_13

    if-eqz v12, :cond_14

    :cond_13
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_15

    if-nez v3, :cond_15

    .line 550
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 547
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 553
    .end local v7    # "label":Ljava/lang/String;
    :cond_16
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method static verifyPackageName(Ljava/lang/String;I)Z
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 369
    const-string v7, "*"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v3

    .line 372
    :cond_1
    const-string/jumbo v7, "package"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 374
    .local v2, "iPackageManager":Landroid/content/pm/IPackageManager;
    const/4 v0, 0x0

    .line 375
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 377
    .local v4, "token":J
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v2, p0, v7, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 382
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    if-nez v0, :cond_0

    move v3, v6

    goto :goto_0

    .line 378
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "FirewallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remote Exception on get getApplicationInfo"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v6

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
