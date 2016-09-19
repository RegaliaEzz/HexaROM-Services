.class public Lmf/org/apache/xml/resolver/Catalog;
.super Ljava/lang/Object;
.source "Catalog.java"


# static fields
.field public static final BASE:I

.field public static final CATALOG:I

.field public static final DELEGATE_PUBLIC:I

.field public static final DELEGATE_SYSTEM:I

.field public static final DELEGATE_URI:I

.field public static final DOCTYPE:I

.field public static final DOCUMENT:I

.field public static final DTDDECL:I

.field public static final ENTITY:I

.field public static final LINKTYPE:I

.field public static final NOTATION:I

.field public static final OVERRIDE:I

.field public static final PUBLIC:I

.field public static final REWRITE_SYSTEM:I

.field public static final REWRITE_URI:I

.field public static final SGMLDECL:I

.field public static final SYSTEM:I

.field public static final SYSTEM_SUFFIX:I

.field public static final URI:I

.field public static final URI_SUFFIX:I


# instance fields
.field protected base:Ljava/net/URL;

.field protected catalogCwd:Ljava/net/URL;

.field protected catalogEntries:Ljava/util/Vector;

.field protected catalogFiles:Ljava/util/Vector;

.field protected catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

.field protected catalogs:Ljava/util/Vector;

.field protected default_override:Z

.field protected localCatalogFiles:Ljava/util/Vector;

.field protected localDelegate:Ljava/util/Vector;

.field protected readerArr:Ljava/util/Vector;

.field protected readerMap:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 195
    const-string v0, "BASE"

    invoke-static {v0, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    .line 198
    const-string v0, "CATALOG"

    invoke-static {v0, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->CATALOG:I

    .line 201
    const-string v0, "DOCUMENT"

    invoke-static {v0, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    .line 204
    const-string v0, "OVERRIDE"

    invoke-static {v0, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    .line 207
    const-string v0, "SGMLDECL"

    invoke-static {v0, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->SGMLDECL:I

    .line 210
    const-string v0, "DELEGATE_PUBLIC"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_PUBLIC:I

    .line 213
    const-string v0, "DELEGATE_SYSTEM"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_SYSTEM:I

    .line 216
    const-string v0, "DELEGATE_URI"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_URI:I

    .line 219
    const-string v0, "DOCTYPE"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    .line 222
    const-string v0, "DTDDECL"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->DTDDECL:I

    .line 225
    const-string v0, "ENTITY"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    .line 228
    const-string v0, "LINKTYPE"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->LINKTYPE:I

    .line 231
    const-string v0, "NOTATION"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    .line 234
    const-string v0, "PUBLIC"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    .line 237
    const-string v0, "SYSTEM"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    .line 240
    const-string v0, "URI"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    .line 243
    const-string v0, "REWRITE_SYSTEM"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_SYSTEM:I

    .line 246
    const-string v0, "REWRITE_URI"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_URI:I

    .line 248
    const-string v0, "SYSTEM_SUFFIX"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM_SUFFIX:I

    .line 250
    const-string v0, "URI_SUFFIX"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Catalog;->URI_SUFFIX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    .line 268
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 281
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    .line 300
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    .line 319
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    .line 336
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    .line 345
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    .line 355
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    .line 366
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 1
    .param p1, "manager"    # Lmf/org/apache/xml/resolver/CatalogManager;

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    .line 268
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 281
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    .line 300
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    .line 319
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    .line 336
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    .line 345
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    .line 355
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    .line 376
    iput-object p1, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 377
    return-void
.end method


# virtual methods
.method protected addDelegate(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    .locals 8
    .param p1, "entry"    # Lmf/org/apache/xml/resolver/CatalogEntry;

    .prologue
    const/4 v7, 0x0

    .line 2184
    const/4 v4, 0x0

    .line 2185
    .local v4, "pos":I
    invoke-virtual {p1, v7}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v3

    .line 2187
    .local v3, "partial":Ljava/lang/String;
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 2188
    .local v2, "local":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2204
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 2205
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2209
    :cond_1
    :goto_1
    return-void

    .line 2189
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    .line 2190
    .local v1, "dpe":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v1, v7}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v0

    .line 2191
    .local v0, "dp":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2195
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 2196
    add-int/lit8 v4, v4, 0x1

    .line 2198
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    goto :goto_0

    .line 2207
    .end local v0    # "dp":Ljava/lang/String;
    .end local v1    # "dpe":Lmf/org/apache/xml/resolver/CatalogEntry;
    :cond_4
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v5, p1, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method public addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    .locals 24
    .param p1, "entry"    # Lmf/org/apache/xml/resolver/CatalogEntry;

    .prologue
    .line 898
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v16

    .line 900
    .local v16, "type":I
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 901
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v19

    .line 902
    .local v19, "value":Ljava/lang/String;
    const/4 v9, 0x0

    .line 904
    .local v9, "newbase":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    const-string v22, "BASE CUR"

    const-string v23, "null"

    invoke-virtual/range {v20 .. v23}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 909
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "BASE STR"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 912
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 913
    new-instance v9, Ljava/net/URL;

    .end local v9    # "newbase":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    .restart local v9    # "newbase":Ljava/net/URL;
    :goto_1
    if-eqz v9, :cond_0

    .line 924
    move-object/from16 v0, p0

    iput-object v9, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    .line 927
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    const-string v22, "BASE NEW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v20 .. v23}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 1093
    .end local v9    # "newbase":Ljava/net/URL;
    .end local v19    # "value":Ljava/lang/String;
    :goto_2
    return-void

    .line 907
    .restart local v9    # "newbase":Ljava/net/URL;
    .restart local v19    # "value":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    const-string v22, "BASE CUR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v20 .. v23}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 914
    .end local v9    # "newbase":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 916
    .local v5, "e":Ljava/net/MalformedURLException;
    :try_start_1
    new-instance v9, Ljava/net/URL;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "file:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v9    # "newbase":Ljava/net/URL;
    goto :goto_1

    .line 917
    .end local v9    # "newbase":Ljava/net/URL;
    :catch_1
    move-exception v6

    .line 918
    .local v6, "e2":Ljava/net/MalformedURLException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const-string v22, "Malformed URL on base"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 919
    const/4 v9, 0x0

    .restart local v9    # "newbase":Ljava/net/URL;
    goto :goto_1

    .line 928
    .end local v5    # "e":Ljava/net/MalformedURLException;
    .end local v6    # "e2":Ljava/net/MalformedURLException;
    .end local v9    # "newbase":Ljava/net/URL;
    .end local v19    # "value":Ljava/lang/String;
    :cond_2
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->CATALOG:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 929
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 931
    .local v8, "fsi":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "CATALOG"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 934
    .end local v8    # "fsi":Ljava/lang/String;
    :cond_3
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 935
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 936
    .local v12, "publicid":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 938
    .local v15, "systemid":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 939
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "PUBLIC"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v12, v15}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 944
    .end local v12    # "publicid":Ljava/lang/String;
    .end local v15    # "systemid":Ljava/lang/String;
    :cond_4
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 945
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 946
    .restart local v15    # "systemid":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 948
    .restart local v8    # "fsi":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "SYSTEM"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v15, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 953
    .end local v8    # "fsi":Ljava/lang/String;
    .end local v15    # "systemid":Ljava/lang/String;
    :cond_5
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 954
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 955
    .local v18, "uri":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 957
    .local v4, "altURI":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "URI"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 962
    .end local v4    # "altURI":Ljava/lang/String;
    .end local v18    # "uri":Ljava/lang/String;
    :cond_6
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 963
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 964
    .restart local v8    # "fsi":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "DOCUMENT"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 969
    .end local v8    # "fsi":Ljava/lang/String;
    :cond_7
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "OVERRIDE"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v20 .. v23}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 973
    :cond_8
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->SGMLDECL:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 975
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 976
    .restart local v8    # "fsi":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "SGMLDECL"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 981
    .end local v8    # "fsi":Ljava/lang/String;
    :cond_9
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_PUBLIC:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 982
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 983
    .local v10, "ppi":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 985
    .restart local v8    # "fsi":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 986
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "DELEGATE_PUBLIC"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v10, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->addDelegate(Lmf/org/apache/xml/resolver/CatalogEntry;)V

    goto/16 :goto_2

    .line 991
    .end local v8    # "fsi":Ljava/lang/String;
    .end local v10    # "ppi":Ljava/lang/String;
    :cond_a
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_SYSTEM:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 992
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 993
    .local v11, "psi":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 995
    .restart local v8    # "fsi":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 996
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "DELEGATE_SYSTEM"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v11, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->addDelegate(Lmf/org/apache/xml/resolver/CatalogEntry;)V

    goto/16 :goto_2

    .line 1001
    .end local v8    # "fsi":Ljava/lang/String;
    .end local v11    # "psi":Ljava/lang/String;
    :cond_b
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_URI:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1002
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1003
    .local v13, "pui":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1005
    .restart local v8    # "fsi":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 1006
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "DELEGATE_URI"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v13, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->addDelegate(Lmf/org/apache/xml/resolver/CatalogEntry;)V

    goto/16 :goto_2

    .line 1011
    .end local v8    # "fsi":Ljava/lang/String;
    .end local v13    # "pui":Ljava/lang/String;
    :cond_c
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_SYSTEM:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1012
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1013
    .restart local v11    # "psi":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1015
    .local v14, "rpx":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 1016
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "REWRITE_SYSTEM"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v11, v14}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1021
    .end local v11    # "psi":Ljava/lang/String;
    .end local v14    # "rpx":Ljava/lang/String;
    :cond_d
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_URI:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 1022
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1023
    .restart local v13    # "pui":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1025
    .local v17, "upx":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 1026
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "REWRITE_URI"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v13, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1031
    .end local v13    # "pui":Ljava/lang/String;
    .end local v17    # "upx":Ljava/lang/String;
    :cond_e
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM_SUFFIX:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1032
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1033
    .restart local v13    # "pui":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1035
    .restart local v17    # "upx":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 1036
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "SYSTEM_SUFFIX"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v13, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1041
    .end local v13    # "pui":Ljava/lang/String;
    .end local v17    # "upx":Ljava/lang/String;
    :cond_f
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->URI_SUFFIX:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 1042
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1043
    .restart local v13    # "pui":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1045
    .restart local v17    # "upx":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 1046
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "URI_SUFFIX"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v13, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1051
    .end local v13    # "pui":Ljava/lang/String;
    .end local v17    # "upx":Ljava/lang/String;
    :cond_10
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 1052
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1053
    .restart local v8    # "fsi":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "DOCTYPE"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1058
    .end local v8    # "fsi":Ljava/lang/String;
    :cond_11
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->DTDDECL:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 1060
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1061
    .local v7, "fpi":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 1062
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1063
    .restart local v8    # "fsi":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "DTDDECL"

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v7, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1068
    .end local v7    # "fpi":Ljava/lang/String;
    .end local v8    # "fsi":Ljava/lang/String;
    :cond_12
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 1069
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1070
    .restart local v8    # "fsi":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "ENTITY"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1075
    .end local v8    # "fsi":Ljava/lang/String;
    :cond_13
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->LINKTYPE:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 1077
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1078
    .restart local v8    # "fsi":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "LINKTYPE"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1083
    .end local v8    # "fsi":Ljava/lang/String;
    :cond_14
    sget v20, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 1084
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1085
    .restart local v8    # "fsi":Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const-string v22, "NOTATION"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v8}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1091
    .end local v8    # "fsi":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public addReader(Ljava/lang/String;Lmf/org/apache/xml/resolver/readers/CatalogReader;)V
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "reader"    # Lmf/org/apache/xml/resolver/readers/CatalogReader;

    .prologue
    .line 439
    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 441
    .local v0, "pos":Ljava/lang/Integer;
    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 447
    :goto_0
    return-void

    .line 443
    .end local v0    # "pos":Ljava/lang/Integer;
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 445
    .restart local v0    # "pos":Ljava/lang/Integer;
    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected copyReaders(Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 7
    .param p1, "newCatalog"    # Lmf/org/apache/xml/resolver/Catalog;

    .prologue
    .line 460
    new-instance v2, Ljava/util/Vector;

    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/Vector;-><init>(I)V

    .line 463
    .local v2, "mapArr":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 467
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 468
    .local v1, "en":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    .line 474
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 481
    return-void

    .line 464
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    .restart local v1    # "en":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 470
    .local v3, "mimeType":Ljava/lang/String;
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 471
    .local v4, "pos":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 475
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "pos":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 476
    .restart local v3    # "mimeType":Ljava/lang/String;
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 479
    .restart local v4    # "pos":Ljava/lang/Integer;
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xml/resolver/readers/CatalogReader;

    .line 477
    invoke-virtual {p1, v3, v5}, Lmf/org/apache/xml/resolver/Catalog;->addReader(Ljava/lang/String;Lmf/org/apache/xml/resolver/readers/CatalogReader;)V

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected encodedByte(I)Ljava/lang/String;
    .locals 3
    .param p1, "b"    # I

    .prologue
    .line 2164
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 2165
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 2166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2168
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected fixSlashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sysid"    # Ljava/lang/String;

    .prologue
    .line 2081
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    return-object v0
.end method

.method public getCurrentBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultOverride()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    if-eqz v0, :cond_0

    .line 537
    const-string v0, "yes"

    .line 539
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public loadSystemCatalogs()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogManager;->getCatalogFiles()Ljava/util/Vector;

    move-result-object v0

    .line 558
    .local v0, "catalogs":Ljava/util/Vector;
    if-eqz v0, :cond_0

    .line 559
    const/4 v2, 0x0

    .local v2, "count":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 564
    .end local v2    # "count":I
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 577
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 578
    .local v1, "catfile":Ljava/lang/String;
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 579
    invoke-virtual {p0, v1}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    .line 581
    .end local v1    # "catfile":Ljava/lang/String;
    :cond_1
    return-void

    .line 560
    .restart local v2    # "count":I
    :cond_2
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 559
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected makeAbsolute(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "sysid"    # Ljava/lang/String;

    .prologue
    .line 2093
    const/4 v1, 0x0

    .line 2095
    .local v1, "local":Ljava/net/URL;
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/resolver/Catalog;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2098
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    invoke-direct {v2, v3, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "local":Ljava/net/URL;
    .local v2, "local":Ljava/net/URL;
    move-object v1, v2

    .line 2103
    .end local v2    # "local":Ljava/net/URL;
    .restart local v1    # "local":Ljava/net/URL;
    :goto_0
    if-eqz v1, :cond_0

    .line 2104
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2106
    .end local p1    # "sysid":Ljava/lang/String;
    :cond_0
    return-object p1

    .line 2099
    .restart local p1    # "sysid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2100
    .local v0, "e":Ljava/net/MalformedURLException;
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v4, 0x1

    const-string v5, "Malformed URL on system identifier"

    invoke-virtual {v3, v4, v5, p1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected newCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 496
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "catalogClass":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/Catalog;

    .line 500
    .local v0, "c":Lmf/org/apache/xml/resolver/Catalog;
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0, v8}, Lmf/org/apache/xml/resolver/Catalog;->setCatalogManager(Lmf/org/apache/xml/resolver/CatalogManager;)V

    .line 501
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/resolver/Catalog;->copyReaders(Lmf/org/apache/xml/resolver/Catalog;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object v1, v0

    .line 518
    .end local v0    # "c":Lmf/org/apache/xml/resolver/Catalog;
    .local v1, "c":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 503
    .end local v1    # "c":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 504
    .local v4, "cnfe":Ljava/lang/ClassNotFoundException;
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v8, v8, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Class Not Found Exception: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 515
    .end local v4    # "cnfe":Ljava/lang/ClassNotFoundException;
    :goto_1
    new-instance v0, Lmf/org/apache/xml/resolver/Catalog;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/Catalog;-><init>()V

    .line 516
    .restart local v0    # "c":Lmf/org/apache/xml/resolver/Catalog;
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0, v8}, Lmf/org/apache/xml/resolver/Catalog;->setCatalogManager(Lmf/org/apache/xml/resolver/CatalogManager;)V

    .line 517
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/resolver/Catalog;->copyReaders(Lmf/org/apache/xml/resolver/Catalog;)V

    move-object v1, v0

    .line 518
    .restart local v1    # "c":Ljava/lang/Object;
    goto :goto_0

    .line 505
    .end local v0    # "c":Lmf/org/apache/xml/resolver/Catalog;
    .end local v1    # "c":Ljava/lang/Object;
    :catch_1
    move-exception v6

    .line 506
    .local v6, "iae":Ljava/lang/IllegalAccessException;
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v8, v8, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Illegal Access Exception: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    .line 507
    .end local v6    # "iae":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v7

    .line 508
    .local v7, "ie":Ljava/lang/InstantiationException;
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v8, v8, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Instantiation Exception: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    .line 509
    .end local v7    # "ie":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v3

    .line 510
    .local v3, "cce":Ljava/lang/ClassCastException;
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v8, v8, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Class Cast Exception: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    .line 511
    .end local v3    # "cce":Ljava/lang/ClassCastException;
    :catch_4
    move-exception v5

    .line 512
    .local v5, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v8, v8, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Other Exception: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1
.end method

.method protected normalizeURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "uriref"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x7f

    .line 2117
    const-string v3, ""

    .line 2120
    .local v3, "newRef":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 2121
    const/4 p1, 0x0

    .line 2153
    .end local p1    # "uriref":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 2125
    .restart local p1    # "uriref":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2132
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "count":I
    :goto_1
    array-length v5, v0

    if-lt v2, v5, :cond_1

    move-object p1, v3

    .line 2153
    goto :goto_0

    .line 2126
    .end local v0    # "bytes":[B
    .end local v2    # "count":I
    :catch_0
    move-exception v4

    .line 2128
    .local v4, "uee":Ljava/io/UnsupportedEncodingException;
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v5, v5, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v6, 0x1

    const-string v7, "UTF-8 is an unsupported encoding!?"

    invoke-virtual {v5, v6, v7}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    .line 2133
    .end local v4    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "bytes":[B
    .restart local v2    # "count":I
    :cond_1
    aget-byte v5, v0, v2

    and-int/lit16 v1, v5, 0xff

    .line 2135
    .local v1, "ch":I
    const/16 v5, 0x20

    if-le v1, v5, :cond_2

    .line 2136
    if-gt v1, v7, :cond_2

    .line 2137
    const/16 v5, 0x22

    if-eq v1, v5, :cond_2

    .line 2138
    const/16 v5, 0x3c

    if-eq v1, v5, :cond_2

    .line 2139
    const/16 v5, 0x3e

    if-eq v1, v5, :cond_2

    .line 2140
    const/16 v5, 0x5c

    if-eq v1, v5, :cond_2

    .line 2141
    const/16 v5, 0x5e

    if-eq v1, v5, :cond_2

    .line 2142
    const/16 v5, 0x60

    if-eq v1, v5, :cond_2

    .line 2143
    const/16 v5, 0x7b

    if-eq v1, v5, :cond_2

    .line 2144
    const/16 v5, 0x7c

    if-eq v1, v5, :cond_2

    .line 2145
    const/16 v5, 0x7d

    if-eq v1, v5, :cond_2

    .line 2146
    if-ne v1, v7, :cond_3

    .line 2147
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/resolver/Catalog;->encodedByte(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2132
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2149
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v6, v0, v2

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public parseAllCatalogs()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1141
    const/4 v1, 0x0

    .local v1, "catPos":I
    :goto_0
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 1157
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 1158
    .local v5, "en":Ljava/util/Enumeration;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1167
    return-void

    .line 1142
    .end local v5    # "en":Ljava/util/Enumeration;
    :cond_1
    const/4 v0, 0x0

    .line 1145
    .local v0, "c":Lmf/org/apache/xml/resolver/Catalog;
    :try_start_0
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lmf/org/apache/xml/resolver/Catalog;
    check-cast v0, Lmf/org/apache/xml/resolver/Catalog;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    .restart local v0    # "c":Lmf/org/apache/xml/resolver/Catalog;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1146
    .end local v0    # "c":Lmf/org/apache/xml/resolver/Catalog;
    :catch_0
    move-exception v4

    .line 1147
    .local v4, "e":Ljava/lang/ClassCastException;
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1148
    .local v2, "catfile":Ljava/lang/String;
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Catalog;->newCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v0

    .line 1150
    .restart local v0    # "c":Lmf/org/apache/xml/resolver/Catalog;
    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    .line 1151
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v6, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1152
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/Catalog;->parseAllCatalogs()V

    goto :goto_2

    .line 1159
    .end local v0    # "c":Lmf/org/apache/xml/resolver/Catalog;
    .end local v2    # "catfile":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/ClassCastException;
    .restart local v5    # "en":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    .line 1160
    .local v4, "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v6

    sget v7, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_PUBLIC:I

    if-eq v6, v7, :cond_3

    .line 1161
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v6

    sget v7, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_SYSTEM:I

    if-eq v6, v7, :cond_3

    .line 1162
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v6

    sget v7, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_URI:I

    if-ne v6, v7, :cond_0

    .line 1163
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Catalog;->newCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v3

    .line 1164
    .local v3, "dcat":Lmf/org/apache/xml/resolver/Catalog;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized parseCatalog(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogManager;->getPreferPublic()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    .line 596
    iget-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parse catalog: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 601
    iget-object v0, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 604
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Catalog;->parsePendingCatalogs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    monitor-exit p0

    return-void

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized parseCatalog(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogManager;->getPreferPublic()Z

    move-result v3

    iput-boolean v3, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    .line 624
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Parse "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " catalog on input stream"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 626
    const/4 v2, 0x0

    .line 628
    .local v2, "reader":Lmf/org/apache/xml/resolver/readers/CatalogReader;
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 629
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->readerMap:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 630
    .local v0, "arrayPos":I
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "reader":Lmf/org/apache/xml/resolver/readers/CatalogReader;
    check-cast v2, Lmf/org/apache/xml/resolver/readers/CatalogReader;

    .line 633
    .end local v0    # "arrayPos":I
    .restart local v2    # "reader":Lmf/org/apache/xml/resolver/readers/CatalogReader;
    :cond_0
    if-nez v2, :cond_1

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No CatalogReader for MIME type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "msg":Ljava/lang/String;
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 636
    new-instance v3, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v1}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "reader":Lmf/org/apache/xml/resolver/readers/CatalogReader;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 639
    .restart local v2    # "reader":Lmf/org/apache/xml/resolver/readers/CatalogReader;
    :cond_1
    :try_start_1
    invoke-interface {v2, p0, p2}, Lmf/org/apache/xml/resolver/readers/CatalogReader;->readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V

    .line 642
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Catalog;->parsePendingCatalogs()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized parseCatalog(Ljava/net/URL;)V
    .locals 11
    .param p1, "aUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogCwd:Ljava/net/URL;

    .line 662
    iput-object p1, p0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    .line 664
    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v7}, Lmf/org/apache/xml/resolver/CatalogManager;->getPreferPublic()Z

    move-result v7

    iput-boolean v7, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    .line 665
    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v7, v7, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v8, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Parse catalog: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 667
    const/4 v3, 0x0

    .line 668
    .local v3, "inStream":Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 670
    .local v5, "parsed":Z
    const/4 v1, 0x0

    .local v1, "count":I
    move-object v4, v3

    .end local v3    # "inStream":Ljava/io/DataInputStream;
    .local v4, "inStream":Ljava/io/DataInputStream;
    :goto_0
    if-nez v5, :cond_0

    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v1, v7, :cond_2

    :cond_0
    move-object v3, v4

    .line 699
    .end local v4    # "inStream":Ljava/io/DataInputStream;
    .restart local v3    # "inStream":Ljava/io/DataInputStream;
    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Catalog;->parsePendingCatalogs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    :cond_1
    monitor-exit p0

    return-void

    .line 671
    .end local v3    # "inStream":Ljava/io/DataInputStream;
    .restart local v4    # "inStream":Ljava/io/DataInputStream;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xml/resolver/readers/CatalogReader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    .local v6, "reader":Lmf/org/apache/xml/resolver/readers/CatalogReader;
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 681
    .end local v4    # "inStream":Ljava/io/DataInputStream;
    .restart local v3    # "inStream":Ljava/io/DataInputStream;
    :try_start_3
    invoke-interface {v6, p0, v3}, Lmf/org/apache/xml/resolver/readers/CatalogReader;->readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    :try_end_3
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 682
    const/4 v5, 0x1

    .line 693
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 670
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object v4, v3

    .end local v3    # "inStream":Ljava/io/DataInputStream;
    .restart local v4    # "inStream":Ljava/io/DataInputStream;
    goto :goto_0

    .line 675
    :catch_0
    move-exception v2

    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .line 677
    .end local v4    # "inStream":Ljava/io/DataInputStream;
    .restart local v3    # "inStream":Ljava/io/DataInputStream;
    goto :goto_1

    .line 683
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 684
    .local v0, "ce":Lmf/org/apache/xml/resolver/CatalogException;
    :try_start_5
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_3

    goto :goto_1

    .line 694
    .end local v0    # "ce":Lmf/org/apache/xml/resolver/CatalogException;
    :catch_2
    move-exception v7

    goto :goto_2

    .line 661
    .end local v1    # "count":I
    .end local v3    # "inStream":Ljava/io/DataInputStream;
    .end local v5    # "parsed":Z
    .end local v6    # "reader":Lmf/org/apache/xml/resolver/readers/CatalogReader;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method protected declared-synchronized parseCatalogFile(Ljava/lang/String;)V
    .locals 16
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    .prologue
    .line 817
    monitor-enter p0

    :try_start_0
    const-string v12, "basename"

    invoke-static {v12}, Lmf/org/apache/xml/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogCwd:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    :goto_0
    :try_start_1
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogCwd:Ljava/net/URL;

    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v13, 0x2

    const-string v14, "Loading catalog"

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v14, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v13, 0x4

    const-string v14, "Default BASE"

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    invoke-virtual {v15}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    invoke-virtual {v12}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    .line 843
    const/4 v6, 0x0

    .line 844
    .local v6, "inStream":Ljava/io/DataInputStream;
    const/4 v9, 0x0

    .line 845
    .local v9, "parsed":Z
    const/4 v8, 0x0

    .line 847
    .local v8, "notFound":Z
    const/4 v2, 0x0

    .local v2, "count":I
    move-object v7, v6

    .end local v6    # "inStream":Ljava/io/DataInputStream;
    .local v7, "inStream":Ljava/io/DataInputStream;
    :goto_2
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-lt v2, v12, :cond_2

    :cond_0
    move-object v6, v7

    .line 878
    .end local v7    # "inStream":Ljava/io/DataInputStream;
    .restart local v6    # "inStream":Ljava/io/DataInputStream;
    :goto_3
    if-nez v9, :cond_1

    .line 879
    if-eqz v8, :cond_4

    .line 880
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v13, 0x3

    const-string v14, "Catalog does not exist"

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v14, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 885
    :cond_1
    :goto_4
    monitor-exit p0

    return-void

    .line 818
    .end local v2    # "count":I
    .end local v6    # "inStream":Ljava/io/DataInputStream;
    .end local v8    # "notFound":Z
    .end local v9    # "parsed":Z
    :catch_0
    move-exception v3

    .line 819
    .local v3, "e":Ljava/net/MalformedURLException;
    :try_start_3
    const-string v12, "user.dir"

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 820
    .local v11, "userdir":Ljava/lang/String;
    const/16 v12, 0x5c

    const/16 v13, 0x2f

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 821
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v13, 0x1

    const-string v14, "Malformed URL on cwd"

    invoke-virtual {v12, v13, v14, v11}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 822
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogCwd:Ljava/net/URL;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 817
    .end local v3    # "e":Ljava/net/MalformedURLException;
    .end local v11    # "userdir":Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 828
    :catch_1
    move-exception v3

    .line 830
    .restart local v3    # "e":Ljava/net/MalformedURLException;
    :try_start_4
    new-instance v12, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "file:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 831
    :catch_2
    move-exception v4

    .line 832
    .local v4, "e2":Ljava/net/MalformedURLException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v13, 0x1

    const-string v14, "Malformed URL on catalog filename"

    .line 833
    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 832
    invoke-virtual {v12, v13, v14, v15}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 834
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    goto/16 :goto_1

    .line 848
    .end local v3    # "e":Ljava/net/MalformedURLException;
    .end local v4    # "e2":Ljava/net/MalformedURLException;
    .restart local v2    # "count":I
    .restart local v7    # "inStream":Ljava/io/DataInputStream;
    .restart local v8    # "notFound":Z
    .restart local v9    # "parsed":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->readerArr:Ljava/util/Vector;

    invoke-virtual {v12, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xml/resolver/readers/CatalogReader;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 851
    .local v10, "reader":Lmf/org/apache/xml/resolver/readers/CatalogReader;
    const/4 v8, 0x0

    .line 852
    :try_start_6
    new-instance v6, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->base:Ljava/net/URL;

    invoke-virtual {v12}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 860
    .end local v7    # "inStream":Ljava/io/DataInputStream;
    .restart local v6    # "inStream":Ljava/io/DataInputStream;
    :try_start_7
    move-object/from16 v0, p0

    invoke-interface {v10, v0, v6}, Lmf/org/apache/xml/resolver/readers/CatalogReader;->readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    :try_end_7
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 861
    const/4 v9, 0x1

    .line 872
    :cond_3
    :try_start_8
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 847
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move-object v7, v6

    .end local v6    # "inStream":Ljava/io/DataInputStream;
    .restart local v7    # "inStream":Ljava/io/DataInputStream;
    goto/16 :goto_2

    .line 853
    :catch_3
    move-exception v5

    .line 855
    .local v5, "fnfe":Ljava/io/FileNotFoundException;
    const/4 v8, 0x1

    move-object v6, v7

    .line 856
    .end local v7    # "inStream":Ljava/io/DataInputStream;
    .restart local v6    # "inStream":Ljava/io/DataInputStream;
    goto/16 :goto_3

    .line 862
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .line 863
    .local v1, "ce":Lmf/org/apache/xml/resolver/CatalogException;
    :try_start_9
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v12

    const/4 v13, 0x7

    if-ne v12, v13, :cond_3

    goto/16 :goto_3

    .line 882
    .end local v1    # "ce":Lmf/org/apache/xml/resolver/CatalogException;
    .end local v10    # "reader":Lmf/org/apache/xml/resolver/readers/CatalogReader;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v13, 0x1

    const-string v14, "Failed to parse catalog"

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v14, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 873
    .restart local v10    # "reader":Lmf/org/apache/xml/resolver/readers/CatalogReader;
    :catch_5
    move-exception v12

    goto :goto_5
.end method

.method protected declared-synchronized parsePendingCatalogs()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 714
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 715
    .local v4, "newQueue":Ljava/util/Vector;
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 716
    .local v5, "q":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_2

    .line 721
    const/4 v2, 0x0

    .local v2, "curCat":I
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_3

    .line 726
    iput-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    .line 727
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 733
    .end local v2    # "curCat":I
    .end local v4    # "newQueue":Ljava/util/Vector;
    .end local v5    # "q":Ljava/util/Enumeration;
    :cond_0
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 734
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 735
    .local v3, "e":Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_4

    .line 738
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 744
    .end local v3    # "e":Ljava/util/Enumeration;
    :cond_1
    :goto_3
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 795
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    monitor-exit p0

    return-void

    .line 717
    .restart local v4    # "newQueue":Ljava/util/Vector;
    .restart local v5    # "q":Ljava/util/Enumeration;
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 711
    .end local v4    # "newQueue":Ljava/util/Vector;
    .end local v5    # "q":Ljava/util/Enumeration;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 722
    .restart local v2    # "curCat":I
    .restart local v4    # "newQueue":Ljava/util/Vector;
    .restart local v5    # "q":Ljava/util/Enumeration;
    :cond_3
    :try_start_2
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 723
    .local v0, "catfile":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 721
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 736
    .end local v0    # "catfile":Ljava/lang/String;
    .end local v2    # "curCat":I
    .end local v4    # "newQueue":Ljava/util/Vector;
    .end local v5    # "q":Ljava/util/Enumeration;
    .restart local v3    # "e":Ljava/util/Enumeration;
    :cond_4
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 745
    .end local v3    # "e":Ljava/util/Enumeration;
    :cond_5
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 747
    .restart local v0    # "catfile":Ljava/lang/String;
    :try_start_3
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 752
    :goto_4
    :try_start_4
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    if-nez v6, :cond_7

    .line 756
    :try_start_5
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalogFile(Ljava/lang/String;)V
    :try_end_5
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 766
    :goto_5
    :try_start_6
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 769
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 770
    .restart local v4    # "newQueue":Ljava/util/Vector;
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 771
    .restart local v5    # "q":Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_8

    .line 776
    const/4 v2, 0x0

    .restart local v2    # "curCat":I
    :goto_7
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_9

    .line 781
    iput-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    .line 782
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localCatalogFiles:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 785
    .end local v2    # "curCat":I
    .end local v4    # "newQueue":Ljava/util/Vector;
    .end local v5    # "q":Ljava/util/Enumeration;
    :cond_6
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 786
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 787
    .restart local v3    # "e":Ljava/util/Enumeration;
    :goto_8
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_a

    .line 790
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->localDelegate:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    goto/16 :goto_3

    .line 757
    .end local v3    # "e":Ljava/util/Enumeration;
    :catch_0
    move-exception v1

    .line 758
    .local v1, "ce":Lmf/org/apache/xml/resolver/CatalogException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "FIXME: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 763
    .end local v1    # "ce":Lmf/org/apache/xml/resolver/CatalogException;
    :cond_7
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5

    .line 772
    .restart local v4    # "newQueue":Ljava/util/Vector;
    .restart local v5    # "q":Ljava/util/Enumeration;
    :cond_8
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_6

    .line 777
    .restart local v2    # "curCat":I
    :cond_9
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogFiles:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "catfile":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 778
    .restart local v0    # "catfile":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 788
    .end local v2    # "curCat":I
    .end local v4    # "newQueue":Ljava/util/Vector;
    .end local v5    # "q":Ljava/util/Enumeration;
    .restart local v3    # "e":Ljava/util/Enumeration;
    :cond_a
    iget-object v6, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    .line 748
    .end local v3    # "e":Ljava/util/Enumeration;
    :catch_1
    move-exception v6

    goto/16 :goto_4
.end method

.method public resolveDoctype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1190
    const/4 v3, 0x0

    .line 1192
    .local v3, "resolved":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v4, v4, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "resolveDoctype("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1192
    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 1195
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1197
    if-eqz p2, :cond_0

    const-string v4, "urn:publicid:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1198
    invoke-static {p2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1201
    :cond_0
    if-eqz p3, :cond_1

    const-string v4, "urn:publicid:"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1202
    invoke-static {p3}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1203
    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1204
    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v4, v4, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v5, "urn:publicid: system identifier differs from public identifier; using public identifier"

    invoke-virtual {v4, v9, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 1205
    const/4 p3, 0x0

    .line 1212
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 1214
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1215
    if-eqz v3, :cond_3

    move-object v4, v3

    .line 1250
    :goto_1
    return-object v4

    .line 1207
    :cond_2
    move-object p2, p3

    .line 1208
    const/4 p3, 0x0

    goto :goto_0

    .line 1220
    :cond_3
    if-eqz p2, :cond_4

    .line 1222
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    invoke-virtual {p0, v4, p1, p2, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalPublic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1226
    if-eqz v3, :cond_4

    move-object v4, v3

    .line 1227
    goto :goto_1

    .line 1232
    :cond_4
    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    .line 1233
    .local v2, "over":Z
    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 1234
    .local v1, "en":Ljava/util/Enumeration;
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1250
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    invoke-virtual {p0, v4, p1, p2, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1235
    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/CatalogEntry;

    .line 1236
    .local v0, "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    if-ne v4, v5, :cond_7

    .line 1237
    invoke-virtual {v0, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "YES"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1238
    goto :goto_2

    .line 1241
    :cond_7
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    if-ne v4, v5, :cond_5

    .line 1242
    invoke-virtual {v0, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1243
    if-nez v2, :cond_8

    if-nez p3, :cond_5

    .line 1244
    :cond_8
    invoke-virtual {v0, v9}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public resolveDocument()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1269
    iget-object v2, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v2, v2, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v3, 0x3

    const-string v4, "resolveDocument"

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 1271
    iget-object v2, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 1272
    .local v1, "en":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1279
    sget v2, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    invoke-virtual {p0, v2, v5, v5, v5}, Lmf/org/apache/xml/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 1273
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/CatalogEntry;

    .line 1274
    .local v0, "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v2

    sget v3, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    if-ne v2, v3, :cond_0

    .line 1275
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1303
    const/4 v3, 0x0

    .line 1305
    .local v3, "resolved":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v4, v4, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "resolveEntity("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1305
    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 1308
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1310
    if-eqz p2, :cond_0

    const-string v4, "urn:publicid:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1311
    invoke-static {p2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1314
    :cond_0
    if-eqz p3, :cond_1

    const-string v4, "urn:publicid:"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1315
    invoke-static {p3}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1316
    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1317
    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v4, v4, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v5, "urn:publicid: system identifier differs from public identifier; using public identifier"

    invoke-virtual {v4, v9, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 1318
    const/4 p3, 0x0

    .line 1325
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 1327
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1328
    if-eqz v3, :cond_3

    move-object v4, v3

    .line 1363
    :goto_1
    return-object v4

    .line 1320
    :cond_2
    move-object p2, p3

    .line 1321
    const/4 p3, 0x0

    goto :goto_0

    .line 1333
    :cond_3
    if-eqz p2, :cond_4

    .line 1335
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    invoke-virtual {p0, v4, p1, p2, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalPublic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1339
    if-eqz v3, :cond_4

    move-object v4, v3

    .line 1340
    goto :goto_1

    .line 1345
    :cond_4
    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    .line 1346
    .local v2, "over":Z
    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 1347
    .local v1, "en":Ljava/util/Enumeration;
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1363
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    invoke-virtual {p0, v4, p1, p2, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1348
    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/CatalogEntry;

    .line 1349
    .local v0, "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    if-ne v4, v5, :cond_7

    .line 1350
    invoke-virtual {v0, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "YES"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1351
    goto :goto_2

    .line 1354
    :cond_7
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    if-ne v4, v5, :cond_5

    .line 1355
    invoke-virtual {v0, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1356
    if-nez v2, :cond_8

    if-nez p3, :cond_5

    .line 1357
    :cond_8
    invoke-virtual {v0, v9}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method protected declared-synchronized resolveLocalPublic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "entityType"    # I
    .param p2, "entityName"    # Ljava/lang/String;
    .param p3, "publicId"    # Ljava/lang/String;
    .param p4, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1579
    monitor-enter p0

    :try_start_0
    invoke-static/range {p3 .. p3}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1582
    if-eqz p4, :cond_0

    .line 1583
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1584
    .local v9, "resolved":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 1653
    .end local v9    # "resolved":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v9

    .line 1590
    :cond_0
    :try_start_1
    iget-boolean v7, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    .line 1591
    .local v7, "over":Z
    iget-object v10, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 1592
    .local v5, "en":Ljava/util/Enumeration;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_4

    .line 1608
    iget-boolean v7, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    .line 1609
    iget-object v10, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 1610
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1611
    .local v2, "delCats":Ljava/util/Vector;
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1630
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 1631
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    .line 1633
    .local v6, "enCats":Ljava/util/Enumeration;
    iget-object v10, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v10, v10, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->getDebug()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 1634
    iget-object v10, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v10, v10, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v11, 0x2

    const-string v12, "Switching to delegated catalog(s):"

    invoke-virtual {v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 1635
    :goto_3
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_a

    .line 1641
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Catalog;->newCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v1

    .line 1643
    .local v1, "dcat":Lmf/org/apache/xml/resolver/Catalog;
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    .line 1644
    :goto_4
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_b

    .line 1649
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v10}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 1593
    .end local v1    # "dcat":Lmf/org/apache/xml/resolver/Catalog;
    .end local v2    # "delCats":Ljava/util/Vector;
    .end local v6    # "enCats":Ljava/util/Enumeration;
    :cond_4
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    .line 1594
    .local v4, "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v10

    sget v11, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    if-ne v10, v11, :cond_5

    .line 1595
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "YES"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 1596
    goto :goto_1

    .line 1599
    :cond_5
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v10

    sget v11, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    if-ne v10, v11, :cond_1

    .line 1600
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1601
    if-nez v7, :cond_6

    if-nez p4, :cond_1

    .line 1602
    :cond_6
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 1612
    .end local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    .restart local v2    # "delCats":Ljava/util/Vector;
    :cond_7
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    .line 1613
    .restart local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v10

    sget v11, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    if-ne v10, v11, :cond_8

    .line 1614
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "YES"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 1615
    goto/16 :goto_2

    .line 1618
    :cond_8
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v10

    sget v11, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_PUBLIC:I

    if-ne v10, v11, :cond_2

    .line 1619
    if-nez v7, :cond_9

    if-nez p4, :cond_2

    .line 1620
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v8

    .line 1621
    .local v8, "p":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v10, v11, :cond_2

    .line 1622
    const/4 v10, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1625
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1579
    .end local v2    # "delCats":Ljava/util/Vector;
    .end local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    .end local v5    # "en":Ljava/util/Enumeration;
    .end local v7    # "over":Z
    .end local v8    # "p":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1636
    .restart local v2    # "delCats":Ljava/util/Vector;
    .restart local v5    # "en":Ljava/util/Enumeration;
    .restart local v6    # "enCats":Ljava/util/Enumeration;
    .restart local v7    # "over":Z
    :cond_a
    :try_start_2
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1637
    .local v3, "delegatedCatalog":Ljava/lang/String;
    iget-object v10, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v10, v10, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v11, 0x2

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\t"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1645
    .end local v3    # "delegatedCatalog":Ljava/lang/String;
    .restart local v1    # "dcat":Lmf/org/apache/xml/resolver/Catalog;
    :cond_b
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1646
    .restart local v3    # "delegatedCatalog":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    .line 1653
    .end local v1    # "dcat":Lmf/org/apache/xml/resolver/Catalog;
    .end local v3    # "delegatedCatalog":Ljava/lang/String;
    .end local v6    # "enCats":Ljava/util/Enumeration;
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method protected resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1715
    const-string v14, "os.name"

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1716
    .local v7, "osname":Ljava/lang/String;
    const-string v14, "Windows"

    invoke-virtual {v7, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_3

    const/4 v13, 0x1

    .line 1717
    .local v13, "windows":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 1718
    .local v5, "en":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-nez v14, :cond_4

    .line 1729
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 1730
    const/4 v10, 0x0

    .line 1731
    .local v10, "startString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1732
    .local v9, "prefix":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-nez v14, :cond_6

    .line 1749
    if-eqz v9, :cond_8

    .line 1751
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1819
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v10    # "startString":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v12

    .line 1716
    .end local v5    # "en":Ljava/util/Enumeration;
    .end local v13    # "windows":Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 1719
    .restart local v5    # "en":Ljava/util/Enumeration;
    .restart local v13    # "windows":Z
    :cond_4
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    .line 1720
    .local v4, "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v14

    sget v15, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    if-ne v14, v15, :cond_0

    .line 1721
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 1722
    if-eqz v13, :cond_0

    .line 1723
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1724
    :cond_5
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 1733
    .end local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    .restart local v9    # "prefix":Ljava/lang/String;
    .restart local v10    # "startString":Ljava/lang/String;
    :cond_6
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    .line 1735
    .restart local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v14

    sget v15, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_SYSTEM:I

    if-ne v14, v15, :cond_1

    .line 1736
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v8

    .line 1737
    .local v8, "p":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-gt v14, v15, :cond_1

    .line 1738
    const/4 v14, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1740
    if-eqz v10, :cond_7

    .line 1741
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-le v14, v15, :cond_1

    .line 1742
    :cond_7
    move-object v10, v8

    .line 1743
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 1755
    .end local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    .end local v8    # "p":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 1756
    const/4 v11, 0x0

    .line 1757
    .local v11, "suffixString":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1758
    .local v12, "suffixURI":Ljava/lang/String;
    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-nez v14, :cond_c

    .line 1775
    if-nez v12, :cond_2

    .line 1781
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 1782
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1783
    .local v2, "delCats":Ljava/util/Vector;
    :cond_a
    :goto_4
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-nez v14, :cond_e

    .line 1797
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v14

    if-lez v14, :cond_11

    .line 1798
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    .line 1800
    .local v6, "enCats":Ljava/util/Enumeration;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v14, v14, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v14}, Lmf/org/apache/xml/resolver/helpers/Debug;->getDebug()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_b

    .line 1801
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v14, v14, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v15, 0x2

    const-string v16, "Switching to delegated catalog(s):"

    invoke-virtual/range {v14 .. v16}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 1802
    :goto_5
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-nez v14, :cond_f

    .line 1808
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/resolver/Catalog;->newCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v1

    .line 1810
    .local v1, "dcat":Lmf/org/apache/xml/resolver/Catalog;
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    .line 1811
    :goto_6
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-nez v14, :cond_10

    .line 1816
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 1759
    .end local v1    # "dcat":Lmf/org/apache/xml/resolver/Catalog;
    .end local v2    # "delCats":Ljava/util/Vector;
    .end local v6    # "enCats":Ljava/util/Enumeration;
    :cond_c
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    .line 1761
    .restart local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v14

    sget v15, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM_SUFFIX:I

    if-ne v14, v15, :cond_9

    .line 1762
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v8

    .line 1763
    .restart local v8    # "p":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-gt v14, v15, :cond_9

    .line 1764
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1766
    if-eqz v11, :cond_d

    .line 1767
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-le v14, v15, :cond_9

    .line 1768
    :cond_d
    move-object v11, v8

    .line 1769
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 1784
    .end local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    .end local v8    # "p":Ljava/lang/String;
    .restart local v2    # "delCats":Ljava/util/Vector;
    :cond_e
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    .line 1786
    .restart local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v14

    sget v15, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_SYSTEM:I

    if-ne v14, v15, :cond_a

    .line 1787
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v8

    .line 1788
    .restart local v8    # "p":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-gt v14, v15, :cond_a

    .line 1789
    const/4 v14, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1792
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1803
    .end local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    .end local v8    # "p":Ljava/lang/String;
    .restart local v6    # "enCats":Ljava/util/Enumeration;
    :cond_f
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1804
    .local v3, "delegatedCatalog":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v14, v14, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v15, 0x2

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "\t"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 1812
    .end local v3    # "delegatedCatalog":Ljava/lang/String;
    .restart local v1    # "dcat":Lmf/org/apache/xml/resolver/Catalog;
    :cond_10
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1813
    .restart local v3    # "delegatedCatalog":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1819
    .end local v1    # "dcat":Lmf/org/apache/xml/resolver/Catalog;
    .end local v3    # "delegatedCatalog":Ljava/lang/String;
    .end local v6    # "enCats":Ljava/util/Enumeration;
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_2
.end method

.method protected resolveLocalURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1877
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 1878
    .local v5, "en":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-nez v12, :cond_3

    .line 1887
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 1888
    const/4 v9, 0x0

    .line 1889
    .local v9, "startString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1890
    .local v8, "prefix":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-nez v12, :cond_4

    .line 1907
    if-eqz v8, :cond_6

    .line 1909
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1977
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v9    # "startString":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v11

    .line 1879
    :cond_3
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    .line 1880
    .local v4, "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v12

    sget v13, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    if-ne v12, v13, :cond_0

    .line 1881
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1882
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 1891
    .end local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    .restart local v8    # "prefix":Ljava/lang/String;
    .restart local v9    # "startString":Ljava/lang/String;
    :cond_4
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    .line 1893
    .restart local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v12

    sget v13, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_URI:I

    if-ne v12, v13, :cond_1

    .line 1894
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v7

    .line 1895
    .local v7, "p":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-gt v12, v13, :cond_1

    .line 1896
    const/4 v12, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1898
    if-eqz v9, :cond_5

    .line 1899
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-le v12, v13, :cond_1

    .line 1900
    :cond_5
    move-object v9, v7

    .line 1901
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 1913
    .end local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    .end local v7    # "p":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 1914
    const/4 v10, 0x0

    .line 1915
    .local v10, "suffixString":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1916
    .local v11, "suffixURI":Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-nez v12, :cond_a

    .line 1933
    if-nez v11, :cond_2

    .line 1939
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 1940
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1941
    .local v2, "delCats":Ljava/util/Vector;
    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-nez v12, :cond_c

    .line 1955
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v12

    if-lez v12, :cond_f

    .line 1956
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    .line 1958
    .local v6, "enCats":Ljava/util/Enumeration;
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->getDebug()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_9

    .line 1959
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v13, 0x2

    const-string v14, "Switching to delegated catalog(s):"

    invoke-virtual {v12, v13, v14}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 1960
    :goto_4
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-nez v12, :cond_d

    .line 1966
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/resolver/Catalog;->newCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v1

    .line 1968
    .local v1, "dcat":Lmf/org/apache/xml/resolver/Catalog;
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    .line 1969
    :goto_5
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-nez v12, :cond_e

    .line 1974
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1917
    .end local v1    # "dcat":Lmf/org/apache/xml/resolver/Catalog;
    .end local v2    # "delCats":Ljava/util/Vector;
    .end local v6    # "enCats":Ljava/util/Enumeration;
    :cond_a
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    .line 1919
    .restart local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v12

    sget v13, Lmf/org/apache/xml/resolver/Catalog;->URI_SUFFIX:I

    if-ne v12, v13, :cond_7

    .line 1920
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v7

    .line 1921
    .restart local v7    # "p":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-gt v12, v13, :cond_7

    .line 1922
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1924
    if-eqz v10, :cond_b

    .line 1925
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-le v12, v13, :cond_7

    .line 1926
    :cond_b
    move-object v10, v7

    .line 1927
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 1942
    .end local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    .end local v7    # "p":Ljava/lang/String;
    .restart local v2    # "delCats":Ljava/util/Vector;
    :cond_c
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    .line 1944
    .restart local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v12

    sget v13, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_URI:I

    if-ne v12, v13, :cond_8

    .line 1945
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v7

    .line 1946
    .restart local v7    # "p":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-gt v12, v13, :cond_8

    .line 1947
    const/4 v12, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1950
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1961
    .end local v4    # "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    .end local v7    # "p":Ljava/lang/String;
    .restart local v6    # "enCats":Ljava/util/Enumeration;
    :cond_d
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1962
    .local v3, "delegatedCatalog":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\t"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 1970
    .end local v3    # "delegatedCatalog":Ljava/lang/String;
    .restart local v1    # "dcat":Lmf/org/apache/xml/resolver/Catalog;
    :cond_e
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1971
    .restart local v3    # "delegatedCatalog":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1977
    .end local v1    # "dcat":Lmf/org/apache/xml/resolver/Catalog;
    .end local v3    # "delegatedCatalog":Ljava/lang/String;
    .end local v6    # "enCats":Ljava/util/Enumeration;
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method public resolveNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "notationName"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1389
    const/4 v3, 0x0

    .line 1391
    .local v3, "resolved":Ljava/lang/String;
    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v4, v4, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "resolveNotation("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1391
    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 1394
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1396
    if-eqz p2, :cond_0

    const-string v4, "urn:publicid:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1397
    invoke-static {p2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1400
    :cond_0
    if-eqz p3, :cond_1

    const-string v4, "urn:publicid:"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1401
    invoke-static {p3}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1402
    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1403
    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v4, v4, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v5, "urn:publicid: system identifier differs from public identifier; using public identifier"

    invoke-virtual {v4, v9, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 1404
    const/4 p3, 0x0

    .line 1411
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 1413
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1414
    if-eqz v3, :cond_3

    move-object v4, v3

    .line 1449
    :goto_1
    return-object v4

    .line 1406
    :cond_2
    move-object p2, p3

    .line 1407
    const/4 p3, 0x0

    goto :goto_0

    .line 1419
    :cond_3
    if-eqz p2, :cond_4

    .line 1421
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    invoke-virtual {p0, v4, p1, p2, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalPublic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1425
    if-eqz v3, :cond_4

    move-object v4, v3

    .line 1426
    goto :goto_1

    .line 1431
    :cond_4
    iget-boolean v2, p0, Lmf/org/apache/xml/resolver/Catalog;->default_override:Z

    .line 1432
    .local v2, "over":Z
    iget-object v4, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 1433
    .local v1, "en":Ljava/util/Enumeration;
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1449
    sget v4, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    invoke-virtual {p0, v4, p1, p2, p3}, Lmf/org/apache/xml/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1434
    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/CatalogEntry;

    .line 1435
    .local v0, "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    if-ne v4, v5, :cond_7

    .line 1436
    invoke-virtual {v0, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "YES"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1437
    goto :goto_2

    .line 1440
    :cond_7
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v4

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    if-ne v4, v5, :cond_5

    .line 1441
    invoke-virtual {v0, v8}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1442
    if-nez v2, :cond_8

    if-nez p3, :cond_5

    .line 1443
    :cond_8
    invoke-virtual {v0, v9}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1481
    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resolvePublic("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 1483
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1485
    if-eqz p1, :cond_0

    const-string v1, "urn:publicid:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1486
    invoke-static {p1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1489
    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "urn:publicid:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1490
    invoke-static {p2}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1491
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1492
    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v2, 0x1

    const-string v3, "urn:publicid: system identifier differs from public identifier; using public identifier"

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 1493
    const/4 p2, 0x0

    .line 1501
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 1502
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1503
    .local v0, "resolved":Ljava/lang/String;
    if-eqz v0, :cond_3

    move-object v1, v0

    .line 1518
    :goto_1
    return-object v1

    .line 1495
    .end local v0    # "resolved":Ljava/lang/String;
    :cond_2
    move-object p1, p2

    .line 1496
    const/4 p2, 0x0

    goto :goto_0

    .line 1509
    :cond_3
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    invoke-virtual {p0, v1, v5, p1, p2}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalPublic(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1513
    .restart local v0    # "resolved":Ljava/lang/String;
    if-eqz v0, :cond_4

    move-object v1, v0

    .line 1514
    goto :goto_1

    .line 1518
    :cond_4
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    invoke-virtual {p0, v1, v5, p1, p2}, Lmf/org/apache/xml/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected declared-synchronized resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "entityType"    # I
    .param p2, "entityName"    # Ljava/lang/String;
    .param p3, "publicId"    # Ljava/lang/String;
    .param p4, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2014
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "catPos":I
    :goto_0
    :try_start_0
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-lt v1, v8, :cond_1

    .line 2067
    const/4 v7, 0x0

    :cond_0
    monitor-exit p0

    return-object v7

    .line 2015
    :cond_1
    const/4 v0, 0x0

    .line 2018
    .local v0, "c":Lmf/org/apache/xml/resolver/Catalog;
    :try_start_1
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lmf/org/apache/xml/resolver/Catalog;
    check-cast v0, Lmf/org/apache/xml/resolver/Catalog;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2037
    .restart local v0    # "c":Lmf/org/apache/xml/resolver/Catalog;
    :goto_1
    const/4 v7, 0x0

    .line 2040
    .local v7, "resolved":Ljava/lang/String;
    :try_start_2
    sget v8, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    if-ne p1, v8, :cond_3

    .line 2041
    invoke-virtual {v0, p2, p3, p4}, Lmf/org/apache/xml/resolver/Catalog;->resolveDoctype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2062
    :cond_2
    :goto_2
    if-nez v7, :cond_0

    .line 2014
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2019
    .end local v0    # "c":Lmf/org/apache/xml/resolver/Catalog;
    .end local v7    # "resolved":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2020
    .local v3, "e":Ljava/lang/ClassCastException;
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2021
    .local v2, "catfile":Ljava/lang/String;
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Catalog;->newCatalog()Lmf/org/apache/xml/resolver/Catalog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 2024
    .restart local v0    # "c":Lmf/org/apache/xml/resolver/Catalog;
    :try_start_3
    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2034
    :goto_3
    :try_start_4
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogs:Ljava/util/Vector;

    invoke-virtual {v8, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2014
    .end local v0    # "c":Lmf/org/apache/xml/resolver/Catalog;
    .end local v2    # "catfile":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 2025
    .restart local v0    # "c":Lmf/org/apache/xml/resolver/Catalog;
    .restart local v2    # "catfile":Ljava/lang/String;
    .restart local v3    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v6

    .line 2026
    .local v6, "mue":Ljava/net/MalformedURLException;
    :try_start_5
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v8, v8, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Malformed Catalog URL"

    invoke-virtual {v8, v9, v10, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2027
    .end local v6    # "mue":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v4

    .line 2028
    .local v4, "fnfe":Ljava/io/FileNotFoundException;
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v8, v8, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Failed to load catalog, file not found"

    invoke-virtual {v8, v9, v10, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2030
    .end local v4    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    .line 2031
    .local v5, "ioe":Ljava/io/IOException;
    iget-object v8, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v8, v8, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Failed to load catalog, I/O error"

    invoke-virtual {v8, v9, v10, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2044
    .end local v2    # "catfile":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/ClassCastException;
    .end local v5    # "ioe":Ljava/io/IOException;
    .restart local v7    # "resolved":Ljava/lang/String;
    :cond_3
    sget v8, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    if-ne p1, v8, :cond_4

    .line 2045
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/Catalog;->resolveDocument()Ljava/lang/String;

    move-result-object v7

    .line 2046
    goto :goto_2

    :cond_4
    sget v8, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    if-ne p1, v8, :cond_5

    .line 2047
    invoke-virtual {v0, p2, p3, p4}, Lmf/org/apache/xml/resolver/Catalog;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2050
    goto :goto_2

    :cond_5
    sget v8, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    if-ne p1, v8, :cond_6

    .line 2051
    invoke-virtual {v0, p2, p3, p4}, Lmf/org/apache/xml/resolver/Catalog;->resolveNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2054
    goto :goto_2

    :cond_6
    sget v8, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    if-ne p1, v8, :cond_7

    .line 2055
    invoke-virtual {v0, p3, p4}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2056
    goto :goto_2

    :cond_7
    sget v8, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    if-ne p1, v8, :cond_8

    .line 2057
    invoke-virtual {v0, p4}, Lmf/org/apache/xml/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2058
    goto :goto_2

    :cond_8
    sget v8, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    if-ne p1, v8, :cond_2

    .line 2059
    invoke-virtual {v0, p4}, Lmf/org/apache/xml/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    goto :goto_2
.end method

.method public resolveSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1677
    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resolveSystem("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 1679
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1681
    if-eqz p1, :cond_1

    const-string v1, "urn:publicid:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1682
    invoke-static {p1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1683
    invoke-virtual {p0, p1, v5}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1695
    :cond_0
    :goto_0
    return-object v0

    .line 1687
    :cond_1
    if-eqz p1, :cond_2

    .line 1688
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1689
    .local v0, "resolved":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1695
    .end local v0    # "resolved":Ljava/lang/String;
    :cond_2
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    invoke-virtual {p0, v1, v5, v5, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public resolveURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1841
    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resolveURI("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    .line 1843
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/resolver/Catalog;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1845
    if-eqz p1, :cond_1

    const-string v1, "urn:publicid:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1846
    invoke-static {p1}, Lmf/org/apache/xml/resolver/helpers/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1847
    invoke-virtual {p0, p1, v5}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1859
    :cond_0
    :goto_0
    return-object v0

    .line 1851
    :cond_1
    if-eqz p1, :cond_2

    .line 1852
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveLocalURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1853
    .local v0, "resolved":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1859
    .end local v0    # "resolved":Ljava/lang/String;
    :cond_2
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    invoke-virtual {p0, v1, v5, v5, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setCatalogManager(Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 0
    .param p1, "manager"    # Lmf/org/apache/xml/resolver/CatalogManager;

    .prologue
    .line 392
    iput-object p1, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    .line 393
    return-void
.end method

.method public setupReaders()V
    .locals 6

    .prologue
    .line 399
    invoke-static {}, Lmf/javax/xml/parsers/SAXParserFactory;->newInstance()Lmf/javax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 400
    .local v1, "spf":Lmf/javax/xml/parsers/SAXParserFactory;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 401
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lmf/javax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 403
    new-instance v0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;

    invoke-direct {v0, v1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>(Lmf/javax/xml/parsers/SAXParserFactory;)V

    .line 405
    .local v0, "saxReader":Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;
    const/4 v3, 0x0

    const-string v4, "XCatalog"

    .line 406
    const-string v5, "org.apache.xml.resolver.readers.XCatalogReader"

    .line 405
    invoke-virtual {v0, v3, v4, v5}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v3, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    .line 409
    const-string v4, "catalog"

    .line 410
    const-string v5, "org.apache.xml.resolver.readers.OASISXMLCatalogReader"

    .line 408
    invoke-virtual {v0, v3, v4, v5}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v3, "application/xml"

    invoke-virtual {p0, v3, v0}, Lmf/org/apache/xml/resolver/Catalog;->addReader(Ljava/lang/String;Lmf/org/apache/xml/resolver/readers/CatalogReader;)V

    .line 414
    new-instance v2, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;

    invoke-direct {v2}, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;-><init>()V

    .line 415
    .local v2, "textReader":Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;
    const-string v3, "text/plain"

    invoke-virtual {p0, v3, v2}, Lmf/org/apache/xml/resolver/Catalog;->addReader(Ljava/lang/String;Lmf/org/apache/xml/resolver/readers/CatalogReader;)V

    .line 416
    return-void
.end method

.method public unknownEntry(Ljava/util/Vector;)V
    .locals 4
    .param p1, "strings"    # Ljava/util/Vector;

    .prologue
    .line 1102
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1103
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1104
    .local v0, "keyword":Ljava/lang/String;
    iget-object v1, p0, Lmf/org/apache/xml/resolver/Catalog;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v2, 0x2

    const-string v3, "Unrecognized token parsing catalog"

    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    .line 1106
    .end local v0    # "keyword":Ljava/lang/String;
    :cond_0
    return-void
.end method
