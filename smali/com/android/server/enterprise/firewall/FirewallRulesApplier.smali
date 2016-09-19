.class Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
.super Ljava/lang/Object;
.source "FirewallRulesApplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;
    }
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = " --wait ; "


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

.field private mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/Firewall;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "firewallService"    # Lcom/android/server/enterprise/firewall/Firewall;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    .line 49
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    .line 50
    return-void
.end method

.method static createIptablesChains()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 498
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 499
    .local v1, "cmdRunner":Ljava/lang/Runtime;
    invoke-static {}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getCreateChainsCommands()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 500
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 499
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 502
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private disableIpTablesRule(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 1
    .param p1, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p2, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v0

    return-object v0
.end method

.method private enableIptablesRule(Lcom/sec/enterprise/firewall/FirewallRule;ZLandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 1
    .param p1, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p2, "forceEnable"    # Z
    .param p3, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableIptablesRule(Lcom/sec/enterprise/firewall/FirewallRule;ZLandroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v0

    return-object v0
.end method

.method private runShellCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 222
    const/4 v4, 0x0

    .line 224
    .local v4, "process":Ljava/lang/Process;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v1, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "/system/bin/sh"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v6, "-c"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v6, Ljava/lang/ProcessBuilder;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 230
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 232
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v5, "response":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "lineRead":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 238
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 247
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "lineRead":Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 248
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v6, "IOException was thrown."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    if-eqz v4, :cond_0

    .line 252
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 253
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 254
    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 255
    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 257
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-object v6

    .line 243
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "lineRead":Ljava/lang/String;
    .restart local v5    # "response":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 244
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 250
    if-eqz v4, :cond_0

    .line 252
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 253
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 254
    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 255
    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_1

    .line 256
    :catch_1
    move-exception v2

    .line 257
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const-string v6, "IOException was thrown."

    goto :goto_1

    .line 256
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "lineRead":Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/StringBuilder;
    .local v2, "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 257
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    const-string v6, "IOException was thrown."

    goto :goto_1

    .line 250
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_3

    .line 252
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 253
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 254
    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 255
    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 257
    :cond_3
    throw v6

    .line 256
    :catch_3
    move-exception v2

    .line 257
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_4
    const-string v6, "IOException was thrown."

    goto :goto_1

    .line 256
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    goto :goto_4

    .local v2, "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    goto :goto_3

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "lineRead":Ljava/lang/String;
    .restart local v5    # "response":Ljava/lang/StringBuilder;
    :catch_6
    move-exception v2

    goto :goto_2
.end method

.method private updateStatusOnDB(Lcom/sec/enterprise/firewall/FirewallRule;Lcom/sec/enterprise/firewall/FirewallRule$Status;Landroid/app/enterprise/ContextInfo;)V
    .locals 4
    .param p1, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p2, "status"    # Lcom/sec/enterprise/firewall/FirewallRule$Status;
    .param p3, "mCxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 265
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 266
    .local v0, "filterValues":Landroid/content/ContentValues;
    iget v2, p3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 267
    const-string v2, "adminUid"

    iget v3, p3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 272
    .local v1, "newValue":Landroid/content/ContentValues;
    const-string/jumbo v2, "status"

    invoke-virtual {p2}, Lcom/sec/enterprise/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v2, "ruleType"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$1;->$SwitchMap$com$sec$enterprise$firewall$FirewallRule$RuleType:[I

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 365
    :goto_0
    return-void

    .line 281
    :pswitch_0
    const-string/jumbo v2, "ipAddress"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string/jumbo v2, "packageName"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 285
    const-string/jumbo v2, "signature"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_1
    const-string/jumbo v2, "portNumber"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v2, "portLocation"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v2, "direction"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string/jumbo v2, "networkInterface"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v2, "protocol"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v2, "addressType"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v3, "FirewallRule"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    goto/16 :goto_0

    .line 301
    :pswitch_1
    const-string/jumbo v2, "ipAddress"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v2, "packageName"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 305
    const-string/jumbo v2, "signature"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_2
    const-string/jumbo v2, "portNumber"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v2, "portLocation"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string/jumbo v2, "direction"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string/jumbo v2, "networkInterface"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string/jumbo v2, "protocol"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v2, "addressType"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v3, "FirewallRule"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    goto/16 :goto_0

    .line 322
    :pswitch_2
    const-string/jumbo v2, "packageName"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 325
    const-string/jumbo v2, "signature"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_3
    const-string/jumbo v2, "ipAddress"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string/jumbo v2, "portNumber"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string/jumbo v2, "targetIpAddress"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string/jumbo v2, "targetPortNumber"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string/jumbo v2, "networkInterface"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string/jumbo v2, "protocol"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v2, "addressType"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v3, "FirewallRule"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    goto/16 :goto_0

    .line 346
    :pswitch_3
    const-string/jumbo v2, "ipAddress"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v2, "packageName"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 350
    const-string/jumbo v2, "signature"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_4
    const-string/jumbo v2, "portNumber"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v2, "protocol"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v2, "addressType"

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v3, "FirewallRule"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    goto/16 :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method changeRuleStatus([Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 8
    .param p1, "rules"    # [Lcom/sec/enterprise/firewall/FirewallRule;
    .param p2, "mCxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "status"    # Z

    .prologue
    .line 53
    if-nez p1, :cond_1

    .line 54
    const/4 v3, 0x0

    .line 77
    :cond_0
    :goto_0
    return-object v3

    .line 56
    :cond_1
    array-length v7, p1

    new-array v3, v7, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 57
    .local v3, "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    array-length v7, p1

    if-lez v7, :cond_0

    .line 58
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v4, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/firewall/FirewallResponse;>;"
    move-object v0, p1

    .local v0, "arr$":[Lcom/sec/enterprise/firewall/FirewallRule;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 65
    .local v5, "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    if-eqz v5, :cond_2

    .line 66
    if-eqz p3, :cond_3

    .line 67
    const/4 v7, 0x0

    invoke-direct {p0, v5, v7, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableIptablesRule(Lcom/sec/enterprise/firewall/FirewallRule;ZLandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 69
    :cond_3
    invoke-direct {p0, v5, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 73
    .end local v5    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_4
    array-length v7, p1

    new-array v6, v7, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 74
    .local v6, "rulesResponses":[Lcom/sec/enterprise/firewall/FirewallResponse;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    check-cast v3, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .restart local v3    # "response":[Lcom/sec/enterprise/firewall/FirewallResponse;
    goto :goto_0
.end method

.method deleteRulesFromAdmin(Landroid/app/enterprise/ContextInfo;)V
    .locals 5
    .param p1, "mCxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x0

    .line 397
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-virtual {v1, p1, v3}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewall(Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 398
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-virtual {v1, p1, v4}, Lcom/android/server/enterprise/firewall/Firewall;->clearRules(Landroid/app/enterprise/ContextInfo;I)[Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 400
    const/4 v0, 0x0

    .line 402
    .local v0, "rulesToDisable":[Lcom/sec/enterprise/firewall/FirewallRule;
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v4, v2}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    .line 403
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->changeRuleStatus([Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)[Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 404
    return-void
.end method

.method disableIpTablesRule(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 9
    .param p1, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p2, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "isAdminRule"    # Z

    .prologue
    .line 186
    invoke-static {p1}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v5

    .line 188
    .local v5, "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    invoke-virtual {v5}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v6

    sget-object v7, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v6, v7}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 210
    .end local v5    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :goto_0
    return-object v5

    .line 194
    .restart local v5    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getRemoveIptablesCommand(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "commands":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v4, "response":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v1, "commandString":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_1

    .line 199
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_1

    .line 200
    aget-object v6, v2, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v6, " --wait ; "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 204
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "commandResponde":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    if-eqz p3, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 208
    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$Status;->DISABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-direct {p0, p1, v6, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/sec/enterprise/firewall/FirewallRule;Lcom/sec/enterprise/firewall/FirewallRule$Status;Landroid/app/enterprise/ContextInfo;)V

    .line 210
    :cond_2
    new-instance v5, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v5    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v6, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v8, "The rule was successfully disabled."

    invoke-direct {v5, v6, v7, v8}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method

.method enableIptablesRule(Lcom/sec/enterprise/firewall/FirewallRule;ZLandroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 14
    .param p1, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p2, "forceEnable"    # Z
    .param p3, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p4, "isAdminRule"    # Z

    .prologue
    .line 95
    move-object/from16 v0, p3

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 100
    .local v8, "uid":I
    invoke-static {p1}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/sec/enterprise/firewall/FirewallRule;)Lcom/sec/enterprise/firewall/FirewallResponse;

    move-result-object v9

    .line 102
    .local v9, "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    invoke-virtual {v9}, Lcom/sec/enterprise/firewall/FirewallResponse;->getResult()Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    move-result-object v10

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    invoke-virtual {v10, v11}, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 164
    .end local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :goto_0
    return-object v9

    .line 108
    .restart local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_0
    if-nez p2, :cond_1

    if-eqz p4, :cond_1

    .line 109
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    invoke-static {p1, v8, v10}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isRuleEnabled(Lcom/sec/enterprise/firewall/FirewallRule;ILandroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x3e8

    if-eq v8, v10, :cond_1

    .line 111
    new-instance v9, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v12, "The specified rule is already enabled."

    invoke-direct {v9, v10, v11, v12}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .restart local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_1
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v1

    .line 119
    .local v1, "addressType":Lcom/sec/enterprise/firewall/Firewall$AddressType;
    sget-object v10, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-virtual {v10, v1}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 120
    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v7

    .line 121
    .local v7, "type":Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v10, v7}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v10, v7}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    sget-boolean v10, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    if-nez v10, :cond_3

    .line 123
    new-instance v9, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v12, "This device does not have IPv6 support for this type of rule."

    invoke-direct {v9, v10, v11, v12}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .restart local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_3
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v10, v7}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v10, v7}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    sget-boolean v10, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6NatSupport:Z

    if-nez v10, :cond_5

    .line 128
    new-instance v9, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v12, "This device does not have IPv6 support for this type of rule."

    invoke-direct {v9, v10, v11, v12}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v7    # "type":Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    .restart local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_5
    move-object/from16 v0, p3

    invoke-static {p1, v0}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getIptablesCommand(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "commands":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v6, "response":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v3, "commandString":Ljava/lang/StringBuilder;
    if-eqz v4, :cond_6

    .line 139
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v10, v4

    if-ge v5, v10, :cond_6

    .line 140
    aget-object v10, v4, v5

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v10, " --wait ; "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 144
    .end local v5    # "i":I
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "commandResponde":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    if-eqz p4, :cond_8

    .line 150
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 151
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$Status;->ENABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v10, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/sec/enterprise/firewall/FirewallRule;Lcom/sec/enterprise/firewall/FirewallRule$Status;Landroid/app/enterprise/ContextInfo;)V

    .line 152
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$Status;->ENABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-virtual {p1, v10}, Lcom/sec/enterprise/firewall/FirewallRule;->setStatus(Lcom/sec/enterprise/firewall/FirewallRule$Status;)V

    .line 153
    new-instance v9, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v12, "The rule was successfully enabled."

    invoke-direct {v9, v10, v11, v12}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    .restart local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_7
    move-object/from16 v0, p3

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 160
    new-instance v9, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to enable rule.\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    .restart local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_8
    new-instance v9, Lcom/sec/enterprise/firewall/FirewallResponse;

    .end local v9    # "validatorResponse":Lcom/sec/enterprise/firewall/FirewallResponse;
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v11, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v12, "The rule was successfully enabled."

    invoke-direct {v9, v10, v11, v12}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method getAllAdmins()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v0, "allAdmins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    .line 386
    .local v1, "columns":[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "adminUid"

    aput-object v6, v1, v5

    .line 387
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    const-string v6, "ADMIN"

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 389
    .local v4, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 390
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "adminUid"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-object v0
.end method

.method hasIpv6Support(Ljava/lang/String;)Z
    .locals 7
    .param p1, "chain"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 510
    const-string v6, "16"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 512
    .local v4, "mdm_config_version":I
    const/16 v6, 0x10

    if-ge v4, v6, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v5

    .line 515
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getTestIpv6Commands(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "commands":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .local v1, "commandString":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_2

    .line 518
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_2

    .line 519
    aget-object v6, v2, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string v6, " --wait ; "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 523
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "commandResponse":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 525
    const/4 v5, 0x1

    goto :goto_0
.end method

.method listIptablesRules(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 430
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 431
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 433
    .local v4, "userId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "************ FILTER TABLE ************"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    const-string/jumbo v5, "filter"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, "stringReturned":Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    const-string v5, "************ NAT TABLE ************"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    const-string/jumbo v5, "nat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    const-string v5, "************ MANGLE TABLE ************"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    const-string/jumbo v5, "mangle"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    const-string v5, "************ RAW TABLE ************"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    const-string/jumbo v5, "raw"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    sget-boolean v5, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    if-eqz v5, :cond_0

    .line 456
    const-string v5, "=============== IPV6 RULES ==============="

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    const-string v5, "************ FILTER TABLE ************"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    const-string/jumbo v5, "filter"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 460
    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_0
    sget-boolean v5, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6NatSupport:Z

    if-eqz v5, :cond_1

    .line 463
    const-string v5, "************ NAT TABLE ************"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    const-string/jumbo v5, "nat"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    const-string v5, "************ MANGLE TABLE ************"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    const-string/jumbo v5, "mangle"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 471
    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    const-string v5, "************ RAW TABLE ************"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    const-string/jumbo v5, "raw"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 479
    .local v1, "returnArray":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "returnArray":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 480
    .restart local v1    # "returnArray":[Ljava/lang/String;
    return-object v1
.end method

.method reloadIptablesRules()V
    .locals 12

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    move-result-object v0

    .line 369
    .local v0, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 370
    .local v1, "adminUid":I
    const/16 v9, 0x3e8

    if-eq v1, v9, :cond_0

    .line 371
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 372
    .local v3, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/16 v10, 0xf

    const/4 v11, 0x0

    invoke-virtual {v9, v3, v10, v11}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v8

    .line 373
    .local v8, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    move-object v2, v8

    .local v2, "arr$":[Lcom/sec/enterprise/firewall/FirewallRule;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v7, v2, v5

    .line 374
    .local v7, "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    invoke-virtual {v7}, Lcom/sec/enterprise/firewall/FirewallRule;->getStatus()Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-result-object v9

    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$Status;->DISABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-virtual {v9, v10}, Lcom/sec/enterprise/firewall/FirewallRule$Status;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 375
    const/4 v9, 0x1

    invoke-direct {p0, v7, v9, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableIptablesRule(Lcom/sec/enterprise/firewall/FirewallRule;ZLandroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 373
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 380
    .end local v1    # "adminUid":I
    .end local v2    # "arr$":[Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v3    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v8    # "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_2
    return-void
.end method

.method setRulesStatusAfterReboot()V
    .locals 13

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    move-result-object v0

    .line 409
    .local v0, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 410
    .local v1, "adminUid":I
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 411
    .local v3, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v6, 0x0

    .line 412
    .local v6, "isFrwEnabled":Z
    const/4 v9, 0x0

    .line 414
    .local v9, "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    .line 415
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    const/16 v11, 0xf

    const/4 v12, 0x0

    invoke-virtual {v10, v3, v11, v12}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)[Lcom/sec/enterprise/firewall/FirewallRule;

    move-result-object v9

    .line 417
    if-eqz v9, :cond_0

    .line 418
    move-object v2, v9

    .local v2, "arr$":[Lcom/sec/enterprise/firewall/FirewallRule;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v8, v2, v5

    .line 419
    .local v8, "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    if-eqz v6, :cond_1

    .line 420
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$Status;->PENDING:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-direct {p0, v8, v10, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/sec/enterprise/firewall/FirewallRule;Lcom/sec/enterprise/firewall/FirewallRule$Status;Landroid/app/enterprise/ContextInfo;)V

    .line 418
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 422
    :cond_1
    sget-object v10, Lcom/sec/enterprise/firewall/FirewallRule$Status;->DISABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-direct {p0, v8, v10, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/sec/enterprise/firewall/FirewallRule;Lcom/sec/enterprise/firewall/FirewallRule$Status;Landroid/app/enterprise/ContextInfo;)V

    goto :goto_1

    .line 427
    .end local v1    # "adminUid":I
    .end local v2    # "arr$":[Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v3    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v5    # "i$":I
    .end local v6    # "isFrwEnabled":Z
    .end local v7    # "len$":I
    .end local v8    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    .end local v9    # "rules":[Lcom/sec/enterprise/firewall/FirewallRule;
    :cond_2
    return-void
.end method
