.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarSystemUtil"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateLongpressGesture(Z)V
    .locals 6
    .param p0, "bEnable"    # Z

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 147
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 164
    :cond_0
    if-eqz v2, :cond_1

    .line 165
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 170
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 151
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    if-eqz p0, :cond_4

    .line 153
    :try_start_3
    const-string/jumbo v4, "set_longpress_enable,0"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 157
    :goto_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    if-eqz v3, :cond_3

    .line 165
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    move-object v2, v3

    .line 168
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 155
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :cond_4
    :try_start_5
    const-string/jumbo v4, "set_longpress_enable,1"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 158
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 159
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 164
    if-eqz v2, :cond_1

    .line 165
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 167
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_2
    move-exception v4

    move-object v2, v3

    .line 169
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 160
    .end local v1    # "file":Ljava/io/File;
    :catch_3
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 164
    if-eqz v2, :cond_1

    .line 165
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 167
    :catch_4
    move-exception v4

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 164
    :goto_4
    if-eqz v2, :cond_5

    .line 165
    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 168
    :cond_5
    :goto_5
    throw v4

    .line 167
    .restart local v1    # "file":Ljava/io/File;
    :catch_5
    move-exception v4

    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    :catch_6
    move-exception v5

    goto :goto_5

    .line 163
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_4

    .line 160
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 158
    .end local v1    # "file":Ljava/io/File;
    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method public static updateSysfsBarLength(I)V
    .locals 8
    .param p0, "barLength"    # I

    .prologue
    .line 199
    if-ltz p0, :cond_0

    const/16 v5, 0xa0

    if-le p0, v5, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    const/4 v3, 0x0

    .line 204
    .local v3, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/sys/class/sec/tsp/cmd"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_3

    .line 219
    :cond_2
    if-eqz v3, :cond_0

    .line 220
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v5

    goto :goto_0

    .line 208
    :cond_3
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_3
    new-instance v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set_sidescreen_x_length,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "command":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 211
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 212
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSysfsBarLength: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    if-eqz v4, :cond_4

    .line 220
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    move-object v3, v4

    .line 223
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 222
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_1
    move-exception v5

    move-object v3, v4

    .line 224
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 213
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 214
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 219
    if-eqz v3, :cond_0

    .line 220
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 222
    :catch_3
    move-exception v5

    goto :goto_0

    .line 215
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .line 216
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 219
    if-eqz v3, :cond_0

    .line 220
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 222
    :catch_5
    move-exception v5

    goto/16 :goto_0

    .line 218
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 219
    :goto_3
    if-eqz v3, :cond_5

    .line 220
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 223
    :cond_5
    :goto_4
    throw v5

    .line 222
    :catch_6
    move-exception v6

    goto :goto_4

    .line 218
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 215
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_2

    .line 213
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static updateSysfsDeadZone(I)V
    .locals 8
    .param p0, "deadzone"    # I

    .prologue
    .line 173
    const/4 v3, 0x0

    .line 175
    .local v3, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v5, "/sys/class/sec/tsp/cmd"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 190
    :cond_0
    if-eqz v3, :cond_1

    .line 191
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 196
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 179
    .restart local v2    # "file":Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_3
    new-instance v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set_dead_zone,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "command":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 182
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 183
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSysfsDeadZone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 190
    if-eqz v4, :cond_3

    .line 191
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move-object v3, v4

    .line 194
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 193
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 195
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 184
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 185
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    if-eqz v3, :cond_1

    .line 191
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 193
    :catch_2
    move-exception v5

    goto :goto_0

    .line 186
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 187
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 190
    if-eqz v3, :cond_1

    .line 191
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 193
    :catch_4
    move-exception v5

    goto :goto_0

    .line 189
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 190
    :goto_3
    if-eqz v3, :cond_4

    .line 191
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 194
    :cond_4
    :goto_4
    throw v5

    .line 193
    .restart local v2    # "file":Ljava/io/File;
    :catch_5
    move-exception v5

    goto :goto_0

    .end local v2    # "file":Ljava/io/File;
    :catch_6
    move-exception v6

    goto :goto_4

    .line 189
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 186
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_2

    .line 184
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static updateSysfsGripDisable(Z)V
    .locals 7
    .param p0, "bDisable"    # Z

    .prologue
    .line 228
    const/4 v2, 0x0

    .line 230
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_2

    .line 232
    :cond_0
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "updateSysfsGripDisable : file did not exists or canWrite"

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    if-eqz v2, :cond_1

    .line 250
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 255
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 235
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    :try_start_2
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSysfsGripDisable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    if-eqz p0, :cond_4

    .line 238
    :try_start_3
    const-string/jumbo v4, "set_grip_detection,0"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 242
    :goto_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 249
    if-eqz v3, :cond_3

    .line 250
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    move-object v2, v3

    .line 253
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 240
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :cond_4
    :try_start_5
    const-string/jumbo v4, "set_grip_detection,1"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 243
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 244
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 249
    if-eqz v2, :cond_1

    .line 250
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 252
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_2
    move-exception v4

    move-object v2, v3

    .line 254
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 245
    .end local v1    # "file":Ljava/io/File;
    :catch_3
    move-exception v0

    .line 246
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 249
    if-eqz v2, :cond_1

    .line 250
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 252
    :catch_4
    move-exception v4

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 249
    :goto_4
    if-eqz v2, :cond_5

    .line 250
    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 253
    :cond_5
    :goto_5
    throw v4

    .line 252
    .restart local v1    # "file":Ljava/io/File;
    :catch_5
    move-exception v4

    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    :catch_6
    move-exception v5

    goto :goto_5

    .line 248
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_4

    .line 245
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 243
    .end local v1    # "file":Ljava/io/File;
    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method public static updateWakeupArea(I)V
    .locals 6
    .param p0, "area"    # I

    .prologue
    .line 115
    const/4 v2, 0x0

    .line 117
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 136
    :cond_0
    if-eqz v2, :cond_1

    .line 137
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 142
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 121
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    const/4 v4, 0x1

    if-ne p0, v4, :cond_4

    .line 124
    :try_start_3
    const-string/jumbo v4, "select_wakeful_edge,0"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 129
    :goto_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    if-eqz v3, :cond_3

    .line 137
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    move-object v2, v3

    .line 140
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 127
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :cond_4
    :try_start_5
    const-string/jumbo v4, "select_wakeful_edge,1"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 131
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 136
    if-eqz v2, :cond_1

    .line 137
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 139
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_2
    move-exception v4

    move-object v2, v3

    .line 141
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 132
    .end local v1    # "file":Ljava/io/File;
    :catch_3
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 136
    if-eqz v2, :cond_1

    .line 137
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 139
    :catch_4
    move-exception v4

    goto :goto_0

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 136
    :goto_4
    if-eqz v2, :cond_5

    .line 137
    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 140
    :cond_5
    :goto_5
    throw v4

    .line 139
    .restart local v1    # "file":Ljava/io/File;
    :catch_5
    move-exception v4

    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    :catch_6
    move-exception v5

    goto :goto_5

    .line 135
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_4

    .line 132
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 130
    .end local v1    # "file":Ljava/io/File;
    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method public static updateWakeupGesture(Landroid/content/Context;IZ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gestureType"    # I
    .param p2, "bEnable"    # Z

    .prologue
    .line 80
    const-string/jumbo v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 81
    .local v4, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "updateWakeupGesture: factory binary"

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    const/4 v2, 0x0

    .line 88
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_3

    .line 105
    :cond_2
    if-eqz v2, :cond_0

    .line 106
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v5

    goto :goto_0

    .line 92
    :cond_3
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    if-eqz p2, :cond_4

    .line 94
    :try_start_3
    const-string/jumbo v5, "second_screen_enable,1"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 98
    :goto_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    if-eqz v3, :cond_0

    .line 106
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 108
    :catch_1
    move-exception v5

    goto :goto_0

    .line 96
    :cond_4
    :try_start_5
    const-string/jumbo v5, "second_screen_enable,0"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 99
    :catch_2
    move-exception v0

    move-object v2, v3

    .line 100
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 105
    if-eqz v2, :cond_0

    .line 106
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 108
    :catch_3
    move-exception v5

    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 105
    if-eqz v2, :cond_0

    .line 106
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_0

    .line 108
    :catch_5
    move-exception v5

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 105
    :goto_4
    if-eqz v2, :cond_5

    .line 106
    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 109
    :cond_5
    :goto_5
    throw v5

    .line 108
    :catch_6
    move-exception v6

    goto :goto_5

    .line 104
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_4

    .line 101
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 99
    .end local v1    # "file":Ljava/io/File;
    :catch_8
    move-exception v0

    goto :goto_2
.end method
