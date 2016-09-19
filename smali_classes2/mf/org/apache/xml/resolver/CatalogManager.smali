.class public Lmf/org/apache/xml/resolver/CatalogManager;
.super Ljava/lang/Object;
.source "CatalogManager.java"


# static fields
.field private static pAllowPI:Ljava/lang/String;

.field private static pClassname:Ljava/lang/String;

.field private static pFiles:Ljava/lang/String;

.field private static pIgnoreMissing:Ljava/lang/String;

.field private static pPrefer:Ljava/lang/String;

.field private static pStatic:Ljava/lang/String;

.field private static pVerbosity:Ljava/lang/String;

.field private static staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

.field private static staticManager:Lmf/org/apache/xml/resolver/CatalogManager;


# instance fields
.field private bResolver:Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

.field private catalogClassName:Ljava/lang/String;

.field private catalogFiles:Ljava/lang/String;

.field public debug:Lmf/org/apache/xml/resolver/helpers/Debug;

.field private defaultCatalogFiles:Ljava/lang/String;

.field private defaultOasisXMLCatalogPI:Z

.field private defaultPreferPublic:Z

.field private defaultRelativeCatalogs:Z

.field private defaultUseStaticCatalog:Z

.field private defaultVerbosity:I

.field private fromPropertiesFile:Z

.field private ignoreMissingProperties:Z

.field private oasisXMLCatalogPI:Ljava/lang/Boolean;

.field private preferPublic:Ljava/lang/Boolean;

.field private propertyFile:Ljava/lang/String;

.field private propertyFileURI:Ljava/net/URL;

.field private relativeCatalogs:Ljava/lang/Boolean;

.field private resources:Ljava/util/ResourceBundle;

.field private useStaticCatalog:Ljava/lang/Boolean;

.field private verbosity:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const-string v0, "xml.catalog.files"

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pFiles:Ljava/lang/String;

    .line 126
    const-string v0, "xml.catalog.verbosity"

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pVerbosity:Ljava/lang/String;

    .line 127
    const-string v0, "xml.catalog.prefer"

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pPrefer:Ljava/lang/String;

    .line 128
    const-string v0, "xml.catalog.staticCatalog"

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pStatic:Ljava/lang/String;

    .line 129
    const-string v0, "xml.catalog.allowPI"

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pAllowPI:Ljava/lang/String;

    .line 130
    const-string v0, "xml.catalog.className"

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pClassname:Ljava/lang/String;

    .line 131
    const-string v0, "xml.catalog.ignoreMissing"

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pIgnoreMissing:Ljava/lang/String;

    .line 134
    new-instance v0, Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/CatalogManager;-><init>()V

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->staticManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 181
    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->bResolver:Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    .line 141
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pIgnoreMissing:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 142
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pFiles:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    .line 148
    const-string v0, "CatalogManager.properties"

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    .line 151
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFileURI:Ljava/net/URL;

    .line 154
    const-string v0, "./xcatalog"

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultCatalogFiles:Ljava/lang/String;

    .line 157
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    .line 160
    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z

    .line 163
    iput v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultVerbosity:I

    .line 166
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    .line 169
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultPreferPublic:Z

    .line 172
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    .line 175
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    .line 178
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    .line 184
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    .line 187
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    .line 190
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultRelativeCatalogs:Z

    .line 193
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    .line 196
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    .line 203
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 207
    new-instance v0, Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/helpers/Debug;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 213
    return-void

    :cond_0
    move v0, v2

    .line 142
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "propertyFile"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->bResolver:Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    .line 141
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pIgnoreMissing:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 142
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->pFiles:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    .line 148
    const-string v0, "CatalogManager.properties"

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    .line 151
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFileURI:Ljava/net/URL;

    .line 154
    const-string v0, "./xcatalog"

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultCatalogFiles:Ljava/lang/String;

    .line 157
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    .line 160
    iput-boolean v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z

    .line 163
    iput v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultVerbosity:I

    .line 166
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    .line 169
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultPreferPublic:Z

    .line 172
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    .line 175
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    .line 178
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    .line 184
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    .line 187
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    .line 190
    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultRelativeCatalogs:Z

    .line 193
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    .line 196
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    .line 203
    iput-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 217
    iput-object p1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    .line 219
    new-instance v0, Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/helpers/Debug;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    .line 225
    return-void

    :cond_0
    move v0, v2

    .line 142
    goto :goto_0
.end method

.method public static getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->staticManager:Lmf/org/apache/xml/resolver/CatalogManager;

    return-object v0
.end method

.method private queryCatalogFiles()Ljava/lang/String;
    .locals 5

    .prologue
    .line 466
    sget-object v2, Lmf/org/apache/xml/resolver/CatalogManager;->pFiles:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "catalogList":Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z

    .line 469
    if-nez v0, :cond_1

    .line 470
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    .line 471
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v2, :cond_1

    .line 473
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string v3, "catalogs"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 483
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultCatalogFiles:Ljava/lang/String;

    .line 486
    :cond_2
    return-object v0

    .line 475
    :catch_0
    move-exception v1

    .line 476
    .local v1, "e":Ljava/util/MissingResourceException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": catalogs not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 477
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryPreferPublic()Z
    .locals 4

    .prologue
    .line 551
    sget-object v2, Lmf/org/apache/xml/resolver/CatalogManager;->pPrefer:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "prefer":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 554
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    .line 555
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultPreferPublic:Z

    .line 567
    :goto_0
    return v2

    .line 557
    :cond_1
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string v3, "prefer"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 563
    :cond_2
    if-nez v1, :cond_3

    .line 564
    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultPreferPublic:Z

    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/util/MissingResourceException;
    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultPreferPublic:Z

    goto :goto_0

    .line 567
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :cond_3
    const-string v2, "public"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private queryRelativeCatalogs()Z
    .locals 4

    .prologue
    .line 400
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    .line 402
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultRelativeCatalogs:Z

    .line 410
    :goto_0
    return v2

    .line 405
    :cond_1
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string v3, "relative-catalogs"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "allow":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 407
    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 408
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 406
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 409
    .end local v0    # "allow":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Ljava/util/MissingResourceException;
    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultRelativeCatalogs:Z

    goto :goto_0
.end method

.method private queryUseStaticCatalog()Z
    .locals 4

    .prologue
    .line 610
    sget-object v2, Lmf/org/apache/xml/resolver/CatalogManager;->pStatic:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "staticCatalog":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 613
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    .line 614
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    .line 626
    :goto_0
    return v2

    .line 616
    :cond_1
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string v3, "static-catalog"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 622
    :cond_2
    if-nez v1, :cond_3

    .line 623
    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/util/MissingResourceException;
    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultUseStaticCatalog:Z

    goto :goto_0

    .line 626
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :cond_3
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 627
    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 628
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 626
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private queryVerbosity()I
    .locals 7

    .prologue
    .line 329
    iget v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultVerbosity:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "defaultVerbStr":Ljava/lang/String;
    sget-object v4, Lmf/org/apache/xml/resolver/CatalogManager;->pVerbosity:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "verbStr":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 334
    iget-object v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v4, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    .line 335
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-eqz v4, :cond_3

    .line 337
    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string v5, "verbosity"

    invoke-virtual {v4, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 346
    :cond_1
    :goto_0
    iget v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultVerbosity:I

    .line 349
    .local v2, "verb":I
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 357
    :goto_1
    iget-object v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    if-nez v4, :cond_2

    .line 358
    iget-object v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v4, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V

    .line 359
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v4, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    .line 362
    :cond_2
    return v2

    .line 338
    .end local v2    # "verb":I
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/util/MissingResourceException;
    move-object v3, v0

    .line 341
    goto :goto_0

    .line 342
    .end local v1    # "e":Ljava/util/MissingResourceException;
    :cond_3
    move-object v3, v0

    goto :goto_0

    .line 350
    .restart local v2    # "verb":I
    :catch_1
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot parse verbosity: \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized readProperties()V
    .locals 8

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    const-class v5, Lmf/org/apache/xml/resolver/CatalogManager;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    iput-object v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFileURI:Ljava/net/URL;

    .line 245
    const-class v5, Lmf/org/apache/xml/resolver/CatalogManager;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 246
    .local v1, "in":Ljava/io/InputStream;
    if-nez v1, :cond_1

    .line 247
    iget-boolean v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    if-nez v5, :cond_0

    .line 248
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot find "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    const/4 v5, 0x1

    iput-boolean v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 254
    .restart local v1    # "in":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/util/PropertyResourceBundle;

    invoke-direct {v5, v1}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_2
    :goto_1
    :try_start_2
    iget-object v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_0

    .line 270
    :try_start_3
    iget-object v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string v6, "verbosity"

    invoke-virtual {v5, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "verbStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 272
    .local v3, "verb":I
    iget-object v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v5, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V

    .line 273
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 274
    .end local v3    # "verb":I
    .end local v4    # "verbStr":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 255
    :catch_1
    move-exception v2

    .line 256
    .local v2, "mre":Ljava/util/MissingResourceException;
    :try_start_4
    iget-boolean v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    if-nez v5, :cond_2

    .line 257
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot read "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 243
    .end local v2    # "mre":Ljava/util/MissingResourceException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 259
    :catch_2
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    iget-boolean v5, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    if-nez v5, :cond_2

    .line 261
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failure trying to read "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public allowOasisXMLCatalogPI()Z
    .locals 1

    .prologue
    .line 786
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getAllowOasisXMLCatalogPI()Z

    move-result v0

    return v0
.end method

.method public catalogClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getCatalogClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public catalogFiles()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 538
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getCatalogFiles()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getAllowOasisXMLCatalogPI()Z
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 767
    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryAllowOasisXMLCatalogPI()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    .line 770
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBootstrapResolver()Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->bResolver:Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    return-object v0
.end method

.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 3

    .prologue
    .line 715
    sget-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 717
    .local v0, "catalog":Lmf/org/apache/xml/resolver/Catalog;
    iget-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 718
    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getUseStaticCatalog()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    .line 721
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 722
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getPrivateCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v0

    .line 723
    iget-object v1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 724
    sput-object v0, Lmf/org/apache/xml/resolver/CatalogManager;->staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 728
    :cond_2
    return-object v0
.end method

.method public getCatalogClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 814
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryCatalogClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    .line 817
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getCatalogFiles()Ljava/util/Vector;
    .locals 8

    .prologue
    .line 496
    iget-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 497
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryCatalogFiles()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    .line 500
    :cond_0
    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    const-string v7, ";"

    invoke-direct {v4, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .local v4, "files":Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 502
    .local v3, "catalogs":Ljava/util/Vector;
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_1

    .line 518
    return-object v3

    .line 503
    :cond_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "catalogFile":Ljava/lang/String;
    const/4 v0, 0x0

    .line 506
    .local v0, "absURI":Ljava/net/URL;
    iget-boolean v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs()Z

    move-result v6

    if-nez v6, :cond_2

    .line 508
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->propertyFileURI:Ljava/net/URL;

    invoke-direct {v1, v6, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v0    # "absURI":Ljava/net/URL;
    .local v1, "absURI":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move-object v0, v1

    .line 515
    .end local v1    # "absURI":Ljava/net/URL;
    .restart local v0    # "absURI":Ljava/net/URL;
    :cond_2
    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 510
    :catch_0
    move-exception v5

    .line 511
    .local v5, "mue":Ljava/net/MalformedURLException;
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 510
    .end local v0    # "absURI":Ljava/net/URL;
    .end local v5    # "mue":Ljava/net/MalformedURLException;
    .restart local v1    # "absURI":Ljava/net/URL;
    :catch_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "absURI":Ljava/net/URL;
    .restart local v0    # "absURI":Ljava/net/URL;
    goto :goto_2
.end method

.method public getIgnoreMissingProperties()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    return v0
.end method

.method public getPreferPublic()Z
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryPreferPublic()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    .line 579
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPrivateCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 10

    .prologue
    .line 664
    sget-object v1, Lmf/org/apache/xml/resolver/CatalogManager;->staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 666
    .local v1, "catalog":Lmf/org/apache/xml/resolver/Catalog;
    iget-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    if-nez v6, :cond_0

    .line 667
    new-instance v6, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getUseStaticCatalog()Z

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    .line 670
    :cond_0
    if-eqz v1, :cond_1

    iget-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    .line 673
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getCatalogClassName()Ljava/lang/String;

    move-result-object v3

    .line 675
    .local v3, "catalogClassName":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 676
    new-instance v2, Lmf/org/apache/xml/resolver/Catalog;

    invoke-direct {v2}, Lmf/org/apache/xml/resolver/Catalog;-><init>()V

    .end local v1    # "catalog":Lmf/org/apache/xml/resolver/Catalog;
    .local v2, "catalog":Lmf/org/apache/xml/resolver/Catalog;
    move-object v1, v2

    .line 693
    .end local v2    # "catalog":Lmf/org/apache/xml/resolver/Catalog;
    .restart local v1    # "catalog":Lmf/org/apache/xml/resolver/Catalog;
    :goto_0
    invoke-virtual {v1, p0}, Lmf/org/apache/xml/resolver/Catalog;->setCatalogManager(Lmf/org/apache/xml/resolver/CatalogManager;)V

    .line 694
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/Catalog;->setupReaders()V

    .line 695
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/Catalog;->loadSystemCatalogs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 700
    .end local v3    # "catalogClassName":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 701
    sput-object v1, Lmf/org/apache/xml/resolver/CatalogManager;->staticCatalog:Lmf/org/apache/xml/resolver/Catalog;

    .line 705
    :cond_2
    return-object v1

    .line 679
    .restart local v3    # "catalogClassName":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lmf/org/apache/xml/resolver/Catalog;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 680
    :catch_0
    move-exception v4

    .line 681
    .local v4, "cnfe":Ljava/lang/ClassNotFoundException;
    :try_start_2
    iget-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Catalog class named \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 683
    const-string v9, "\' could not be found. Using default."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 681
    invoke-virtual {v6, v7, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 684
    new-instance v2, Lmf/org/apache/xml/resolver/Catalog;

    invoke-direct {v2}, Lmf/org/apache/xml/resolver/Catalog;-><init>()V

    .end local v1    # "catalog":Lmf/org/apache/xml/resolver/Catalog;
    .restart local v2    # "catalog":Lmf/org/apache/xml/resolver/Catalog;
    move-object v1, v2

    .end local v2    # "catalog":Lmf/org/apache/xml/resolver/Catalog;
    .restart local v1    # "catalog":Lmf/org/apache/xml/resolver/Catalog;
    goto :goto_0

    .line 685
    .end local v4    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 686
    .local v4, "cnfe":Ljava/lang/ClassCastException;
    iget-object v6, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Class named \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 688
    const-string v9, "\' is not a Catalog. Using default."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 686
    invoke-virtual {v6, v7, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 689
    new-instance v2, Lmf/org/apache/xml/resolver/Catalog;

    invoke-direct {v2}, Lmf/org/apache/xml/resolver/Catalog;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v1    # "catalog":Lmf/org/apache/xml/resolver/Catalog;
    .restart local v2    # "catalog":Lmf/org/apache/xml/resolver/Catalog;
    move-object v1, v2

    .end local v2    # "catalog":Lmf/org/apache/xml/resolver/Catalog;
    .restart local v1    # "catalog":Lmf/org/apache/xml/resolver/Catalog;
    goto :goto_0

    .line 696
    .end local v3    # "catalogClassName":Ljava/lang/String;
    .end local v4    # "cnfe":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v5

    .line 697
    .local v5, "ex":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getRelativeCatalogs()Z
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryRelativeCatalogs()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    .line 439
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUseStaticCatalog()Z
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 636
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryUseStaticCatalog()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    .line 639
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getVerbosity()I
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->queryVerbosity()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    .line 373
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public ignoreMissingProperties(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/resolver/CatalogManager;->setIgnoreMissingProperties(Z)V

    .line 320
    return-void
.end method

.method public preferPublic()Z
    .locals 1

    .prologue
    .line 597
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getPreferPublic()Z

    move-result v0

    return v0
.end method

.method public queryAllowOasisXMLCatalogPI()Z
    .locals 4

    .prologue
    .line 741
    sget-object v2, Lmf/org/apache/xml/resolver/CatalogManager;->pAllowPI:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "allow":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 744
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    .line 745
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    .line 757
    :goto_0
    return v2

    .line 747
    :cond_1
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string v3, "allow-oasis-xml-catalog-pi"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 753
    :cond_2
    if-nez v0, :cond_3

    .line 754
    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    goto :goto_0

    .line 748
    :catch_0
    move-exception v1

    .line 749
    .local v1, "e":Ljava/util/MissingResourceException;
    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/CatalogManager;->defaultOasisXMLCatalogPI:Z

    goto :goto_0

    .line 757
    .end local v1    # "e":Ljava/util/MissingResourceException;
    :cond_3
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 758
    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 759
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 757
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public queryCatalogClassName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 794
    sget-object v3, Lmf/org/apache/xml/resolver/CatalogManager;->pClassname:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 797
    iget-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->readProperties()V

    .line 798
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    if-nez v3, :cond_2

    move-object v0, v2

    .line 806
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 800
    .restart local v0    # "className":Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xml/resolver/CatalogManager;->resources:Ljava/util/ResourceBundle;

    const-string v4, "catalog-class-name"

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 801
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/util/MissingResourceException;
    move-object v0, v2

    .line 802
    goto :goto_0
.end method

.method public relativeCatalogs()Z
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getRelativeCatalogs()Z

    move-result v0

    return v0
.end method

.method public setAllowOasisXMLCatalogPI(Z)V
    .locals 1
    .param p1, "allowPI"    # Z

    .prologue
    .line 777
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->oasisXMLCatalogPI:Ljava/lang/Boolean;

    .line 778
    return-void
.end method

.method public setBootstrapResolver(Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;)V
    .locals 0
    .param p1, "resolver"    # Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    .prologue
    .line 229
    iput-object p1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->bResolver:Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    .line 230
    return-void
.end method

.method public setCatalogClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 824
    iput-object p1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogClassName:Ljava/lang/String;

    .line 825
    return-void
.end method

.method public setCatalogFiles(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileList"    # Ljava/lang/String;

    .prologue
    .line 525
    iput-object p1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->catalogFiles:Ljava/lang/String;

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->fromPropertiesFile:Z

    .line 527
    return-void
.end method

.method public setIgnoreMissingProperties(Z)V
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Lmf/org/apache/xml/resolver/CatalogManager;->ignoreMissingProperties:Z

    .line 307
    return-void
.end method

.method public setPreferPublic(Z)V
    .locals 1
    .param p1, "preferPublic"    # Z

    .prologue
    .line 586
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->preferPublic:Ljava/lang/Boolean;

    .line 587
    return-void
.end method

.method public setRelativeCatalogs(Z)V
    .locals 1
    .param p1, "relative"    # Z

    .prologue
    .line 448
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->relativeCatalogs:Ljava/lang/Boolean;

    .line 449
    return-void
.end method

.method public setUseStaticCatalog(Z)V
    .locals 1
    .param p1, "useStatic"    # Z

    .prologue
    .line 646
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->useStaticCatalog:Ljava/lang/Boolean;

    .line 647
    return-void
.end method

.method public setVerbosity(I)V
    .locals 1
    .param p1, "verbosity"    # I

    .prologue
    .line 380
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->verbosity:Ljava/lang/Integer;

    .line 381
    iget-object v0, p0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V

    .line 382
    return-void
.end method

.method public staticCatalog()Z
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getUseStaticCatalog()Z

    move-result v0

    return v0
.end method

.method public verbosity()I
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/CatalogManager;->getVerbosity()I

    move-result v0

    return v0
.end method
