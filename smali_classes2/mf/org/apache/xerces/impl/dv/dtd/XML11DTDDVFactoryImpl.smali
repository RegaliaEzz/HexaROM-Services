.class public Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;
.super Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;
.source "XML11DTDDVFactoryImpl.java"


# static fields
.field static final fXML11BuiltInTypes:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    .line 73
    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    const-string v2, "XML11ID"

    new-instance v3, Lmf/org/apache/xerces/impl/dv/dtd/XML11IDDatatypeValidator;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/dv/dtd/XML11IDDatatypeValidator;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11IDREFDatatypeValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/dtd/XML11IDREFDatatypeValidator;-><init>()V

    .line 75
    .local v0, "dvTemp":Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    const-string v2, "XML11IDREF"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    const-string v2, "XML11IDREFS"

    new-instance v3, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;

    invoke-direct {v3, v0}, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;-><init>(Lmf/org/apache/xerces/impl/dv/DatatypeValidator;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11NMTOKENDatatypeValidator;

    .end local v0    # "dvTemp":Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/dtd/XML11NMTOKENDatatypeValidator;-><init>()V

    .line 78
    .restart local v0    # "dvTemp":Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    const-string v2, "XML11NMTOKEN"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    const-string v2, "XML11NMTOKENS"

    new-instance v3, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;

    invoke-direct {v3, v0}, Lmf/org/apache/xerces/impl/dv/dtd/ListDatatypeValidator;-><init>(Lmf/org/apache/xerces/impl/dv/DatatypeValidator;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/dtd/DTDDVFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    goto :goto_0
.end method

.method public getBuiltInTypes()Ljava/util/Hashtable;
    .locals 6

    .prologue
    .line 61
    sget-object v5, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fBuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    .line 62
    .local v4, "toReturn":Ljava/util/Hashtable;
    sget-object v5, Lmf/org/apache/xerces/impl/dv/dtd/XML11DTDDVFactoryImpl;->fXML11BuiltInTypes:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 63
    .local v1, "entries":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 69
    return-object v4

    .line 64
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 65
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 66
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, "dv":Ljava/lang/Object;
    invoke-virtual {v4, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
