.class public Lcom/android/server/cocktailbar/utils/CocktailBarConfig;
.super Ljava/lang/Object;
.source "CocktailBarConfig.java"


# static fields
.field private static final DEFAULT_VERSION:I = 0x1

.field private static final INTENT_FILTER:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final META_DATA:Ljava/lang/String; = "com.samsung.android.edge.config"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_CATEGORY_FILTER:Ljava/lang/String; = "category_filter"

.field private static final TAG_META_DATA_HIDE_EDGE_SERVICE:Ljava/lang/String; = "meta_data_hide_edge_service"

.field private static final TAG_PACKAGE_HIDE_EDGE_SERVICE:Ljava/lang/String; = "package_hide_edge_service"

.field private static final TAG_PREFERRED_WIDTH:Ljava/lang/String; = "preferred_width"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field public static sInstance:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;


# instance fields
.field private mCategoryFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryFilterStr:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMetaDataHideEdgeService:Ljava/lang/String;

.field private mPackageHideEdgeServiceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreferredWidth:I

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mVersion:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPreferredWidth:I

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    .line 55
    iput-object p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->parseEdgeConfig()V

    .line 58
    return-void
.end method

.method private getEdgeConfigParser()Landroid/content/res/XmlResourceParser;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 114
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.android.app.cocktailbarservice"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x80

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 117
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 118
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 119
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;->isSystemApplication(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "com.samsung.android.edge.config"

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 127
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->sInstance:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->sInstance:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    .line 51
    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->sInstance:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    return-object v0
.end method

.method private parseEdgeConfig()V
    .locals 4

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getEdgeConfigParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 99
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    const-string/jumbo v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "productName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 102
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->parseXml(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 105
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v3
.end method

.method private parseXml(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .locals 8
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "productName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 134
    .local v0, "eventType":I
    :goto_0
    if-eq v0, v7, :cond_7

    .line 135
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "tag":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 162
    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_0

    .line 138
    :pswitch_0
    const-string/jumbo v4, "version"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    const-string/jumbo v4, "name"

    invoke-interface {p1, v6, v4, v7}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mVersion:I

    goto :goto_1

    .line 140
    :cond_1
    const-string v4, "category_filter"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 141
    const-string/jumbo v4, "product"

    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "pName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 145
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string/jumbo v4, "default"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    :cond_3
    const-string/jumbo v4, "value"

    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    goto :goto_1

    .line 148
    .end local v1    # "pName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "preferred_width"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 149
    const-string/jumbo v4, "value"

    const/16 v5, 0xa0

    invoke-interface {p1, v6, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPreferredWidth:I

    goto :goto_1

    .line 150
    :cond_5
    const-string/jumbo v4, "package_hide_edge_service"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 151
    const-string/jumbo v4, "value"

    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_6
    const-string/jumbo v4, "meta_data_hide_edge_service"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    const-string/jumbo v4, "value"

    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mMetaDataHideEdgeService:Ljava/lang/String;

    goto/16 :goto_1

    .line 164
    .end local v3    # "tag":Ljava/lang/String;
    :cond_7
    return-void

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCategoryFilter()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 82
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    .line 83
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 84
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "strings":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 86
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 87
    .local v3, "string":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "string":Ljava/lang/String;
    .end local v4    # "strings":[Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->getCategroyFilters(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    .line 94
    :cond_1
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    return-object v5
.end method

.method public getDefaultVersion()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public getMetaDataHideEdgeService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mMetaDataHideEdgeService:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageHideEdgeServiceList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getPreferredWidth()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPreferredWidth:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mVersion:I

    return v0
.end method
