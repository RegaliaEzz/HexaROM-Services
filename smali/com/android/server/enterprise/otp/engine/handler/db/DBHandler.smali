.class public Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHandler.java"


# static fields
.field private static sInstance:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSqlDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->sInstance:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 47
    const-string v3, "OtpDatabase.db"

    const/4 v4, 0x3

    invoke-direct {p0, p1, v3, v5, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 43
    iput-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    iput-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    .line 48
    const-string v1, ""

    .line 49
    .local v1, "before":Ljava/lang/String;
    const-string v0, ""

    .line 50
    .local v0, "after":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->dbFileExists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    const-string v3, "/data/system/OtpDatabase.db"

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    invoke-direct {p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->dbFileExists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    const-string v3, "/data/system/OtpDatabase.db"

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 58
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    .line 60
    const-string v3, "DBHandler::hmac mismatch, overwriting hmac"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 61
    const-string v3, "/data/system/OtpDatabase.db"

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getDbHmacKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getHmacSHA1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "hmac":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBHandler::update - hmac = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->setOtpDbHmac(Ljava/lang/String;)I

    .line 66
    .end local v2    # "hmac":Ljava/lang/String;
    :cond_2
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private declared-synchronized GetColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 981
    monitor-enter p0

    const/4 v2, 0x0

    .line 982
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 984
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "select * from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " limit 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 985
    if-eqz v0, :cond_0

    .line 986
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, v3

    .line 991
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    if-eqz v0, :cond_1

    .line 992
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 994
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v2

    .line 988
    :catch_0
    move-exception v1

    .line 989
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DBHandler::GetColumns NullPointerException [tableName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 991
    if-eqz v0, :cond_1

    .line 992
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 981
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 991
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_2

    .line 992
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static declared-synchronized contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 891
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    const-class v5, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    monitor-enter v5

    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    :try_start_0
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 892
    .local v1, "e":Ljava/lang/Object;, "TT;"
    if-eq v1, p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 893
    :cond_0
    const/4 v4, 0x1

    .line 895
    .end local v1    # "e":Ljava/lang/Object;, "TT;"
    :goto_1
    monitor-exit v5

    return v4

    .line 891
    .restart local v1    # "e":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 895
    .end local v1    # "e":Ljava/lang/Object;, "TT;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 891
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private dbFileExists()Z
    .locals 2

    .prologue
    .line 1062
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/OtpDatabase.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1063
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private getHmacSHA1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1041
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 1042
    :cond_0
    const-string v4, "DBIntegrity::getHmacSHA1 - input string is null"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 1043
    const/4 v4, 0x0

    .line 1058
    :goto_0
    return-object v4

    .line 1045
    :cond_1
    const/4 v1, 0x0

    .line 1048
    .local v1, "mac":Ljavax/crypto/Mac;
    :try_start_0
    const-string v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 1049
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1050
    .local v3, "sk":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1051
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 1058
    .local v2, "result":[B
    const/16 v4, 0x8

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1052
    .end local v2    # "result":[B
    .end local v3    # "sk":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v0

    .line 1054
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DBIntegrity::getHmacSHA1 - Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 1055
    const-string v4, ""

    goto :goto_0

    .line 1052
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 70
    const-class v1, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->sInstance:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    if-nez v0, :cond_0

    .line 71
    const-string v0, "OtpDbHelper::getInstance New instance created"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->sInstance:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    .line 74
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->sInstance:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1012
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1013
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 1014
    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 1015
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 1019
    .local v7, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1020
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v3, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1021
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1022
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1023
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1024
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1028
    .end local v4    # "line":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v9

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v5, :cond_0

    .line 1029
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1030
    :cond_0
    if-eqz v2, :cond_1

    .line 1031
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DBIntegrity::getStringFromFile - Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 1036
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return-object v7

    .line 1026
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    .line 1028
    if-eqz v6, :cond_3

    .line 1029
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1030
    :cond_3
    if-eqz v3, :cond_4

    .line 1031
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .line 1035
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1033
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1028
    .end local v4    # "line":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v9

    goto :goto_1

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static declared-synchronized join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "delim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 998
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v4, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    monitor-enter v4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 999
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1000
    .local v2, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1001
    if-eqz v1, :cond_0

    .line 1002
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1005
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 998
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "num":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private declared-synchronized onUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 900
    monitor-enter p0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 902
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->GetColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 904
    .local v1, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALTER table "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RENAME TO temp_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 906
    const-string v3, "TokenTable"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 907
    const-string v3, "create table TokenTable(token_id varchar primary key, display_name varchar, algo_type integer, algo_params varchar);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 913
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->GetColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 915
    const-string v3, ","

    invoke-static {v1, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, "cols":Ljava/lang/String;
    const-string v3, "INSERT INTO %s (%s) SELECT %s from temp_%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 919
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP table temp_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 920
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBHandler::onUpgradeTable Upgrade Successful [tableName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    .end local v0    # "cols":Ljava/lang/String;
    .end local v1    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 908
    .restart local v1    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    const-string v3, "PolicyTable"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 909
    const-string v3, "create table PolicyTable(token_id varchar primary key, pin_usage_mode varchar, max_failed_attempts integer,min_length integer default 0, max_length integer, encoding varchar, start_date varchar, expiry_date varchar, number_of_transactions integer, current_number_of_transactions integer default 0);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 922
    .end local v1    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 923
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBHandler::onUpgradeTable Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 900
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 910
    .restart local v1    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_3
    const-string v3, "ProvisionTable"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 911
    const-string v3, "create table ProvisionTable(token_id varchar primary key, vendor_token_id varchar, token_state integer default 1, container_id integer default 0, whitelist_pkg varchar, signer_info varchar );"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized onUpgradeTableWithAddColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 931
    monitor-enter p0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 932
    const/4 v0, 0x0

    .line 934
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "SELECT * FROM ProvisionTable"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 935
    const/4 v4, -0x1

    const-string/jumbo v5, "vendor_token_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 936
    const-string v4, "DBHandler::onUpgradeTableWithAddColumn: Table already contains VendorTokenId column."

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 937
    const-string v4, "ProvisionTable"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->onUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 974
    :goto_0
    if-eqz v0, :cond_0

    .line 975
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 940
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_2
    const-string v4, "DBHandler::onUpgradeTableWithAddColumn: Table doesn\'t contain VendorTokenId column, adding."

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 941
    const-string/jumbo v2, "token_id, vendor_token_id, token_state, container_id, whitelist_pkg, signer_info"

    .line 948
    .local v2, "postColumnList":Ljava/lang/String;
    const-string/jumbo v3, "token_id, token_id, token_state, container_id, whitelist_pkg, signer_info"

    .line 956
    .local v3, "preColumnList":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALTER table "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RENAME TO temp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 958
    const-string v4, "create table ProvisionTable(token_id varchar primary key, vendor_token_id varchar, token_state integer default 1, container_id integer default 0, whitelist_pkg varchar, signer_info varchar );"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 960
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query = INSERT INTO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM temp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 962
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM temp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 965
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP table temp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 967
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DBHandler::onUpgradeTableWithAddColumn Upgrade Successful [tableName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 971
    .end local v2    # "postColumnList":Ljava/lang/String;
    .end local v3    # "preColumnList":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 972
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DBHandler::onUpgradeTableWithAddColumn Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 974
    if-eqz v0, :cond_0

    .line 975
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 931
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 974
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_2

    .line 975
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method public declared-synchronized checkPolicy(Ljava/lang/String;)I
    .locals 9
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 429
    monitor-enter p0

    :try_start_0
    new-instance v7, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;

    invoke-direct {v7}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;-><init>()V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, v8, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;

    .line 430
    .local v5, "pd":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    if-eqz v5, :cond_1

    .line 431
    iget-object v3, v5, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mExpiryDate:Ljava/lang/String;

    .line 432
    .local v3, "expiryDate":Ljava/lang/String;
    iget v4, v5, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mNumberOfTransactions:I

    .line 433
    .local v4, "noOfTrans":I
    iget v1, v5, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mCurrentNoOfTransactions:I

    .line 435
    .local v1, "currentTrans":I
    if-eqz v4, :cond_0

    add-int/lit8 v7, v1, 0x1

    if-lt v4, v7, :cond_3

    .line 436
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->stringToDateConverter(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 437
    .local v2, "eDate":Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 439
    .local v0, "currentDate":Ljava/util/Date;
    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 451
    .end local v0    # "currentDate":Ljava/util/Date;
    .end local v1    # "currentTrans":I
    .end local v2    # "eDate":Ljava/util/Date;
    .end local v3    # "expiryDate":Ljava/lang/String;
    .end local v4    # "noOfTrans":I
    :cond_1
    :goto_0
    monitor-exit p0

    return v6

    .line 442
    .restart local v0    # "currentDate":Ljava/util/Date;
    .restart local v1    # "currentTrans":I
    .restart local v2    # "eDate":Ljava/util/Date;
    .restart local v3    # "expiryDate":Ljava/lang/String;
    .restart local v4    # "noOfTrans":I
    :cond_2
    const/16 v6, 0x302

    :try_start_1
    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->setTokenState(Ljava/lang/String;I)I

    .line 451
    .end local v0    # "currentDate":Ljava/util/Date;
    .end local v2    # "eDate":Ljava/util/Date;
    :goto_1
    const/16 v6, 0x409

    goto :goto_0

    .line 445
    :cond_3
    const/16 v6, 0x302

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->setTokenState(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 429
    .end local v1    # "currentTrans":I
    .end local v3    # "expiryDate":Ljava/lang/String;
    .end local v4    # "noOfTrans":I
    .end local v5    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public deleteDskppSession(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 811
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->startDbEdit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 816
    :goto_0
    return v0

    .line 814
    :cond_0
    new-instance v1, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;

    invoke-direct {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->deleteEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 815
    .local v0, "ret":Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->endDbEdit()V

    goto :goto_0
.end method

.method protected declared-synchronized finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 823
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 824
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    monitor-exit p0

    return-void

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInternalTokenId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "vendorTokenId"    # Ljava/lang/String;

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "callerPackage":Ljava/lang/String;
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v1, v2, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 275
    .local v1, "containerId":I
    new-instance v2, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->getTokenId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 272
    .end local v0    # "callerPackage":Ljava/lang/String;
    .end local v1    # "containerId":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getOtpToken(Ljava/lang/String;)Lcom/sec/enterprise/knox/otp/common/OTPToken;
    .locals 6
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v4, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    .line 337
    .local v1, "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    if-eqz v1, :cond_2

    .line 338
    const-string v4, "TOKEN_STATE"

    iget v5, v1, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenState:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    new-instance v4, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;

    invoke-direct {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;-><init>()V

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;

    .line 343
    .local v3, "td":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    if-eqz v3, :cond_0

    .line 344
    const-string v4, "OTP_TOKEN_ID"

    iget-object v5, v1, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mVendorTokenId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v4, "DISPLAY_NAME"

    iget-object v5, v3, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v4, "OTP_OATH_PROTOCOL"

    iget v5, v3, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoType:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    iget v4, v3, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoType:I

    const/16 v5, 0x102

    if-ne v4, v5, :cond_3

    .line 348
    const-string v4, "CHALLENGE_NEEDED"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    new-instance v4, Lcom/android/server/enterprise/otp/OCRACheck;

    iget-object v5, v3, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoParams:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/otp/OCRACheck;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/OCRACheck;->isPinRequired()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    const-string v4, "PIN_NEEDED"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    :cond_0
    :goto_0
    new-instance v4, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;

    invoke-direct {v4}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;-><init>()V

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;

    .line 358
    .local v2, "pod":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    if-eqz v2, :cond_1

    .line 359
    const-string v4, "CODE_PREFIX"

    iget-object v5, v2, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mPinUsageMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 360
    const-string v4, "PIN_NEEDED"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    :cond_1
    new-instance v4, Lcom/sec/enterprise/knox/otp/common/OTPToken;

    invoke-direct {v4, v0}, Lcom/sec/enterprise/knox/otp/common/OTPToken;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "pod":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    .end local v3    # "td":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    :goto_1
    monitor-exit p0

    return-object v4

    .line 340
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 352
    .restart local v3    # "td":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    :cond_3
    :try_start_1
    iget v4, v3, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoType:I

    const/16 v5, 0x101

    if-ne v4, v5, :cond_0

    .line 353
    const-string v4, "TIME_STEP"

    iget-object v5, v3, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoParams:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 334
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    .end local v3    # "td":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getOtpTokenCount()I
    .locals 4

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    const-string v2, "DBHandler : getOtpTokenCount | ENTER"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, "count":I
    new-instance v2, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->getAllEntries(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    .line 328
    .local v0, "allData":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    if-eqz v0, :cond_0

    .line 329
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 330
    :cond_0
    monitor-exit p0

    return v1

    .line 325
    .end local v0    # "allData":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    .end local v1    # "count":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getOtpTokenList(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pkgSign"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/otp/common/OTPToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v8, "tokenList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/otp/common/OTPToken;>;"
    new-instance v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V

    iget-object v10, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->getAllEntries(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v1

    .line 290
    .local v1, "allData":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    if-eqz v1, :cond_2

    .line 291
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    .local v3, "data":Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    if-eqz v3, :cond_0

    .line 294
    :try_start_1
    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    move-object v9, v0

    iget v2, v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mContainerId:I

    .line 295
    .local v2, "allowedContainer":I
    new-instance v6, Ljava/util/ArrayList;

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 297
    .local v6, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mSingnerInfo:Ljava/lang/String;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 300
    .local v7, "signList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    if-ne p3, v2, :cond_0

    .line 302
    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v6, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 305
    :cond_1
    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    .end local v3    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    iget-object v9, v3, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/sec/enterprise/knox/otp/common/OTPToken;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 309
    .end local v2    # "allowedContainer":I
    .end local v6    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "signList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 310
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DBHandler::getOtpTokenList: Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 287
    .end local v1    # "allData":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "tokenList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/otp/common/OTPToken;>;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 316
    .restart local v1    # "allData":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    .restart local v8    # "tokenList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/otp/common/OTPToken;>;"
    :cond_2
    monitor-exit p0

    return-object v8
.end method

.method public declared-synchronized getOtpTokensInContainer(I)Ljava/util/List;
    .locals 8
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v5, "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v6}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->getAllEntries(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v1

    .line 377
    .local v1, "allData":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    if-eqz v1, :cond_1

    .line 378
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    .line 379
    .local v3, "data":Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    if-eqz v3, :cond_0

    .line 380
    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    move-object v6, v0

    iget v2, v6, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mContainerId:I

    .line 381
    .local v2, "allowedContainer":I
    if-ne p1, v2, :cond_0

    .line 382
    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    .end local v3    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    iget-object v6, v3, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 374
    .end local v1    # "allData":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    .end local v2    # "allowedContainer":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 388
    .restart local v1    # "allData":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    .restart local v5    # "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    return-object v5
.end method

.method public declared-synchronized getSqlDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVendorOtpTokenList(Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v7, "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v8}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V

    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->getAllEntries(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v1

    .line 401
    .local v1, "allData":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    if-eqz v1, :cond_1

    .line 402
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .local v3, "data":Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    if-eqz v3, :cond_0

    .line 405
    :try_start_1
    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    move-object v8, v0

    iget v2, v8, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mContainerId:I

    .line 406
    .local v2, "allowedContainer":I
    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v6, v8, v9

    .line 408
    .local v6, "pkg":Ljava/lang/String;
    if-eqz v6, :cond_0

    if-ne p2, v2, :cond_0

    .line 409
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 410
    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    .end local v3    # "data":Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;
    iget-object v8, v3, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    .end local v2    # "allowedContainer":I
    .end local v6    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 413
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DBHandler::getOtpTokenList: Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 398
    .end local v1    # "allData":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 419
    .restart local v1    # "allData":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;>;"
    .restart local v7    # "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    return-object v7
.end method

.method public declared-synchronized getVendorTokenId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .local v0, "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    if-nez v0, :cond_0

    .line 259
    const/4 v1, 0x0

    .line 261
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mVendorTokenId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 257
    .end local v0    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized incrementTransactionCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 461
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->startDbEdit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 462
    const/16 v1, 0x40d

    .line 473
    :goto_0
    monitor-exit p0

    return v1

    .line 464
    :cond_0
    const/4 v1, 0x0

    .line 465
    .local v1, "ret":I
    :try_start_1
    new-instance v2, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;

    invoke-direct {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;-><init>()V

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;

    .line 466
    .local v0, "pd":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    if-eqz v0, :cond_1

    .line 467
    iget v2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mCurrentNoOfTransactions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mCurrentNoOfTransactions:I

    .line 468
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->updateEntry(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 472
    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->endDbEdit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 461
    .end local v0    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 470
    .restart local v0    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    .restart local v1    # "ret":I
    :cond_1
    const/16 v1, 0x4ff

    goto :goto_1
.end method

.method public declared-synchronized isAccessToTokenAllowed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "signerInfo"    # Ljava/lang/String;

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    new-instance v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V

    iget-object v10, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9, v10, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    .line 491
    .local v5, "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    if-eqz v5, :cond_3

    .line 492
    iget v9, v5, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mContainerId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p2, v9, :cond_0

    .line 493
    const/16 v9, 0x40a

    .line 517
    :goto_0
    monitor-exit p0

    return v9

    .line 496
    :cond_0
    :try_start_1
    iget-object v9, v5, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 499
    .local v7, "pkgList":[Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-static {v7, p3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 501
    iget-object v9, v5, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mSingnerInfo:Ljava/lang/String;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 502
    .local v8, "signList":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 503
    .local v2, "i":I
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 504
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v6, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    aget-object v9, v8, v2

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    aget-object v9, v8, v2

    invoke-virtual {v9, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_2

    .line 507
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 508
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 503
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 511
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "pkgList":[Ljava/lang/String;
    .end local v8    # "signList":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 512
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DBHandler::isAccessToTokenAllowed: Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 517
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/16 v9, 0x402

    goto :goto_0

    .line 489
    .end local v5    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized isAdminAccessToTokenAllowed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "signerInfo"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 533
    monitor-enter p0

    :try_start_0
    new-instance v5, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v5}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v6, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    .line 535
    .local v1, "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    if-eqz v1, :cond_2

    .line 536
    iget v5, v1, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mContainerId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p2, v5, :cond_1

    .line 537
    const/16 v4, 0x40a

    .line 554
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 540
    :cond_1
    :try_start_1
    iget-object v5, v1, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "pkgList":[Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mSingnerInfo:Ljava/lang/String;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "signList":[Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 554
    .end local v2    # "pkgList":[Ljava/lang/String;
    .end local v3    # "signList":[Ljava/lang/String;
    :cond_2
    :goto_1
    const/16 v4, 0x402

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DBHandler::isAdminAccessToTokenAllowed: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 533
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized isGenerateOtpInputValid(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 11
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "generateData"    # Landroid/os/Bundle;

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    const-string v9, "DBHandler::isGenerateOtpInputValid Enter"

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 590
    const/4 v5, 0x0

    .line 591
    .local v5, "ret":I
    const-string v9, "OCRA_PIN"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 592
    .local v4, "pin":Ljava/lang/String;
    const-string v9, "OCRA_CHALLENGE"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "challenge":Ljava/lang/String;
    const-string v9, "OCRA_SESSION"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 594
    .local v7, "session":Ljava/lang/String;
    const-string v9, "SDK_VERSION_DEFINED"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 596
    .local v6, "sdkVersion":Ljava/lang/String;
    new-instance v9, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;

    invoke-direct {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;-><init>()V

    iget-object v10, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9, v10, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;

    .line 597
    .local v3, "pd":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    new-instance v9, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;

    invoke-direct {v9}, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;-><init>()V

    iget-object v10, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9, v10, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;

    .line 599
    .local v8, "td":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    if-eqz v3, :cond_1

    const-string v9, "CODE_PREFIX"

    iget-object v10, v3, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mPinUsageMode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 601
    :cond_0
    const/16 v5, 0x406

    .line 603
    :cond_1
    if-nez v5, :cond_3

    if-eqz v8, :cond_3

    iget v9, v8, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoType:I

    const/16 v10, 0x102

    if-ne v9, v10, :cond_3

    .line 604
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_4

    .line 605
    :cond_2
    const/16 v5, 0x405

    .line 656
    :cond_3
    :goto_0
    monitor-exit p0

    return v5

    .line 606
    :cond_4
    :try_start_1
    iget-object v9, v8, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoParams:Ljava/lang/String;

    if-eqz v9, :cond_e

    .line 607
    new-instance v2, Lcom/android/server/enterprise/otp/OCRACheck;

    iget-object v9, v8, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoParams:Ljava/lang/String;

    invoke-direct {v2, v9}, Lcom/android/server/enterprise/otp/OCRACheck;-><init>(Ljava/lang/String;)V

    .line 608
    .local v2, "ocraCheck":Lcom/android/server/enterprise/otp/OCRACheck;
    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/OCRACheck;->isPinRequired()Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6

    .line 609
    :cond_5
    const-string v9, "DBHandler:isGenerateOtpInputValid Pin is required type"

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 610
    const/16 v5, 0x406

    .line 613
    :cond_6
    if-nez v5, :cond_8

    .line 614
    const-string v9, "1.0.0"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_d

    .line 616
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/OCRACheck;->getChallengeType()I

    move-result v9

    const/16 v10, 0x202

    if-ne v9, v10, :cond_a

    .line 617
    const-string v9, "[a-zA-Z0-9]*"

    invoke-virtual {v0, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 618
    const-string v9, "DBHandler:isGenerateOtpInputValid Challenge should be alpha-numeric in format"

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 619
    const/16 v5, 0x405

    .line 637
    :cond_7
    :goto_1
    const-string v9, "OCRA_CHALLENGE"

    invoke-virtual {p2, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 648
    :cond_8
    :goto_2
    if-nez v5, :cond_3

    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/OCRACheck;->isSessionRequired()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    if-eqz v9, :cond_3

    .line 649
    const/16 v5, 0x404

    goto :goto_0

    .line 622
    :cond_9
    :try_start_4
    const-string v9, "UTF-8"

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 624
    :cond_a
    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/OCRACheck;->getChallengeType()I

    move-result v9

    const/16 v10, 0x141

    if-ne v9, v10, :cond_c

    .line 625
    const-string v9, "[0-9]*"

    invoke-virtual {v0, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 626
    const-string v9, "DBHandler:isGenerateOtpInputValid Challenge should be numeric in format"

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 627
    const/16 v5, 0x405

    goto :goto_1

    .line 630
    :cond_b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 632
    :cond_c
    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/OCRACheck;->getChallengeType()I

    move-result v9

    const/16 v10, 0x201

    if-ne v9, v10, :cond_7

    const-string v9, "[a-fA-F0-9]*"

    invoke-virtual {v0, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 634
    const-string v9, "DBHandler:isGenerateOtpInputValid Challenge should be HEX in format"

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 635
    const/16 v5, 0x405

    goto :goto_1

    .line 638
    :catch_0
    move-exception v1

    .line 639
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_5
    const-string v9, "DBHandler:isGenerateOtpInputValid - challenge encoding wrong type."

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 640
    const/16 v5, 0x405

    .line 641
    goto :goto_2

    .line 642
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_d
    const-string v9, "[a-fA-F0-9]*"

    invoke-virtual {v0, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 643
    const-string v9, "DBHandler:isGenerateOtpInputValid Challenge should be HEX in format"

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 644
    const/16 v5, 0x405

    goto :goto_2

    .line 652
    .end local v2    # "ocraCheck":Lcom/android/server/enterprise/otp/OCRACheck;
    :cond_e
    const-string v9, "DBHandler:isGenerateOtpInputValid OcraSuite not found in DB"

    invoke-static {v9}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 653
    const/16 v5, 0x401

    goto/16 :goto_0

    .line 589
    .end local v0    # "challenge":Ljava/lang/String;
    .end local v3    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    .end local v4    # "pin":Ljava/lang/String;
    .end local v5    # "ret":I
    .end local v6    # "sdkVersion":Ljava/lang/String;
    .end local v7    # "session":Ljava/lang/String;
    .end local v8    # "td":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized isHardwareToken(Ljava/lang/String;)I
    .locals 1
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 569
    monitor-enter p0

    :try_start_0
    const-string v0, "DBHandler::isHardwareToken - NOT SUPPORTED"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    const/16 v0, 0x4ff

    monitor-exit p0

    return v0

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 829
    monitor-enter p0

    :try_start_0
    const-string v0, "OtpDbHelper::onCreate Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 830
    const-string v0, "create table ProvisionTable(token_id varchar primary key, vendor_token_id varchar, token_state integer default 1, container_id integer default 0, whitelist_pkg varchar, signer_info varchar );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 831
    const-string v0, "OtpDbHelper::onCreate provision data table created"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 832
    const-string v0, "create table TokenTable(token_id varchar primary key, display_name varchar, algo_type integer, algo_params varchar);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 833
    const-string v0, "OtpDbHelper::onCreate token data table created"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 834
    const-string v0, "create table PolicyTable(token_id varchar primary key, pin_usage_mode varchar, max_failed_attempts integer,min_length integer default 0, max_length integer, encoding varchar, start_date varchar, expiry_date varchar, number_of_transactions integer, current_number_of_transactions integer default 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 835
    const-string v0, "OtpDbHelper::onCreate policy data table created"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 836
    const-string v0, "create table SessionTable(session_id varchar, package_name varchar primary key, current_step integer, next_step integer, timestamp integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 837
    const-string v0, "OtpDbHelper::onCreate session data table created"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    monitor-exit p0

    return-void

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDeleteDB()I
    .locals 2

    .prologue
    .line 863
    monitor-enter p0

    :try_start_0
    const-string v0, "DROP table ProvisionTable"

    .line 864
    .local v0, "query":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 865
    const-string v0, "DROP table TokenTable"

    .line 866
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 867
    const-string v0, "DROP table PolicyTable"

    .line 868
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 869
    const-string v0, "DROP table SessionTable"

    .line 870
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 863
    .end local v0    # "query":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v1, 0x2

    .line 842
    monitor-enter p0

    :try_start_0
    const-string v0, "OtpDbHelper::onUpgrade Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->startDbUpgrade()V

    .line 844
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 845
    if-ge p2, v1, :cond_0

    .line 846
    const-string v0, "ProvisionTable"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->onUpgradeTableWithAddColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 849
    :cond_0
    const-string v0, "create table SessionTable(session_id varchar, package_name varchar primary key, current_step integer, next_step integer, timestamp integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 857
    :goto_0
    const-string v0, "TokenTable"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->onUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 858
    const-string v0, "PolicyTable"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->onUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->endDbUpgrade()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    monitor-exit p0

    return-void

    .line 851
    :cond_1
    if-ne p3, v1, :cond_2

    .line 852
    :try_start_1
    const-string v0, "ProvisionTable"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->onUpgradeTableWithAddColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 842
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 855
    :cond_2
    :try_start_2
    const-string v0, "ProvisionTable"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->onUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized removeOtpToken(Ljava/lang/String;)I
    .locals 2
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->startDbEdit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    :cond_0
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->deleteEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    .line 242
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->deleteEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    .line 243
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->deleteEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->endDbEdit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDskppSessionData(Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;

    .prologue
    .line 784
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->startDbEdit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 785
    const/4 v0, 0x0

    .line 794
    :goto_0
    return-object v0

    .line 787
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p1, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 788
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p1, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->deleteEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    .line 790
    :cond_1
    const/4 v0, 0x0

    .line 791
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v1}, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->addEntry(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    if-nez v1, :cond_2

    .line 792
    iget-object v0, p1, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mSessionId:Ljava/lang/String;

    .line 793
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->endDbEdit()V

    goto :goto_0
.end method

.method public declared-synchronized setOtpTokenPolicies(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "tokenPolicy"    # Landroid/os/Bundle;

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->startDbEdit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 144
    const/16 v1, 0x40d

    .line 161
    :goto_0
    monitor-exit p0

    return v1

    .line 147
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;-><init>()V

    .line 148
    .local v0, "pd":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    const-string v2, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mTokenId:Ljava/lang/String;

    .line 149
    const-string v2, "NUM_TRANSACTIONS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mNumberOfTransactions:I

    .line 150
    const-string v2, "TOKEN_EXPIRY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mExpiryDate:Ljava/lang/String;

    .line 151
    const-string v2, "PIN_USAGE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mPinUsageMode:Ljava/lang/String;

    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, "ret":I
    iget v2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mNumberOfTransactions:I

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mExpiryDate:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mPinUsageMode:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 155
    const/4 v1, 0x0

    .line 160
    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->endDbEdit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    .end local v0    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 157
    .restart local v0    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    .restart local v1    # "ret":I
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->addEntry(Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_1
.end method

.method public declared-synchronized setTokenState(Ljava/lang/String;I)I
    .locals 4
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 667
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->startDbEdit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 668
    const/16 v1, 0x40d

    .line 683
    :goto_0
    monitor-exit p0

    return v1

    .line 670
    :cond_0
    :try_start_1
    const-string v2, "DBHandler::setTokenState Enter"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    .line 671
    const/4 v1, 0x0

    .line 672
    .local v1, "ret":I
    new-instance v2, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    .line 673
    .local v0, "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    if-eqz v0, :cond_2

    .line 674
    const/16 v2, 0x303

    iget v3, v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenState:I

    if-eq v2, v3, :cond_1

    .line 675
    iput p2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenState:I

    .line 676
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->updateEntry(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 682
    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->endDbEdit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 667
    .end local v0    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 678
    .restart local v0    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    .restart local v1    # "ret":I
    :cond_1
    :try_start_2
    const-string v2, "DBHandler::setTokenState - Token is in CORRUPT state, can\'t change state"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 680
    :cond_2
    const/16 v1, 0x4ff

    goto :goto_1
.end method

.method public declared-synchronized storeOtpTokenData(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->startDbEdit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 116
    const/16 v0, 0x40d

    .line 131
    :goto_0
    monitor-exit p0

    return v0

    .line 119
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;

    invoke-direct {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;-><init>()V

    .line 120
    .local v1, "td":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    const-string v2, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mTokenId:Ljava/lang/String;

    .line 121
    const-string v2, "DISPLAY_NAME"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mDisplayName:Ljava/lang/String;

    .line 122
    const-string v2, "OTP_OATH_PROTOCOL"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoType:I

    .line 123
    iget v2, v1, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoType:I

    const/16 v3, 0x101

    if-ne v2, v3, :cond_2

    .line 124
    const-string v2, "OTP_PARAM"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoParams:Ljava/lang/String;

    .line 129
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->addEntry(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 130
    .local v0, "ret":I
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->endDbEdit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    .end local v0    # "ret":I
    .end local v1    # "td":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 125
    .restart local v1    # "td":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    :cond_2
    :try_start_2
    iget v2, v1, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoType:I

    const/16 v3, 0x102

    if-ne v2, v3, :cond_1

    .line 126
    const-string v2, "OCRA_SUITE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoParams:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized storeProvisioningData(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->startDbEdit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 90
    const/16 v1, 0x40d

    .line 104
    :goto_0
    monitor-exit p0

    return v1

    .line 93
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V

    .line 94
    .local v0, "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    const-string v2, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenId:Ljava/lang/String;

    .line 95
    const-string v2, "OTP_TOKEN_ID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mVendorTokenId:Ljava/lang/String;

    .line 96
    const-string v2, "TOKEN_STATE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mTokenState:I

    .line 97
    const-string v2, "CONTAINER_ID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mContainerId:I

    .line 98
    const-string v2, "WHITELISTED_PACKAGES"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    .line 99
    const-string v2, "WHITELISTED_PKG_SIGNER_INFO"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mSingnerInfo:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->addEntry(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 103
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->endDbEdit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    .end local v0    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized stringToDateConverter(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 875
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 879
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 880
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 881
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 887
    .end local v1    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Ljava/text/ParseException;
    :try_start_1
    const-string v3, "DBHandler::stringToDateConveter parsing error"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 875
    .end local v0    # "e":Ljava/text/ParseException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized updateResyncTokenData(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 10
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, -0x1

    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->startDbEdit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 166
    const/16 v1, 0x40d

    .line 227
    :goto_0
    monitor-exit p0

    return v1

    .line 169
    :cond_0
    :try_start_1
    const-string/jumbo v3, "updateResyncTokenData :: updating TokenData table : db"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x0

    .line 172
    .local v1, "ret":I
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;-><init>()V

    iget-object v4, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;

    .line 173
    .local v2, "td":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    if-eqz v2, :cond_9

    .line 174
    const-string v3, "DISPLAY_NAME"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 175
    const-string v3, "DISPLAY_NAME"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mDisplayName:Ljava/lang/String;

    .line 176
    :cond_1
    const-string v3, "OTP_OATH_PROTOCOL"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    const-string v3, "OTP_OATH_PROTOCOL"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoType:I

    .line 178
    :cond_2
    const-string v3, "OTP_PARAM"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-eqz v3, :cond_3

    .line 179
    iget v3, v2, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoType:I

    const/16 v4, 0x101

    if-ne v3, v4, :cond_3

    .line 180
    const-string v3, "OTP_PARAM"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoParams:Ljava/lang/String;

    .line 182
    :cond_3
    const-string v3, "OCRA_SUITE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 183
    iget v3, v2, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoType:I

    const/16 v4, 0x102

    if-ne v3, v4, :cond_4

    .line 184
    const-string v3, "OCRA_SUITE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->mAlgoParams:Ljava/lang/String;

    .line 187
    :cond_4
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;->updateEntry(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateResyncTokenData :: updating TokenData table [return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 193
    :goto_1
    if-nez v1, :cond_8

    .line 194
    const-string/jumbo v3, "updateResyncTokenData :: updating PolicyData table"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 195
    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;-><init>()V

    iget-object v4, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;

    .line 196
    .local v0, "pd":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    if-eqz v0, :cond_a

    .line 197
    const-string v3, "NUM_TRANSACTIONS"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 198
    const-string v3, "NUM_TRANSACTIONS"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mNumberOfTransactions:I

    .line 199
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mCurrentNoOfTransactions:I

    .line 201
    :cond_5
    const-string v3, "TOKEN_EXPIRY"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 202
    const-string v3, "TOKEN_EXPIRY"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mExpiryDate:Ljava/lang/String;

    .line 203
    :cond_6
    const-string v3, "PIN_USAGE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 204
    const-string v3, "PIN_USAGE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mPinUsageMode:Ljava/lang/String;

    .line 206
    :cond_7
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->updateEntry(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateResyncTokenData :: updating PolicyData table [return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 226
    .end local v0    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->endDbEdit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 165
    .end local v1    # "ret":I
    .end local v2    # "td":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 190
    .restart local v1    # "ret":I
    .restart local v2    # "td":Lcom/android/server/enterprise/otp/engine/handler/db/TokenData;
    :cond_9
    :try_start_2
    const-string/jumbo v3, "updateResyncTokenData :: updating TokenData table failed. td object is null"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 209
    .restart local v0    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    :cond_a
    const-string/jumbo v3, "updateResyncTokenData :: No row in PolicyData table. Adding new row : db"

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;

    .end local v0    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;-><init>()V

    .line 211
    .restart local v0    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;
    const-string v3, "OTP_TOKEN_ID"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mTokenId:Ljava/lang/String;

    .line 212
    const-string v3, "NUM_TRANSACTIONS"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mNumberOfTransactions:I

    .line 213
    const-string v3, "TOKEN_EXPIRY"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mExpiryDate:Ljava/lang/String;

    .line 214
    const-string v3, "PIN_USAGE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mPinUsageMode:Ljava/lang/String;

    .line 215
    iget v3, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mNumberOfTransactions:I

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mExpiryDate:Ljava/lang/String;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->mPinUsageMode:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 217
    const/4 v1, 0x0

    goto :goto_2

    .line 219
    :cond_b
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/PolicyData;->addEntry(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateResyncTokenData :: addEntry PolicyData table [return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized updateTokenWhitelist(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 16
    .param p1, "tokenId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 694
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->startDbEdit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-nez v14, :cond_0

    .line 695
    const/16 v11, 0x40d

    .line 778
    :goto_0
    monitor-exit p0

    return v11

    .line 697
    :cond_0
    const/4 v11, 0x0

    .line 698
    .local v11, "ret":I
    :try_start_1
    new-instance v14, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    invoke-direct {v14}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;

    .line 699
    .local v9, "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    if-eqz v9, :cond_a

    .line 700
    const-string v14, "WHITELIST_ADD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 701
    .local v1, "addList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v14, "WHITELIST_REMOVE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 702
    .local v10, "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    iget-object v14, v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 704
    .local v4, "dbPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    iget-object v14, v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mSingnerInfo:Ljava/lang/String;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 706
    .local v5, "dbSignList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v14, v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v2, v14, v15

    .line 707
    .local v2, "adminPkg":Ljava/lang/String;
    iget-object v14, v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mSingnerInfo:Ljava/lang/String;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v3, v14, v15

    .line 710
    .local v3, "adminSign":Ljava/lang/String;
    const-string v14, "WHITELISTED_PKG_SIGNER_INFO"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 713
    .local v13, "signList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    .line 715
    if-nez v13, :cond_1

    .line 716
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "signList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .restart local v13    # "signList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_1

    .line 718
    const-string v14, "0"

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 721
    .end local v6    # "i":I
    :cond_1
    const-string v14, "OtpDbHelper::updateTokenWhitelist - Contains WHITELIST_ADD packages"

    invoke-static {v14}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 722
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-eq v14, v15, :cond_2

    .line 723
    const-string v14, "OtpDbHelper::updateTokenWhitelist - Lists size Mismatch"

    invoke-static {v14}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 724
    const/16 p2, 0x0

    .line 725
    const/16 v11, 0x401

    goto/16 :goto_0

    .line 728
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_4

    .line 729
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 730
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OtpDbHelper::updateTokenWhitelist - Adding packagename & signature info for package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 732
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 738
    .end local v6    # "i":I
    :cond_4
    if-eqz v10, :cond_7

    .line 739
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 740
    .local v12, "s":Ljava/lang/String;
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 741
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OtpDbHelper::updateTokenWhitelist - Cannot remove Admin package : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 694
    .end local v1    # "addList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "adminPkg":Ljava/lang/String;
    .end local v3    # "adminSign":Ljava/lang/String;
    .end local v4    # "dbPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "dbSignList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    .end local v10    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "ret":I
    .end local v12    # "s":Ljava/lang/String;
    .end local v13    # "signList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 745
    .restart local v1    # "addList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "adminPkg":Ljava/lang/String;
    .restart local v3    # "adminSign":Ljava/lang/String;
    .restart local v4    # "dbPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "dbSignList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "pd":Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;
    .restart local v10    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "ret":I
    .restart local v12    # "s":Ljava/lang/String;
    .restart local v13    # "signList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :try_start_2
    invoke-interface {v4, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 746
    .local v8, "index":I
    const/4 v14, -0x1

    if-eq v8, v14, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-le v14, v8, :cond_5

    .line 747
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OtpDbHelper::updateTokenWhitelist - Removing packagename & signature info for package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 749
    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 750
    invoke-interface {v4, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 755
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "index":I
    .end local v12    # "s":Ljava/lang/String;
    :cond_7
    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 756
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    .line 757
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 758
    .restart local v12    # "s":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    goto :goto_4

    .line 761
    .end local v12    # "s":Ljava/lang/String;
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OtpDbHelper::updateTokenWhitelist - Final whitelist package list : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mWhiteListPkg:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    .line 764
    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 765
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mSingnerInfo:Ljava/lang/String;

    .line 766
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 767
    .restart local v12    # "s":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mSingnerInfo:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->mSingnerInfo:Ljava/lang/String;

    goto :goto_5

    .line 770
    .end local v12    # "s":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9, v14}, Lcom/android/server/enterprise/otp/engine/handler/db/ProvisionData;->updateEntry(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v11

    .line 777
    .end local v1    # "addList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "adminPkg":Ljava/lang/String;
    .end local v3    # "adminSign":Ljava/lang/String;
    .end local v4    # "dbPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "dbSignList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "signList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->endDbEdit()V

    goto/16 :goto_0

    .line 773
    :cond_a
    const-string v14, "OtpDbHelper::updateTokenWhitelist - Provision Data not found "

    invoke-static {v14}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 774
    const/16 v11, 0x4ff

    goto :goto_6
.end method

.method public validateDskppSession(Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;)Z
    .locals 5
    .param p1, "data"    # Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;

    .prologue
    const/4 v2, 0x0

    .line 798
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->startDbEdit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 807
    :goto_0
    return v2

    .line 802
    :cond_0
    const/4 v0, 0x0

    .line 803
    .local v0, "ret":Z
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p1, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->getEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/server/enterprise/otp/engine/handler/db/ITableData;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;

    .line 804
    .local v1, "temp":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    if-eqz v1, :cond_1

    .line 805
    iget v3, v1, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mNextStep:I

    iget v4, p1, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mNextStep:I

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 806
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBIntegrity;->endDbEdit()V

    move v2, v0

    .line 807
    goto :goto_0

    :cond_2
    move v0, v2

    .line 805
    goto :goto_1
.end method
