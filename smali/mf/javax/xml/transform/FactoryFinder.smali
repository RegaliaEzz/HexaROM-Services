.class Lmf/javax/xml/transform/FactoryFinder;
.super Ljava/lang/Object;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
    }
.end annotation


# static fields
.field static cacheProps:Ljava/util/Properties;

.field private static debug:Z

.field static volatile firstTime:Z

.field static ss:Lmf/javax/xml/transform/SecuritySupport;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 69
    sput-boolean v3, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    .line 74
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    sput-object v4, Lmf/javax/xml/transform/FactoryFinder;->cacheProps:Ljava/util/Properties;

    .line 80
    sput-boolean v2, Lmf/javax/xml/transform/FactoryFinder;->firstTime:Z

    .line 86
    new-instance v4, Lmf/javax/xml/transform/SecuritySupport;

    invoke-direct {v4}, Lmf/javax/xml/transform/SecuritySupport;-><init>()V

    sput-object v4, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    .line 93
    :try_start_0
    sget-object v4, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    const-string/jumbo v5, "jaxp.debug"

    invoke-virtual {v4, v5}, Lmf/javax/xml/transform/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    sput-boolean v2, Lmf/javax/xml/transform/FactoryFinder;->debug:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 95
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "se":Ljava/lang/SecurityException;
    sput-boolean v3, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dPrint(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 103
    sget-boolean v0, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JAXP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 14
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 254
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "find factoryId ="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 257
    :try_start_0
    sget-object v7, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v7, p0}, Lmf/javax/xml/transform/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, "systemProp":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 259
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "found system property, value="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 260
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 306
    .end local v6    # "systemProp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 263
    :catch_0
    move-exception v5

    .line 264
    .local v5, "se":Ljava/lang/SecurityException;
    sget-boolean v7, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 269
    .end local v5    # "se":Ljava/lang/SecurityException;
    :cond_1
    const/4 v3, 0x0

    .line 270
    .local v3, "factoryClassName":Ljava/lang/String;
    :try_start_1
    sget-boolean v7, Lmf/javax/xml/transform/FactoryFinder;->firstTime:Z

    if-eqz v7, :cond_3

    .line 271
    sget-object v8, Lmf/javax/xml/transform/FactoryFinder;->cacheProps:Ljava/util/Properties;

    monitor-enter v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :try_start_2
    sget-boolean v7, Lmf/javax/xml/transform/FactoryFinder;->firstTime:Z

    if-eqz v7, :cond_2

    .line 273
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v9, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    const-string/jumbo v10, "java.home"

    invoke-virtual {v9, v10}, Lmf/javax/xml/transform/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 274
    const-string/jumbo v9, "lib"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "jaxp.properties"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 273
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "configFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v2, "f":Ljava/io/File;
    const/4 v7, 0x0

    sput-boolean v7, Lmf/javax/xml/transform/FactoryFinder;->firstTime:Z

    .line 277
    sget-object v7, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v7, v2}, Lmf/javax/xml/transform/SecuritySupport;->doesFileExist(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 278
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Read properties file "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 279
    sget-object v7, Lmf/javax/xml/transform/FactoryFinder;->cacheProps:Ljava/util/Properties;

    sget-object v9, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v9, v2}, Lmf/javax/xml/transform/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 271
    .end local v0    # "configFile":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    :cond_3
    :try_start_3
    sget-object v7, Lmf/javax/xml/transform/FactoryFinder;->cacheProps:Ljava/util/Properties;

    invoke-virtual {v7, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 286
    if-eqz v3, :cond_4

    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "found in $java.home/jaxp.properties, value="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 288
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v3, v7, v8, v9, v10}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    goto/16 :goto_0

    .line 271
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 291
    :catch_1
    move-exception v1

    .line 292
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v7, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 296
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    invoke-static {p0}, Lmf/javax/xml/transform/FactoryFinder;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 297
    .local v4, "provider":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 300
    if-nez p1, :cond_5

    .line 301
    new-instance v7, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;

    .line 302
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Provider for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cannot be found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 301
    invoke-direct {v7, v8, v13}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 305
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "loaded from fallback value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 306
    invoke-static {p1, v13, v11, v12, v11}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .param p0, "factoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 317
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "META-INF/services/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 318
    .local v5, "serviceId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 321
    .local v3, "is":Ljava/io/InputStream;
    sget-object v9, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v9}, Lmf/javax/xml/transform/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 322
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v6, 0x0

    .line 323
    .local v6, "useBSClsLoader":Z
    if-eqz v0, :cond_2

    .line 324
    sget-object v9, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v9, v0, v5}, Lmf/javax/xml/transform/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 327
    if-nez v3, :cond_0

    .line 328
    const-class v9, Lmf/javax/xml/transform/FactoryFinder;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 329
    sget-object v9, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v9, v0, v5}, Lmf/javax/xml/transform/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 330
    const/4 v6, 0x1

    .line 339
    :cond_0
    :goto_0
    if-nez v3, :cond_3

    .line 378
    :cond_1
    :goto_1
    return-object v8

    .line 334
    :cond_2
    const-class v9, Lmf/javax/xml/transform/FactoryFinder;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 335
    sget-object v9, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v9, v0, v5}, Lmf/javax/xml/transform/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 336
    const/4 v6, 0x1

    goto :goto_0

    .line 344
    :cond_3
    sget-boolean v9, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    if-eqz v9, :cond_4

    .line 345
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "found jar resource="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " using ClassLoader: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 350
    :cond_4
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v3, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .local v4, "rd":Ljava/io/BufferedReader;
    :goto_2
    const/4 v2, 0x0

    .line 360
    .local v2, "factoryClassName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    if-eqz v2, :cond_1

    const-string v9, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 368
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "found in resource, value="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    .line 374
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v2, v0, v8, v6, v9}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 352
    .end local v2    # "factoryClassName":Ljava/lang/String;
    .end local v4    # "rd":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v4    # "rd":Ljava/io/BufferedReader;
    goto :goto_2

    .line 362
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "factoryClassName":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 364
    .local v7, "x":Ljava/io/IOException;
    goto :goto_1
.end method

.method private static getProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)Ljava/lang/Class;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .param p3, "useBSClsLoader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 123
    if-nez p1, :cond_2

    .line 124
    if-eqz p3, :cond_0

    .line 125
    const/4 v1, 0x1

    :try_start_0
    const-class v2, Lmf/javax/xml/transform/FactoryFinder;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 143
    :goto_0
    return-object v1

    .line 127
    :cond_0
    sget-object v1, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v1}, Lmf/javax/xml/transform/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 128
    if-nez p1, :cond_1

    .line 129
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-direct {v1}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e1":Ljava/lang/ClassNotFoundException;
    if-eqz p2, :cond_3

    .line 143
    const-class v1, Lmf/javax/xml/transform/FactoryFinder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 132
    .end local v0    # "e1":Ljava/lang/ClassNotFoundException;
    :cond_1
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 146
    .restart local v0    # "e1":Ljava/lang/ClassNotFoundException;
    :cond_3
    throw v0
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-static {p0, p1, p2, v0, v0}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "doFallback"    # Z
    .param p3, "useBSClsLoader"    # Z
    .param p4, "useServicesMechanism"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 192
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lmf/javax/xml/transform/FactoryFinder;->getProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)Ljava/lang/Class;

    move-result-object v1

    .line 193
    .local v1, "providerClass":Ljava/lang/Class;
    const/4 v0, 0x0

    .line 194
    .local v0, "instance":Ljava/lang/Object;
    if-nez p4, :cond_0

    .line 195
    invoke-static {v1}, Lmf/javax/xml/transform/FactoryFinder;->newInstanceNoServiceLoader(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 197
    .end local v0    # "instance":Ljava/lang/Object;
    :cond_0
    if-nez v0, :cond_1

    .line 198
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 200
    :cond_1
    sget-boolean v3, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    if-eqz v3, :cond_2

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "created new instance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 202
    const-string v4, " using ClassLoader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 201
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    :cond_2
    return-object v0

    .line 206
    .end local v1    # "providerClass":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 207
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;

    .line 208
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

    .line 207
    invoke-direct {v3, v4, v2}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 210
    .end local v2    # "x":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 211
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;

    .line 212
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

    .line 211
    invoke-direct {v3, v4, v2}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private static newInstanceNoServiceLoader(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 224
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-nez v3, :cond_0

    .line 236
    :goto_0
    return-object v2

    .line 230
    :cond_0
    :try_start_0
    const-string/jumbo v3, "newTransformerFactoryNoServiceLoader"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 229
    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 232
    .local v0, "creationMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 233
    .end local v0    # "creationMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "exc":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 235
    .end local v1    # "exc":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 236
    .local v1, "exc":Ljava/lang/Exception;
    goto :goto_0
.end method
