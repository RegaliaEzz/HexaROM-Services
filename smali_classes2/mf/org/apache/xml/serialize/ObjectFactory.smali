.class final Lmf/org/apache/xml/serialize/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field private static final DEFAULT_PROPERTIES_FILENAME:Ljava/lang/String; = "xerces.properties"

.field private static fLastModified:J

.field private static fXercesProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lmf/org/apache/xml/serialize/ObjectFactory;->isDebugEnabled()Z

    move-result v0

    sput-boolean v0, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    .line 71
    const-wide/16 v0, -0x1

    sput-wide v0, Lmf/org/apache/xml/serialize/ObjectFactory;->fLastModified:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lmf/org/apache/xml/serialize/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 22
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "propertiesFilename"    # Ljava/lang/String;
    .param p2, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 127
    sget-boolean v15, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-eqz v15, :cond_0

    const-string v15, "debug is on"

    invoke-static {v15}, Lmf/org/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 129
    :cond_0
    invoke-static {}, Lmf/org/apache/xml/serialize/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 133
    .local v2, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lmf/org/apache/xml/serialize/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 134
    .local v13, "systemProp":Ljava/lang/String;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 135
    sget-boolean v15, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-eqz v15, :cond_1

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "found system property, value="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lmf/org/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 136
    :cond_1
    const/4 v15, 0x1

    invoke-static {v13, v2, v15}, Lmf/org/apache/xml/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 250
    .end local v13    # "systemProp":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v12

    .line 138
    :catch_0
    move-exception v15

    .line 143
    :cond_3
    const/4 v4, 0x0

    .line 145
    .local v4, "factoryClassName":Ljava/lang/String;
    if-nez p1, :cond_c

    .line 146
    const/4 v8, 0x0

    .line 147
    .local v8, "propertiesFile":Ljava/io/File;
    const/4 v10, 0x0

    .line 149
    .local v10, "propertiesFileExists":Z
    :try_start_1
    const-string v15, "java.home"

    invoke-static {v15}, Lmf/org/apache/xml/serialize/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "javah":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 151
    const-string v16, "lib"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "xerces.properties"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 150
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    .end local v8    # "propertiesFile":Ljava/io/File;
    .local v9, "propertiesFile":Ljava/io/File;
    :try_start_2
    invoke-static {v9}, Lmf/org/apache/xml/serialize/SecuritySupport;->getFileExists(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_a

    move-result v10

    move-object v8, v9

    .line 160
    .end local v6    # "javah":Ljava/lang/String;
    .end local v9    # "propertiesFile":Ljava/io/File;
    .restart local v8    # "propertiesFile":Ljava/io/File;
    :goto_1
    const-class v16, Lmf/org/apache/xml/serialize/ObjectFactory;

    monitor-enter v16

    .line 161
    const/4 v7, 0x0

    .line 162
    .local v7, "loadProperties":Z
    const/4 v5, 0x0

    .line 165
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_3
    sget-wide v18, Lmf/org/apache/xml/serialize/ObjectFactory;->fLastModified:J

    const-wide/16 v20, 0x0

    cmp-long v15, v18, v20

    if-ltz v15, :cond_a

    .line 166
    if-eqz v10, :cond_9

    .line 167
    sget-wide v18, Lmf/org/apache/xml/serialize/ObjectFactory;->fLastModified:J

    invoke-static {v8}, Lmf/org/apache/xml/serialize/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v20

    sput-wide v20, Lmf/org/apache/xml/serialize/ObjectFactory;->fLastModified:J

    cmp-long v15, v18, v20

    if-gez v15, :cond_9

    .line 168
    const/4 v7, 0x1

    .line 183
    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    .line 185
    new-instance v15, Ljava/util/Properties;

    invoke-direct {v15}, Ljava/util/Properties;-><init>()V

    sput-object v15, Lmf/org/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    .line 186
    invoke-static {v8}, Lmf/org/apache/xml/serialize/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 187
    sget-object v15, Lmf/org/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    invoke-virtual {v15, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    :cond_5
    if-eqz v5, :cond_6

    .line 200
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 160
    :cond_6
    :goto_3
    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 207
    sget-object v15, Lmf/org/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    if-eqz v15, :cond_7

    .line 208
    sget-object v15, Lmf/org/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .end local v7    # "loadProperties":Z
    .end local v8    # "propertiesFile":Ljava/io/File;
    .end local v10    # "propertiesFileExists":Z
    :cond_7
    :goto_4
    if-eqz v4, :cond_e

    .line 234
    sget-boolean v15, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-eqz v15, :cond_8

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "found in "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", value="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lmf/org/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 235
    :cond_8
    const/4 v15, 0x1

    invoke-static {v4, v2, v15}, Lmf/org/apache/xml/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_0

    .line 154
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "propertiesFile":Ljava/io/File;
    .restart local v10    # "propertiesFileExists":Z
    :catch_1
    move-exception v3

    .line 156
    .local v3, "e":Ljava/lang/SecurityException;
    :goto_5
    const-wide/16 v16, -0x1

    sput-wide v16, Lmf/org/apache/xml/serialize/ObjectFactory;->fLastModified:J

    .line 157
    const/4 v15, 0x0

    sput-object v15, Lmf/org/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    goto :goto_1

    .line 171
    .end local v3    # "e":Ljava/lang/SecurityException;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "loadProperties":Z
    :cond_9
    if-nez v10, :cond_4

    .line 172
    const-wide/16 v18, -0x1

    :try_start_6
    sput-wide v18, Lmf/org/apache/xml/serialize/ObjectFactory;->fLastModified:J

    .line 173
    const/4 v15, 0x0

    sput-object v15, Lmf/org/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 189
    :catch_2
    move-exception v14

    .line 190
    .local v14, "x":Ljava/lang/Exception;
    const/4 v15, 0x0

    :try_start_7
    sput-object v15, Lmf/org/apache/xml/serialize/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    .line 191
    const-wide/16 v18, -0x1

    sput-wide v18, Lmf/org/apache/xml/serialize/ObjectFactory;->fLastModified:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 198
    if-eqz v5, :cond_6

    .line 200
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 203
    :catch_3
    move-exception v15

    goto :goto_3

    .line 178
    .end local v14    # "x":Ljava/lang/Exception;
    :cond_a
    if-eqz v10, :cond_4

    .line 179
    const/4 v7, 0x1

    .line 180
    :try_start_9
    invoke-static {v8}, Lmf/org/apache/xml/serialize/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v18

    sput-wide v18, Lmf/org/apache/xml/serialize/ObjectFactory;->fLastModified:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 196
    :catchall_0
    move-exception v15

    .line 198
    if-eqz v5, :cond_b

    .line 200
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 205
    :cond_b
    :goto_6
    :try_start_b
    throw v15

    .line 160
    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v15

    .line 211
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "loadProperties":Z
    .end local v8    # "propertiesFile":Ljava/io/File;
    .end local v10    # "propertiesFileExists":Z
    :cond_c
    const/4 v5, 0x0

    .line 213
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :try_start_c
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lmf/org/apache/xml/serialize/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 214
    new-instance v11, Ljava/util/Properties;

    invoke-direct {v11}, Ljava/util/Properties;-><init>()V

    .line 215
    .local v11, "props":Ljava/util/Properties;
    invoke-virtual {v11, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 216
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v4

    .line 224
    if-eqz v5, :cond_7

    .line 226
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_4

    .line 229
    :catch_4
    move-exception v15

    goto/16 :goto_4

    .line 217
    .end local v11    # "props":Ljava/util/Properties;
    :catch_5
    move-exception v15

    .line 224
    if-eqz v5, :cond_7

    .line 226
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_4

    .line 229
    :catch_6
    move-exception v15

    goto/16 :goto_4

    .line 222
    :catchall_2
    move-exception v15

    .line 224
    if-eqz v5, :cond_d

    .line 226
    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 231
    :cond_d
    :goto_7
    throw v15

    .line 239
    :cond_e
    invoke-static/range {p0 .. p0}, Lmf/org/apache/xml/serialize/ObjectFactory;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 240
    .local v12, "provider":Ljava/lang/Object;
    if-nez v12, :cond_2

    .line 244
    if-nez p2, :cond_f

    .line 245
    new-instance v15, Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;

    .line 246
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Provider for "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " cannot be found"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    .line 245
    invoke-direct/range {v15 .. v17}, Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v15

    .line 249
    :cond_f
    sget-boolean v15, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-eqz v15, :cond_10

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "using fallback, value="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lmf/org/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 250
    :cond_10
    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v15}, Lmf/org/apache/xml/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_0

    .line 203
    .end local v12    # "provider":Ljava/lang/Object;
    .restart local v7    # "loadProperties":Z
    .restart local v8    # "propertiesFile":Ljava/io/File;
    .restart local v10    # "propertiesFileExists":Z
    :catch_7
    move-exception v17

    goto/16 :goto_6

    :catch_8
    move-exception v15

    goto/16 :goto_3

    .line 229
    .end local v7    # "loadProperties":Z
    .end local v8    # "propertiesFile":Ljava/io/File;
    .end local v10    # "propertiesFileExists":Z
    :catch_9
    move-exception v16

    goto :goto_7

    .line 154
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "javah":Ljava/lang/String;
    .restart local v9    # "propertiesFile":Ljava/io/File;
    .restart local v10    # "propertiesFileExists":Z
    :catch_a
    move-exception v3

    move-object v8, v9

    .end local v9    # "propertiesFile":Ljava/io/File;
    .restart local v8    # "propertiesFile":Ljava/io/File;
    goto/16 :goto_5
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 270
    sget-boolean v0, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XERCES: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 273
    :cond_0
    return-void
.end method

.method static findClassLoader()Ljava/lang/ClassLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {}, Lmf/org/apache/xml/serialize/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 285
    .local v1, "context":Ljava/lang/ClassLoader;
    invoke-static {}, Lmf/org/apache/xml/serialize/SecuritySupport;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 287
    .local v3, "system":Ljava/lang/ClassLoader;
    move-object v0, v3

    .line 289
    .local v0, "chain":Ljava/lang/ClassLoader;
    :goto_0
    if-ne v1, v0, :cond_2

    .line 298
    const-class v4, Lmf/org/apache/xml/serialize/ObjectFactory;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 300
    .local v2, "current":Ljava/lang/ClassLoader;
    move-object v0, v3

    .line 302
    :goto_1
    if-ne v2, v0, :cond_0

    .line 330
    .end local v2    # "current":Ljava/lang/ClassLoader;
    .end local v3    # "system":Ljava/lang/ClassLoader;
    :goto_2
    return-object v3

    .line 307
    .restart local v2    # "current":Ljava/lang/ClassLoader;
    .restart local v3    # "system":Ljava/lang/ClassLoader;
    :cond_0
    if-nez v0, :cond_1

    move-object v3, v2

    .line 315
    goto :goto_2

    .line 310
    :cond_1
    invoke-static {v0}, Lmf/org/apache/xml/serialize/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 301
    goto :goto_1

    .line 318
    .end local v2    # "current":Ljava/lang/ClassLoader;
    :cond_2
    if-nez v0, :cond_3

    move-object v3, v1

    .line 330
    goto :goto_2

    .line 325
    :cond_3
    invoke-static {v0}, Lmf/org/apache/xml/serialize/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 288
    goto :goto_0
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p0, "factoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    const/16 v11, 0x50

    const/4 v8, 0x0

    .line 417
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "META-INF/services/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 418
    .local v6, "serviceId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 421
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {}, Lmf/org/apache/xml/serialize/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 423
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-static {v0, v6}, Lmf/org/apache/xml/serialize/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 426
    if-nez v4, :cond_0

    .line 427
    const-class v9, Lmf/org/apache/xml/serialize/ObjectFactory;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 428
    .local v1, "current":Ljava/lang/ClassLoader;
    if-eq v0, v1, :cond_0

    .line 429
    move-object v0, v1

    .line 430
    invoke-static {v0, v6}, Lmf/org/apache/xml/serialize/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 434
    .end local v1    # "current":Ljava/lang/ClassLoader;
    :cond_0
    if-nez v4, :cond_2

    .line 496
    :cond_1
    :goto_0
    return-object v8

    .line 439
    :cond_2
    sget-boolean v9, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "found jar resource="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 440
    const-string v10, " using ClassLoader: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 439
    invoke-static {v9}, Lmf/org/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 460
    :cond_3
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v4, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v10, 0x50

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .local v5, "rd":Ljava/io/BufferedReader;
    :goto_1
    const/4 v3, 0x0

    .line 469
    .local v3, "factoryClassName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 477
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 483
    :goto_2
    if-eqz v3, :cond_1

    .line 484
    const-string v9, ""

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 485
    sget-boolean v8, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "found in resource, value="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 485
    invoke-static {v8}, Lmf/org/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 492
    :cond_4
    const/4 v8, 0x0

    invoke-static {v3, v0, v8}, Lmf/org/apache/xml/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 461
    .end local v3    # "factoryClassName":Ljava/lang/String;
    .end local v5    # "rd":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 462
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .restart local v5    # "rd":Ljava/io/BufferedReader;
    goto :goto_1

    .line 470
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "factoryClassName":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 477
    .local v7, "x":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 480
    :catch_2
    move-exception v9

    goto :goto_0

    .line 474
    .end local v7    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 477
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 481
    :goto_3
    throw v8

    .line 480
    :catch_3
    move-exception v9

    goto :goto_3

    :catch_4
    move-exception v9

    goto :goto_2
.end method

.method static findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 366
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 367
    .local v4, "security":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_1

    .line 368
    const-string v6, "."

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 369
    .local v1, "lastDot":I
    move-object v2, p0

    .line 370
    .local v2, "packageName":Ljava/lang/String;
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 371
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    .line 374
    .end local v1    # "lastDot":I
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    .line 384
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 406
    .local v3, "providerClass":Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 387
    .end local v3    # "providerClass":Ljava/lang/Class;
    :cond_2
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    .line 388
    .end local v3    # "providerClass":Ljava/lang/Class;
    :catch_0
    move-exception v5

    .line 389
    .local v5, "x":Ljava/lang/ClassNotFoundException;
    if-eqz p2, :cond_5

    .line 391
    const-class v6, Lmf/org/apache/xml/serialize/ObjectFactory;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 392
    .local v0, "current":Ljava/lang/ClassLoader;
    if-nez v0, :cond_3

    .line 393
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 394
    .restart local v3    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    .end local v3    # "providerClass":Ljava/lang/Class;
    :cond_3
    if-eq p1, v0, :cond_4

    .line 395
    move-object p1, v0

    .line 396
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 397
    .restart local v3    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    .line 398
    .end local v3    # "providerClass":Ljava/lang/Class;
    :cond_4
    throw v5

    .line 401
    .end local v0    # "current":Ljava/lang/ClassLoader;
    :cond_5
    throw v5
.end method

.method private static isDebugEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 260
    :try_start_0
    const-string v2, "xerces.debug"

    invoke-static {v2}, Lmf/org/apache/xml/serialize/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 265
    :cond_0
    :goto_0
    return v1

    .line 264
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 342
    :try_start_0
    invoke-static {p0, p1, p2}, Lmf/org/apache/xml/serialize/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 343
    .local v1, "providerClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 344
    .local v0, "instance":Ljava/lang/Object;
    sget-boolean v3, Lmf/org/apache/xml/serialize/ObjectFactory;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "created new instance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 345
    const-string v4, " using ClassLoader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-static {v3}, Lmf/org/apache/xml/serialize/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 346
    :cond_0
    return-object v0

    .line 347
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v1    # "providerClass":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 348
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Provider "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-direct {v3, v4, v2}, Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 350
    .end local v2    # "x":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 351
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Provider "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " could not be instantiated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 351
    invoke-direct {v3, v4, v2}, Lmf/org/apache/xml/serialize/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method
