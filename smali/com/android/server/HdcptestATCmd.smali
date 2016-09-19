.class public Lcom/android/server/HdcptestATCmd;
.super Ljava/lang/Object;
.source "HdcptestATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final AT_COMMAND_HDCPTEST:Ljava/lang/String; = "HDCPTEST"

.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_COMMON_INTERVAL:Ljava/lang/String; = " "

.field private static final AT_HDCP_ENC_KEY:Ljava/lang/String; = "/redata.bin"

.field private static final AT_HDCP_EXEC_PATH:Ljava/lang/String; = "/system/bin/insthk"

.field private static final AT_HDCP_FILE_PATH_CPK:Ljava/lang/String; = "/efs/cpk"

.field private static final AT_HDCP_FILE_PATH_EFS:Ljava/lang/String; = "/efs"

.field private static final AT_HDCP_KEY_20:Ljava/lang/String; = "/h2k.dat"

.field private static final AT_RESPONSE_ERROR_EXEC:Ljava/lang/String; = "NG (ERROR_EXEC)"

.field private static final AT_RESPONSE_EXCEPTION:Ljava/lang/String; = "NG (EXCEPTION)"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID_PARAM)"

.field private static final AT_RESPONSE_NG:Ljava/lang/String; = "NG"

.field private static final AT_RESPONSE_NG_FIELD:Ljava/lang/String; = "NG_FIELD"

.field private static final AT_RESPONSE_NG_KEY:Ljava/lang/String; = "NG_KEY"

.field private static final AT_RESPONSE_NO_DATA:Ljava/lang/String; = "NG (NO_DATA)"

.field private static final AT_RESPONSE_NO_EFS_PARTITION:Ljava/lang/String; = "NG (NO_EFS)"

.field private static final AT_RESPONSE_NO_EXIST_PATH:Ljava/lang/String; = "NG (NO_PATH)"

.field private static final AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final AT_WV_DEFAULT_SERIAL:Ljava/lang/String; = "S000000000000000"

.field private static final AT_WV_EXEC_PATH:Ljava/lang/String; = "/system/bin/wvkprov"

.field private static final AT_WV_KEY:Ljava/lang/String; = "/efs/wv.keys"

.field private static final AT_WV_VERIFICATION_CMD:Ljava/lang/String; = "veriwvkey"

.field private static final AT_WV_ZERO_STRING:Ljava/lang/String; = "0"

.field private static final EFS_PARTITION:Ljava/lang/String; = "/efs"

.field private static final ERROR_EXEC:I = 0x2c

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HdcptestATCmd"

.field private static final TYPE_DIR:I = 0x1

.field private static final TYPE_FILE:I = 0x2

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mErrorCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sput-object p1, Lcom/android/server/HdcptestATCmd;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public static checkPath(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "result":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, "tmpFile":Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    .line 306
    :goto_0
    return v0

    .line 300
    :pswitch_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 301
    goto :goto_0

    .line 303
    :pswitch_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static execCmd(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 274
    const/4 v4, 0x2

    invoke-static {p0, v4}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 275
    const/16 v2, 0x2c

    .line 292
    :goto_0
    return v2

    .line 277
    :cond_0
    if-eqz p1, :cond_1

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 283
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 284
    .local v3, "rt":Ljava/lang/Runtime;
    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 285
    .local v1, "pc":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 286
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "ret":I
    goto :goto_0

    .line 287
    .end local v1    # "pc":Ljava/lang/Process;
    .end local v2    # "ret":I
    .end local v3    # "rt":Ljava/lang/Runtime;
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const/16 v2, 0x2c

    .line 290
    .restart local v2    # "ret":I
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getHdcp2XPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 312
    const-string v1, "/efs/cpk"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const-string v0, "/efs/cpk"

    .line 316
    .local v0, "hPath":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 315
    .end local v0    # "hPath":Ljava/lang/String;
    :cond_0
    const-string v0, "/efs"

    .restart local v0    # "hPath":Ljava/lang/String;
    goto :goto_0
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p0, "hexData"    # Ljava/lang/String;

    .prologue
    .line 259
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 260
    :cond_0
    const/4 v0, 0x0

    .line 268
    :cond_1
    return-object v0

    .line 263
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 265
    .local v0, "bArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 266
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 245
    const/4 v2, 0x0

    .line 247
    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "params":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 255
    .end local v1    # "params":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 250
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 61
    .local v0, "response":Ljava/lang/String;
    const-string v0, "HDCPTEST"

    .line 62
    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    .line 67
    .local v12, "result":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/HdcptestATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 68
    .local v11, "params":[Ljava/lang/String;
    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v15, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "0,0"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "0,3"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "1,0"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "2,"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "3,3,"

    aput-object v17, v15, v16

    .line 76
    .local v15, "supportedParams":[Ljava/lang/String;
    if-nez v11, :cond_0

    .line 77
    const-string v16, "HdcptestATCmd"

    const-string/jumbo v17, "processCmd: params is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v16, "NG (INVALID_PARAM)"

    .line 241
    :goto_0
    return-object v16

    .line 81
    :cond_0
    const-string v16, "/efs"

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v16

    if-nez v16, :cond_1

    .line 82
    const-string v16, "HdcptestATCmd"

    const-string/jumbo v17, "efs partition is not mounted"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v16, "NG (NO_EFS)"

    goto :goto_0

    .line 87
    :cond_1
    const/4 v8, 0x0

    .line 88
    .local v8, "hOStream":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 91
    .local v6, "hBOStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    aget-object v17, v11, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 94
    const/16 v16, 0x0

    aget-object v16, v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 96
    const-string v16, "HdcptestATCmd"

    const-string v17, "AT+HDCPTEST=0,0"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v10, "/efs/cpk"

    .line 100
    .local v10, "hPath":Ljava/lang/String;
    const-string v16, "/system/bin/insthk"

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 102
    .local v13, "ret":I
    if-nez v13, :cond_4

    .line 103
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "OK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 122
    :goto_1
    const-string v16, "HdcptestATCmd"

    const-string v17, "0,0 is complete!"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v10    # "hPath":Ljava/lang/String;
    .end local v13    # "ret":I
    :goto_2
    if-eqz v6, :cond_2

    .line 225
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    const/4 v6, 0x0

    .line 231
    :cond_2
    :goto_3
    if-eqz v8, :cond_3

    .line 233
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 237
    const/4 v8, 0x0

    :cond_3
    :goto_4
    move-object/from16 v16, v12

    .line 241
    goto/16 :goto_0

    .line 106
    .restart local v10    # "hPath":Ljava/lang/String;
    .restart local v13    # "ret":I
    :cond_4
    :try_start_3
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/h2k.dat"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v16

    if-nez v16, :cond_5

    .line 107
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG_KEY"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 110
    :cond_5
    const-string v10, "/efs"

    .line 111
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/h2k.dat"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v16

    if-nez v16, :cond_6

    .line 112
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG_KEY"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 114
    :cond_6
    const/16 v16, 0x2c

    move/from16 v0, v16

    if-ne v13, v0, :cond_7

    .line 115
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (ERROR_EXEC)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 117
    :cond_7
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG_FIELD"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 125
    .end local v10    # "hPath":Ljava/lang/String;
    .end local v13    # "ret":I
    :cond_8
    const/16 v16, 0x1

    aget-object v16, v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 127
    const-string v16, "HdcptestATCmd"

    const-string v17, "AT+HDCPTEST=0,3"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v16, "/efs/wv.keys"

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v16

    if-nez v16, :cond_a

    .line 130
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG_KEY"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 141
    :goto_5
    const-string v16, "HdcptestATCmd"

    const-string v17, "0,3 is complete."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 219
    :catch_0
    move-exception v5

    .line 220
    .local v5, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (EXCEPTION)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 221
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 223
    if-eqz v6, :cond_9

    .line 225
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 229
    const/4 v6, 0x0

    .line 231
    :cond_9
    :goto_7
    if-eqz v8, :cond_3

    .line 233
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 237
    const/4 v8, 0x0

    .line 238
    goto/16 :goto_4

    .line 132
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_7
    const-string v16, "/system/bin/wvkprov"

    const-string/jumbo v17, "veriwvkey"

    invoke-static/range {v16 .. v17}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 134
    .restart local v13    # "ret":I
    if-nez v13, :cond_b

    .line 135
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "OK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    .line 136
    :cond_b
    const/16 v16, 0x2c

    move/from16 v0, v16

    if-ne v13, v0, :cond_c

    .line 137
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (ERROR_EXEC)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    .line 139
    :cond_c
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG_FIELD"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    .line 144
    .end local v13    # "ret":I
    :cond_d
    const/16 v16, 0x2

    aget-object v16, v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x2

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 146
    const-string v16, "HdcptestATCmd"

    const-string v17, "AT+HDCPTEST=1,0"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v3, "S000000000000000"

    .line 149
    .local v3, "AT_RESPONSE_SERIAL":Ljava/lang/String;
    const-string/jumbo v16, "ro.serialno"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 151
    .local v14, "serialNo":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x10

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_10

    .line 152
    move-object v3, v14

    .line 159
    :goto_8
    const-string v16, "HdcptestATCmd"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Serial Number : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 162
    const-string v16, "HdcptestATCmd"

    const-string v17, "1,0 is complete."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 223
    .end local v3    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .end local v14    # "serialNo":Ljava/lang/String;
    :catchall_0
    move-exception v16

    :goto_9
    if-eqz v6, :cond_e

    .line 225
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 229
    const/4 v6, 0x0

    .line 231
    :cond_e
    :goto_a
    if-eqz v8, :cond_f

    .line 233
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 237
    const/4 v8, 0x0

    :cond_f
    :goto_b
    throw v16

    .line 153
    .restart local v3    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v14    # "serialNo":Ljava/lang/String;
    :cond_10
    :try_start_a
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_11

    .line 154
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "0"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 156
    :cond_11
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .line 165
    .end local v3    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .end local v14    # "serialNo":Ljava/lang/String;
    :cond_12
    const/16 v16, 0x3

    aget-object v16, v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x3

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    .line 167
    const/16 v16, 0x1

    aget-object v16, v11, v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/HdcptestATCmd;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 169
    .local v4, "bArray":[B
    if-nez v4, :cond_13

    .line 170
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (NO_DATA)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 194
    :goto_c
    const-string v16, "HdcptestATCmd"

    const-string v17, "2,Data is complete."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 172
    :cond_13
    const-string v16, "HdcptestATCmd"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "bArray size : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v4

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Lcom/android/server/HdcptestATCmd;->getHdcp2XPath()Ljava/lang/String;

    move-result-object v10

    .line 177
    .restart local v10    # "hPath":Ljava/lang/String;
    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/redata.bin"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 178
    .end local v8    # "hOStream":Ljava/io/FileOutputStream;
    .local v9, "hOStream":Ljava/io/FileOutputStream;
    :try_start_b
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 180
    .end local v6    # "hBOStream":Ljava/io/BufferedOutputStream;
    .local v7, "hBOStream":Ljava/io/BufferedOutputStream;
    :try_start_c
    const-string v16, "HdcptestATCmd"

    const-string v17, "Prepare buffer stream"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/16 v16, 0x0

    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v4, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 184
    const-string v16, "HdcptestATCmd"

    const-string v17, "Write data into buffer"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 188
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/redata.bin"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 189
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "OK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v6, v7

    .end local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v8    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .line 191
    .end local v6    # "hBOStream":Ljava/io/BufferedOutputStream;
    .end local v8    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v9    # "hOStream":Ljava/io/FileOutputStream;
    :cond_14
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move-result-object v12

    move-object v6, v7

    .end local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v8    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .line 197
    .end local v4    # "bArray":[B
    .end local v10    # "hPath":Ljava/lang/String;
    :cond_15
    const/16 v16, 0x4

    :try_start_d
    aget-object v16, v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x4

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 199
    const-string v16, "HdcptestATCmd"

    const-string v17, "AT+HDCPTEST=3,3,Data"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/16 v16, 0x2

    aget-object v16, v11, v16

    if-eqz v16, :cond_16

    const/16 v16, 0x2

    aget-object v16, v11, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_17

    .line 202
    :cond_16
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (NO_DATA)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 215
    :goto_d
    const-string v16, "HdcptestATCmd"

    const-string v17, "3,3,Data is complete."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 204
    :cond_17
    const-string v16, "HdcptestATCmd"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Param size : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x2

    aget-object v18, v11, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v16, "/system/bin/wvkprov"

    const/16 v17, 0x2

    aget-object v17, v11, v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 207
    .restart local v13    # "ret":I
    if-nez v13, :cond_18

    .line 208
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "OK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_d

    .line 209
    :cond_18
    const/16 v16, 0x2c

    move/from16 v0, v16

    if-ne v13, v0, :cond_19

    .line 210
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (ERROR_EXEC)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_d

    .line 212
    :cond_19
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_d

    .line 218
    .end local v13    # "ret":I
    :cond_1a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "NG (INVALID_PARAM)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v12

    goto/16 :goto_2

    .line 226
    :catch_1
    move-exception v5

    .line 227
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 229
    const/4 v6, 0x0

    .line 230
    goto/16 :goto_3

    .line 229
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v16

    const/4 v6, 0x0

    throw v16

    .line 234
    :catch_2
    move-exception v5

    .line 235
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_f
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 237
    const/4 v8, 0x0

    .line 238
    goto/16 :goto_4

    .line 237
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v16

    const/4 v8, 0x0

    throw v16

    .line 226
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 227
    :try_start_10
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 229
    const/4 v6, 0x0

    .line 230
    goto/16 :goto_7

    .line 229
    :catchall_3
    move-exception v16

    const/4 v6, 0x0

    throw v16

    .line 234
    :catch_4
    move-exception v5

    .line 235
    :try_start_11
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 237
    const/4 v8, 0x0

    .line 238
    goto/16 :goto_4

    .line 237
    :catchall_4
    move-exception v16

    const/4 v8, 0x0

    throw v16

    .line 226
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v5

    .line 227
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_12
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 229
    const/4 v6, 0x0

    .line 230
    goto/16 :goto_a

    .line 229
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v16

    const/4 v6, 0x0

    throw v16

    .line 234
    :catch_6
    move-exception v5

    .line 235
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_13
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 237
    const/4 v8, 0x0

    .line 238
    goto/16 :goto_b

    .line 237
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_6
    move-exception v16

    const/4 v8, 0x0

    throw v16

    .line 223
    .end local v8    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v4    # "bArray":[B
    .restart local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v10    # "hPath":Ljava/lang/String;
    :catchall_7
    move-exception v16

    move-object v8, v9

    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v8    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .end local v6    # "hBOStream":Ljava/io/BufferedOutputStream;
    .end local v8    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v9    # "hOStream":Ljava/io/FileOutputStream;
    :catchall_8
    move-exception v16

    move-object v6, v7

    .end local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v8    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .line 219
    .end local v8    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v9    # "hOStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v5

    move-object v8, v9

    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v8    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .end local v6    # "hBOStream":Ljava/io/BufferedOutputStream;
    .end local v8    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v9    # "hOStream":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v5

    move-object v6, v7

    .end local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v8    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_6
.end method
