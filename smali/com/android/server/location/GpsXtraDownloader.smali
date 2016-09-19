.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "GpsXtraDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .locals 10
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, "count":I
    const-string v8, "XTRA2_SERVER_1"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "server1":Ljava/lang/String;
    const-string v8, "XTRA2_SERVER_2"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "server2":Ljava/lang/String;
    const-string v8, "XTRA2_SERVER_3"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "server3":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "secSalesCode":Ljava/lang/String;
    const-string v8, "CHM"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "CTC"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "CHU"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "CHN"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez v5, :cond_1

    .line 64
    :cond_0
    const-string v8, "XTRA_SERVER_1"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    const-string v8, "XTRA_SERVER_2"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    const-string v8, "XTRA_SERVER_3"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    :cond_1
    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 70
    :cond_2
    if-eqz v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 71
    :cond_3
    if-eqz v7, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 74
    :cond_4
    const-string v8, "XTRA_USER_AGENT"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "agent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 76
    const-string v8, "Android"

    iput-object v8, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    .line 81
    :goto_0
    if-nez v1, :cond_6

    .line 82
    const-string v8, "GpsXtraDownloader"

    const-string v9, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 95
    :goto_1
    return-void

    .line 78
    :cond_5
    iput-object v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_6
    new-array v8, v1, [Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 86
    const/4 v1, 0x0

    .line 87
    if-eqz v5, :cond_9

    iget-object v8, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v5, v8, v1

    .line 88
    :goto_2
    if-eqz v6, :cond_7

    iget-object v8, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v6, v8, v2

    move v2, v1

    .line 89
    .end local v1    # "count":I
    .restart local v2    # "count":I
    :cond_7
    if-eqz v7, :cond_8

    iget-object v8, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v7, v8, v2

    .line 92
    :goto_3
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 93
    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_1

    .end local v1    # "count":I
    .end local v3    # "random":Ljava/util/Random;
    .restart local v2    # "count":I
    :cond_8
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_3

    :cond_9
    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_2
.end method

.method static Inject_xtra_user_agent(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy_MM_dd"

    invoke-direct {v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 172
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    move-object v0, p0

    .line 173
    .local v0, "carrier":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 174
    .local v5, "manufacturer":Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 175
    .local v6, "modelname":Ljava/lang/String;
    const-string/jumbo v9, "ril.modem.board"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "chipset_other_tech":Ljava/lang/String;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 177
    .local v8, "version":Ljava/lang/String;
    const-string v2, "Android"

    .line 178
    .local v2, "deviceclass":Ljava/lang/String;
    sget-wide v10, Landroid/os/Build;->TIME:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "launched_time":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "full_name":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "GpsXtraDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Inject_xtra_user_agent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    return-object v3
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 122
    sget-boolean v6, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "GpsXtraDownloader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Downloading XTRA data from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    const/4 v1, 0x0

    .line 126
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 127
    const-string v6, "Accept"

    const-string v8, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {v1, v6, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string/jumbo v6, "x-wap-profile"

    const-string/jumbo v8, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-virtual {v1, v6, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v8, "CscFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {v6, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "secSalesCode":Ljava/lang/String;
    const-string v6, "SPR"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "BST"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "VMU"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "XAS"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 138
    :cond_1
    const-string v6, "SPR"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 139
    const-string v3, "Sprint"

    .line 147
    .local v3, "mOperator":Ljava/lang/String;
    :goto_0
    const-string v6, "User-Agent"

    invoke-static {v3}, Lcom/android/server/location/GpsXtraDownloader;->Inject_xtra_user_agent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v3    # "mOperator":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 152
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 153
    .local v5, "statusCode":I
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_9

    .line 154
    sget-boolean v6, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "GpsXtraDownloader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HTTP error downloading gps XTRA: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_3
    if-eqz v1, :cond_4

    .line 163
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move-object v6, v7

    .line 166
    .end local v4    # "secSalesCode":Ljava/lang/String;
    .end local v5    # "statusCode":I
    :cond_5
    :goto_1
    return-object v6

    .line 140
    .restart local v4    # "secSalesCode":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v6, "BST"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 141
    const-string v3, "Boost"

    .restart local v3    # "mOperator":Ljava/lang/String;
    goto :goto_0

    .line 142
    .end local v3    # "mOperator":Ljava/lang/String;
    :cond_7
    const-string v6, "VMU"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 143
    const-string v3, "Virgin"

    .restart local v3    # "mOperator":Ljava/lang/String;
    goto :goto_0

    .line 145
    .end local v3    # "mOperator":Ljava/lang/String;
    :cond_8
    const-string v3, "[MVNO_Partner]"

    .restart local v3    # "mOperator":Ljava/lang/String;
    goto :goto_0

    .line 158
    .end local v3    # "mOperator":Ljava/lang/String;
    .restart local v5    # "statusCode":I
    :cond_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 162
    if-eqz v1, :cond_5

    .line 163
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 159
    .end local v4    # "secSalesCode":Ljava/lang/String;
    .end local v5    # "statusCode":I
    :catch_0
    move-exception v2

    .line 160
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_2
    sget-boolean v6, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v6, :cond_a

    const-string v6, "GpsXtraDownloader"

    const-string v8, "Error downloading gps XTRA: "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    :cond_a
    if-eqz v1, :cond_b

    .line 163
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    move-object v6, v7

    .line 166
    goto :goto_1

    .line 162
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_c

    .line 163
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    throw v6
.end method

.method downloadXtraData()[B
    .locals 4

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "result":[B
    iget v1, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 101
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 102
    const/4 v2, 0x0

    .line 118
    :goto_0
    return-object v2

    .line 106
    :cond_0
    if-nez v0, :cond_2

    .line 107
    iget-object v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v0

    .line 110
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 111
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 112
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 115
    :cond_1
    iget v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v2, v1, :cond_0

    :cond_2
    move-object v2, v0

    .line 118
    goto :goto_0
.end method
