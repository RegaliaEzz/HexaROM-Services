.class public Lcom/android/server/spay/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.android.server.spay.Utils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static readFile(Ljava/lang/String;)[B
    .locals 10
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v3, 0x0

    .line 20
    .local v3, "fileContent":[B
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 22
    .local v4, "fin":Ljava/io/FileInputStream;
    const/4 v0, -0x1

    .line 23
    .local v0, "count":I
    const-string v6, "com.android.server.spay.Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In readFile - Path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .local v5, "fin":Ljava/io/FileInputStream;
    :try_start_1
    const-string v6, "com.android.server.spay.Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File Read - Length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v3, v6, [B

    .line 30
    invoke-virtual {v5, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    array-length v6, v3

    if-eq v0, v6, :cond_0

    .line 31
    const-string v6, "com.android.server.spay.Utils"

    const-string v7, "File Read Failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    const/4 v3, 0x0

    .line 38
    :cond_0
    if-eqz v5, :cond_1

    .line 39
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v4, v5

    .line 46
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    return-object v3

    .line 41
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "com.android.server.spay.Utils"

    const-string v7, "Error closing InputStream"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 44
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_0

    .line 34
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    if-eqz v4, :cond_2

    .line 39
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 41
    :catch_2
    move-exception v1

    .line 42
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "com.android.server.spay.Utils"

    const-string v7, "Error closing InputStream"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 38
    :goto_2
    if-eqz v4, :cond_3

    .line 39
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 43
    :cond_3
    :goto_3
    throw v6

    .line 41
    :catch_3
    move-exception v1

    .line 42
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "com.android.server.spay.Utils"

    const-string v8, "Error closing InputStream"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 37
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .line 34
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static writeFile([BLjava/lang/String;)Z
    .locals 8
    .param p0, "fileContent"    # [B
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v4, 0x0

    .line 52
    .local v4, "ret":Z
    const/4 v2, 0x0

    .line 53
    .local v2, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .local v3, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v5, "com.android.server.spay.Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File Write - Length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    const/4 v4, 0x1

    .line 64
    if-eqz v3, :cond_0

    .line 65
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 71
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return v4

    .line 67
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "com.android.server.spay.Utils"

    const-string v6, "Error closing OutputStream"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 70
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    if-eqz v2, :cond_1

    .line 65
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 67
    :catch_2
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "com.android.server.spay.Utils"

    const-string v6, "Error closing OutputStream"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 64
    :goto_2
    if-eqz v2, :cond_2

    .line 65
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 69
    :cond_2
    :goto_3
    throw v5

    .line 67
    :catch_3
    move-exception v0

    .line 68
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "com.android.server.spay.Utils"

    const-string v7, "Error closing OutputStream"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 63
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 60
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
