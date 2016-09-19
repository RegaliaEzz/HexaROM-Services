.class Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;
.super Ljava/lang/Thread;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->writeBlacklist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 139
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;
    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$100(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v6

    monitor-enter v6

    .line 140
    :try_start_0
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "tmpValue":Ljava/lang/String;
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$200(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "CertBlacklister"

    const-string v7, "Certificate blacklist not changed, return..."

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    monitor-exit v6

    .line 174
    :goto_0
    return-void

    .line 147
    :cond_1
    if-eqz v4, :cond_4

    .line 148
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # setter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$202(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$000()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "CertBlacklister"

    const-string v7, "Certificate blacklist changed, updating..."

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_2
    const/4 v1, 0x0

    .line 153
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_1
    const-string/jumbo v5, "journal"

    const-string v7, ""

    iget-object v8, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;
    invoke-static {v8}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$100(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v8

    invoke-static {v5, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 155
    .local v3, "tmp":Ljava/io/File;
    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 157
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mBlacklist:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$200(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 160
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 162
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->access$300(Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 163
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->DBG:Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$000()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "CertBlacklister"

    const-string v7, "Certificate blacklist updated"

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 167
    :cond_3
    :try_start_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v2

    .line 170
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v3    # "tmp":Ljava/io/File;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :goto_1
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$400()Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 171
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlacklister;->mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlacklister;->access$400()Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;->onCertBlacklistChanged()V

    .line 173
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :cond_4
    monitor-exit v6

    goto :goto_0

    .end local v4    # "tmpValue":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 164
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "tmpValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v5, "CertBlacklister"

    const-string v7, "Failed to write list"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 167
    :try_start_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "tmp":Ljava/io/File;
    :catchall_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 164
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
