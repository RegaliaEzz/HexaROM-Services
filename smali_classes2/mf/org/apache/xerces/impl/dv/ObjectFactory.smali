.class final Lmf/org/apache/xerces/impl/dv/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;
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
    .line 54
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->isDebugEnabled()Z

    move-result v0

    sput-boolean v0, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    .line 73
    const-wide/16 v0, -0x1

    sput-wide v0, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fLastModified:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

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
            Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 129
    sget-boolean v15, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

    if-eqz v15, :cond_0

    const-string v15, "debug is on"

    invoke-static {v15}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 135
    .local v2, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 136
    .local v13, "systemProp":Ljava/lang/String;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 137
    sget-boolean v15, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

    if-eqz v15, :cond_1

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "found system property, value="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 138
    :cond_1
    const/4 v15, 0x1

    invoke-static {v13, v2, v15}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 252
    .end local v13    # "systemProp":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v12

    .line 140
    :catch_0
    move-exception v15

    .line 145
    :cond_3
    const/4 v4, 0x0

    .line 147
    .local v4, "factoryClassName":Ljava/lang/String;
    if-nez p1, :cond_c

    .line 148
    const/4 v8, 0x0

    .line 149
    .local v8, "propertiesFile":Ljava/io/File;
    const/4 v10, 0x0

    .line 151
    .local v10, "propertiesFileExists":Z
    :try_start_1
    const-string v15, "java.home"

    invoke-static {v15}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "javah":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 153
    const-string v16, "lib"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "xerces.properties"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 152
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    .end local v8    # "propertiesFile":Ljava/io/File;
    .local v9, "propertiesFile":Ljava/io/File;
    :try_start_2
    invoke-static {v9}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getFileExists(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_a

    move-result v10

    move-object v8, v9

    .line 162
    .end local v6    # "javah":Ljava/lang/String;
    .end local v9    # "propertiesFile":Ljava/io/File;
    .restart local v8    # "propertiesFile":Ljava/io/File;
    :goto_1
    const-class v16, Lmf/org/apache/xerces/impl/dv/ObjectFactory;

    monitor-enter v16

    .line 163
    const/4 v7, 0x0

    .line 164
    .local v7, "loadProperties":Z
    const/4 v5, 0x0

    .line 167
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_3
    sget-wide v18, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fLastModified:J

    const-wide/16 v20, 0x0

    cmp-long v15, v18, v20

    if-ltz v15, :cond_a

    .line 168
    if-eqz v10, :cond_9

    .line 169
    sget-wide v18, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fLastModified:J

    invoke-static {v8}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v20

    sput-wide v20, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fLastModified:J

    cmp-long v15, v18, v20

    if-gez v15, :cond_9

    .line 170
    const/4 v7, 0x1

    .line 185
    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    .line 187
    new-instance v15, Ljava/util/Properties;

    invoke-direct {v15}, Ljava/util/Properties;-><init>()V

    sput-object v15, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    .line 188
    invoke-static {v8}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 189
    sget-object v15, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    invoke-virtual {v15, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    :cond_5
    if-eqz v5, :cond_6

    .line 202
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 162
    :cond_6
    :goto_3
    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 209
    sget-object v15, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    if-eqz v15, :cond_7

    .line 210
    sget-object v15, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 235
    .end local v7    # "loadProperties":Z
    .end local v8    # "propertiesFile":Ljava/io/File;
    .end local v10    # "propertiesFileExists":Z
    :cond_7
    :goto_4
    if-eqz v4, :cond_e

    .line 236
    sget-boolean v15, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

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

    invoke-static {v15}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 237
    :cond_8
    const/4 v15, 0x1

    invoke-static {v4, v2, v15}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_0

    .line 156
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "propertiesFile":Ljava/io/File;
    .restart local v10    # "propertiesFileExists":Z
    :catch_1
    move-exception v3

    .line 158
    .local v3, "e":Ljava/lang/SecurityException;
    :goto_5
    const-wide/16 v16, -0x1

    sput-wide v16, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fLastModified:J

    .line 159
    const/4 v15, 0x0

    sput-object v15, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    goto :goto_1

    .line 173
    .end local v3    # "e":Ljava/lang/SecurityException;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "loadProperties":Z
    :cond_9
    if-nez v10, :cond_4

    .line 174
    const-wide/16 v18, -0x1

    :try_start_6
    sput-wide v18, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fLastModified:J

    .line 175
    const/4 v15, 0x0

    sput-object v15, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fXercesProperties:Ljava/util/Properties;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 191
    :catch_2
    move-exception v14

    .line 192
    .local v14, "x":Ljava/lang/Exception;
    const/4 v15, 0x0

    :try_start_7
    sput-object v15, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    .line 193
    const-wide/16 v18, -0x1

    sput-wide v18, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fLastModified:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 200
    if-eqz v5, :cond_6

    .line 202
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 205
    :catch_3
    move-exception v15

    goto :goto_3

    .line 180
    .end local v14    # "x":Ljava/lang/Exception;
    :cond_a
    if-eqz v10, :cond_4

    .line 181
    const/4 v7, 0x1

    .line 182
    :try_start_9
    invoke-static {v8}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v18

    sput-wide v18, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->fLastModified:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 198
    :catchall_0
    move-exception v15

    .line 200
    if-eqz v5, :cond_b

    .line 202
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 207
    :cond_b
    :goto_6
    :try_start_b
    throw v15

    .line 162
    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v15

    .line 213
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "loadProperties":Z
    .end local v8    # "propertiesFile":Ljava/io/File;
    .end local v10    # "propertiesFileExists":Z
    :cond_c
    const/4 v5, 0x0

    .line 215
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :try_start_c
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 216
    new-instance v11, Ljava/util/Properties;

    invoke-direct {v11}, Ljava/util/Properties;-><init>()V

    .line 217
    .local v11, "props":Ljava/util/Properties;
    invoke-virtual {v11, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 218
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v4

    .line 226
    if-eqz v5, :cond_7

    .line 228
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_4

    .line 231
    :catch_4
    move-exception v15

    goto/16 :goto_4

    .line 219
    .end local v11    # "props":Ljava/util/Properties;
    :catch_5
    move-exception v15

    .line 226
    if-eqz v5, :cond_7

    .line 228
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_4

    .line 231
    :catch_6
    move-exception v15

    goto/16 :goto_4

    .line 224
    :catchall_2
    move-exception v15

    .line 226
    if-eqz v5, :cond_d

    .line 228
    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 233
    :cond_d
    :goto_7
    throw v15

    .line 241
    :cond_e
    invoke-static/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 242
    .local v12, "provider":Ljava/lang/Object;
    if-nez v12, :cond_2

    .line 246
    if-nez p2, :cond_f

    .line 247
    new-instance v15, Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;

    .line 248
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

    .line 247
    invoke-direct/range {v15 .. v17}, Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v15

    .line 251
    :cond_f
    sget-boolean v15, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

    if-eqz v15, :cond_10

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "using fallback, value="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 252
    :cond_10
    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v15}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_0

    .line 205
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

    .line 231
    .end local v7    # "loadProperties":Z
    .end local v8    # "propertiesFile":Ljava/io/File;
    .end local v10    # "propertiesFileExists":Z
    :catch_9
    move-exception v16

    goto :goto_7

    .line 156
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
    .line 272
    sget-boolean v0, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XERCES: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    :cond_0
    return-void
.end method

.method static findClassLoader()Ljava/lang/ClassLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 287
    .local v1, "context":Ljava/lang/ClassLoader;
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 289
    .local v3, "system":Ljava/lang/ClassLoader;
    move-object v0, v3

    .line 291
    .local v0, "chain":Ljava/lang/ClassLoader;
    :goto_0
    if-ne v1, v0, :cond_2

    .line 300
    const-class v4, Lmf/org/apache/xerces/impl/dv/ObjectFactory;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 302
    .local v2, "current":Ljava/lang/ClassLoader;
    move-object v0, v3

    .line 304
    :goto_1
    if-ne v2, v0, :cond_0

    .line 332
    .end local v2    # "current":Ljava/lang/ClassLoader;
    .end local v3    # "system":Ljava/lang/ClassLoader;
    :goto_2
    return-object v3

    .line 309
    .restart local v2    # "current":Ljava/lang/ClassLoader;
    .restart local v3    # "system":Ljava/lang/ClassLoader;
    :cond_0
    if-nez v0, :cond_1

    move-object v3, v2

    .line 317
    goto :goto_2

    .line 312
    :cond_1
    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 303
    goto :goto_1

    .line 320
    .end local v2    # "current":Ljava/lang/ClassLoader;
    :cond_2
    if-nez v0, :cond_3

    move-object v3, v1

    .line 332
    goto :goto_2

    .line 327
    :cond_3
    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 290
    goto :goto_0
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p0, "factoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    const/16 v11, 0x50

    const/4 v8, 0x0

    .line 419
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "META-INF/services/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 420
    .local v6, "serviceId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 423
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 425
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-static {v0, v6}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 428
    if-nez v4, :cond_0

    .line 429
    const-class v9, Lmf/org/apache/xerces/impl/dv/ObjectFactory;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 430
    .local v1, "current":Ljava/lang/ClassLoader;
    if-eq v0, v1, :cond_0

    .line 431
    move-object v0, v1

    .line 432
    invoke-static {v0, v6}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 436
    .end local v1    # "current":Ljava/lang/ClassLoader;
    :cond_0
    if-nez v4, :cond_2

    .line 498
    :cond_1
    :goto_0
    return-object v8

    .line 441
    :cond_2
    sget-boolean v9, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "found jar resource="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 442
    const-string v10, " using ClassLoader: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 441
    invoke-static {v9}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 462
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

    .line 467
    .local v5, "rd":Ljava/io/BufferedReader;
    :goto_1
    const/4 v3, 0x0

    .line 471
    .local v3, "factoryClassName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 479
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 485
    :goto_2
    if-eqz v3, :cond_1

    .line 486
    const-string v9, ""

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 487
    sget-boolean v8, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "found in resource, value="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 487
    invoke-static {v8}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 494
    :cond_4
    const/4 v8, 0x0

    invoke-static {v3, v0, v8}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 463
    .end local v3    # "factoryClassName":Ljava/lang/String;
    .end local v5    # "rd":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 464
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .restart local v5    # "rd":Ljava/io/BufferedReader;
    goto :goto_1

    .line 472
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "factoryClassName":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 479
    .local v7, "x":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 482
    :catch_2
    move-exception v9

    goto :goto_0

    .line 476
    .end local v7    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 479
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 483
    :goto_3
    throw v8

    .line 482
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
            Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 369
    .local v4, "security":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_1

    .line 370
    const-string v6, "."

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 371
    .local v1, "lastDot":I
    move-object v2, p0

    .line 372
    .local v2, "packageName":Ljava/lang/String;
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 373
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    .line 376
    .end local v1    # "lastDot":I
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    .line 386
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 408
    .local v3, "providerClass":Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 389
    .end local v3    # "providerClass":Ljava/lang/Class;
    :cond_2
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    .line 390
    .end local v3    # "providerClass":Ljava/lang/Class;
    :catch_0
    move-exception v5

    .line 391
    .local v5, "x":Ljava/lang/ClassNotFoundException;
    if-eqz p2, :cond_5

    .line 393
    const-class v6, Lmf/org/apache/xerces/impl/dv/ObjectFactory;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 394
    .local v0, "current":Ljava/lang/ClassLoader;
    if-nez v0, :cond_3

    .line 395
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 396
    .restart local v3    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    .end local v3    # "providerClass":Ljava/lang/Class;
    :cond_3
    if-eq p1, v0, :cond_4

    .line 397
    move-object p1, v0

    .line 398
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 399
    .restart local v3    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    .line 400
    .end local v3    # "providerClass":Ljava/lang/Class;
    :cond_4
    throw v5

    .line 403
    .end local v0    # "current":Ljava/lang/ClassLoader;
    :cond_5
    throw v5
.end method

.method private static isDebugEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 262
    :try_start_0
    const-string v2, "xerces.debug"

    invoke-static {v2}, Lmf/org/apache/xerces/impl/dv/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 267
    :cond_0
    :goto_0
    return v1

    .line 266
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
            Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 344
    :try_start_0
    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 345
    .local v1, "providerClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 346
    .local v0, "instance":Ljava/lang/Object;
    sget-boolean v3, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "created new instance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 347
    const-string v4, " using ClassLoader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-static {v3}, Lmf/org/apache/xerces/impl/dv/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 348
    :cond_0
    return-object v0

    .line 349
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v1    # "providerClass":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 350
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;

    .line 351
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

    .line 350
    invoke-direct {v3, v4, v2}, Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 352
    .end local v2    # "x":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 353
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;

    .line 354
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

    .line 353
    invoke-direct {v3, v4, v2}, Lmf/org/apache/xerces/impl/dv/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method