.class public Lmf/org/apache/xml/serialize/DOMSerializerImpl;
.super Ljava/lang/Object;
.source "DOMSerializerImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/ls/LSSerializer;
.implements Lmf/org/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;
    }
.end annotation


# static fields
.field protected static final CDATA:S = 0x8s

.field protected static final COMMENTS:S = 0x20s

.field protected static final DISCARDDEFAULT:S = 0x40s

.field protected static final DOM_ELEMENT_CONTENT_WHITESPACE:S = 0x400s

.field protected static final ENTITIES:S = 0x4s

.field protected static final INFOSET:S = 0x80s

.field protected static final NAMESPACES:S = 0x1s

.field protected static final NSDECL:S = 0x200s

.field protected static final PRETTY_PRINT:S = 0x800s

.field protected static final SPLITCDATA:S = 0x10s

.field protected static final WELLFORMED:S = 0x2s

.field protected static final XMLDECL:S = 0x100s


# instance fields
.field private final fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

.field private fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

.field private final fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

.field private fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

.field protected features:S

.field private serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

.field private xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    .line 111
    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    .line 112
    new-instance v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    .line 122
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 123
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 124
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 125
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 126
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 127
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 128
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit16 v0, v0, 0x200

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 129
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 130
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 131
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 133
    new-instance v0, Lmf/org/apache/xml/serialize/XMLSerializer;

    invoke-direct {v0}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    .line 134
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    invoke-direct {p0, v0}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->initSerializer(Lmf/org/apache/xml/serialize/XMLSerializer;)V

    .line 135
    return-void
.end method

.method private _getInputEncoding(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 6
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v4, 0x0

    .line 1073
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v5, 0x9

    if-ne v3, v5, :cond_0

    .line 1074
    check-cast p1, Lmf/org/w3c/dom/Document;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    move-object v0, p1

    .line 1075
    .local v0, "doc":Lmf/org/w3c/dom/Document;
    :goto_0
    if-eqz v0, :cond_1

    # getter for: Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentMethodsAvailable:Z
    invoke-static {}, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1077
    :try_start_0
    # getter for: Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetInputEncodingMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$2()Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 1090
    :goto_1
    return-object v3

    .line 1074
    .end local v0    # "doc":Lmf/org/w3c/dom/Document;
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    .line 1080
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    .restart local v0    # "doc":Lmf/org/w3c/dom/Document;
    :catch_0
    move-exception v2

    .line 1081
    .local v2, "vme":Ljava/lang/VirtualMachineError;
    throw v2

    .line 1084
    .end local v2    # "vme":Ljava/lang/VirtualMachineError;
    :catch_1
    move-exception v1

    .line 1085
    .local v1, "td":Ljava/lang/ThreadDeath;
    throw v1

    .line 1088
    .end local v1    # "td":Ljava/lang/ThreadDeath;
    :catch_2
    move-exception v3

    :cond_1
    move-object v3, v4

    .line 1090
    goto :goto_1
.end method

.method private _getXmlEncoding(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 6
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v4, 0x0

    .line 1094
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v5, 0x9

    if-ne v3, v5, :cond_0

    .line 1095
    check-cast p1, Lmf/org/w3c/dom/Document;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    move-object v0, p1

    .line 1096
    .local v0, "doc":Lmf/org/w3c/dom/Document;
    :goto_0
    if-eqz v0, :cond_1

    # getter for: Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentMethodsAvailable:Z
    invoke-static {}, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1098
    :try_start_0
    # getter for: Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlEncodingMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$3()Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 1111
    :goto_1
    return-object v3

    .line 1095
    .end local v0    # "doc":Lmf/org/w3c/dom/Document;
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    .line 1101
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    .restart local v0    # "doc":Lmf/org/w3c/dom/Document;
    :catch_0
    move-exception v2

    .line 1102
    .local v2, "vme":Ljava/lang/VirtualMachineError;
    throw v2

    .line 1105
    .end local v2    # "vme":Ljava/lang/VirtualMachineError;
    :catch_1
    move-exception v1

    .line 1106
    .local v1, "td":Ljava/lang/ThreadDeath;
    throw v1

    .line 1109
    .end local v1    # "td":Ljava/lang/ThreadDeath;
    :catch_2
    move-exception v3

    :cond_1
    move-object v3, v4

    .line 1111
    goto :goto_1
.end method

.method private _getXmlVersion(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 6
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v4, 0x0

    .line 1052
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v5, 0x9

    if-ne v3, v5, :cond_0

    .line 1053
    check-cast p1, Lmf/org/w3c/dom/Document;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    move-object v0, p1

    .line 1054
    .local v0, "doc":Lmf/org/w3c/dom/Document;
    :goto_0
    if-eqz v0, :cond_1

    # getter for: Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentMethodsAvailable:Z
    invoke-static {}, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1056
    :try_start_0
    # getter for: Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlVersionMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$1()Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 1069
    :goto_1
    return-object v3

    .line 1053
    .end local v0    # "doc":Lmf/org/w3c/dom/Document;
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    .line 1059
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    .restart local v0    # "doc":Lmf/org/w3c/dom/Document;
    :catch_0
    move-exception v2

    .line 1060
    .local v2, "vme":Ljava/lang/VirtualMachineError;
    throw v2

    .line 1063
    .end local v2    # "vme":Ljava/lang/VirtualMachineError;
    :catch_1
    move-exception v1

    .line 1064
    .local v1, "td":Ljava/lang/ThreadDeath;
    throw v1

    .line 1067
    .end local v1    # "td":Ljava/lang/ThreadDeath;
    :catch_2
    move-exception v3

    :cond_1
    move-object v3, v4

    .line 1069
    goto :goto_1
.end method

.method private copySettings(Lmf/org/apache/xml/serialize/XMLSerializer;Lmf/org/apache/xml/serialize/XMLSerializer;)V
    .locals 2
    .param p1, "src"    # Lmf/org/apache/xml/serialize/XMLSerializer;
    .param p2, "dest"    # Lmf/org/apache/xml/serialize/XMLSerializer;

    .prologue
    .line 625
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iput-object v0, p2, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    .line 626
    iget-object v0, p2, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    iget-object v1, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 627
    iget-object v0, p2, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    iget-object v1, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setLineSeparator(Ljava/lang/String;)V

    .line 628
    iget-object v0, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    iput-object v0, p2, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    .line 629
    return-void
.end method

.method private initSerializer(Lmf/org/apache/xml/serialize/XMLSerializer;)V
    .locals 1
    .param p1, "ser"    # Lmf/org/apache/xml/serialize/XMLSerializer;

    .prologue
    .line 614
    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    .line 615
    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    .line 616
    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 617
    return-void
.end method

.method private prepareForSerialization(Lmf/org/apache/xml/serialize/XMLSerializer;Lmf/org/w3c/dom/Node;)V
    .locals 9
    .param p1, "ser"    # Lmf/org/apache/xml/serialize/XMLSerializer;
    .param p2, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 881
    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->reset()Z

    .line 882
    iget-short v5, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iput-short v5, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->features:S

    .line 883
    iget-object v5, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iput-object v5, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    .line 884
    iget-short v5, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    .line 885
    iget-short v5, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    iput-boolean v5, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    .line 886
    iget-object v8, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    iget-short v5, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Lmf/org/apache/xml/serialize/OutputFormat;->setIndenting(Z)V

    .line 887
    iget-object v8, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    iget-short v5, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_5

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Lmf/org/apache/xml/serialize/OutputFormat;->setOmitComments(Z)V

    .line 888
    iget-object v5, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    iget-short v8, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v8, v8, 0x100

    if-nez v8, :cond_6

    :goto_4
    invoke-virtual {v5, v6}, Lmf/org/apache/xml/serialize/OutputFormat;->setOmitXMLDeclaration(Z)V

    .line 890
    iget-short v5, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 894
    move-object v2, p2

    .line 896
    .local v2, "root":Lmf/org/w3c/dom/Node;
    const/4 v3, 0x1

    .line 897
    .local v3, "verifyNames":Z
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_7

    move-object v5, p2

    .line 898
    check-cast v5, Lmf/org/w3c/dom/Document;

    move-object v0, v5

    .line 901
    .local v0, "document":Lmf/org/w3c/dom/Document;
    :goto_5
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "isXMLVersionChanged()"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 902
    .local v4, "versionChanged":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 903
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 909
    .end local v4    # "versionChanged":Ljava/lang/reflect/Method;
    :cond_0
    :goto_6
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 910
    :goto_7
    if-nez p2, :cond_8

    .line 934
    .end local v0    # "document":Lmf/org/w3c/dom/Document;
    .end local v2    # "root":Lmf/org/w3c/dom/Node;
    .end local v3    # "verifyNames":Z
    :cond_1
    :goto_8
    return-void

    :cond_2
    move v5, v7

    .line 884
    goto :goto_0

    :cond_3
    move v5, v7

    .line 885
    goto :goto_1

    :cond_4
    move v5, v7

    .line 886
    goto :goto_2

    :cond_5
    move v5, v7

    .line 887
    goto :goto_3

    :cond_6
    move v6, v7

    .line 888
    goto :goto_4

    .line 899
    .restart local v2    # "root":Lmf/org/w3c/dom/Node;
    .restart local v3    # "verifyNames":Z
    :cond_7
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    goto :goto_5

    .line 911
    .restart local v0    # "document":Lmf/org/w3c/dom/Document;
    :cond_8
    invoke-direct {p0, p2, v3, v7}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->verify(Lmf/org/w3c/dom/Node;ZZ)V

    .line 913
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 915
    .local v1, "next":Lmf/org/w3c/dom/Node;
    :cond_9
    :goto_9
    if-eqz v1, :cond_a

    .line 927
    :goto_a
    move-object p2, v1

    goto :goto_7

    .line 917
    :cond_a
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 918
    if-nez v1, :cond_9

    .line 919
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p2

    .line 920
    if-ne v2, p2, :cond_b

    .line 921
    const/4 v1, 0x0

    .line 922
    goto :goto_a

    .line 924
    :cond_b
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_9

    .line 931
    .end local v1    # "next":Lmf/org/w3c/dom/Node;
    :cond_c
    invoke-direct {p0, p2, v3, v7}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->verify(Lmf/org/w3c/dom/Node;ZZ)V

    goto :goto_8

    .line 905
    :catch_0
    move-exception v5

    goto :goto_6
.end method

.method private verify(Lmf/org/w3c/dom/Node;ZZ)V
    .locals 17
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "verifyNames"    # Z
    .param p3, "xml11Version"    # Z

    .prologue
    .line 939
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v15

    .line 940
    .local v15, "type":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    move-object/from16 v0, p1

    iput-object v0, v1, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 942
    packed-switch v15, :pswitch_data_0

    .line 1048
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v2, 0x0

    iput-object v2, v1, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 1049
    return-void

    .line 950
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :pswitch_1
    if-eqz p2, :cond_1

    .line 951
    move-object/from16 v0, p0

    iget-short v1, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 952
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p3

    invoke-static {v1, v2, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v16

    .line 957
    .local v16, "wellformed":Z
    :goto_1
    if-nez v16, :cond_1

    .line 958
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_1

    .line 960
    const-string v1, "http://www.w3.org/dom/DOMTR"

    .line 961
    const-string v2, "wf-invalid-character-in-node-name"

    .line 962
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Element"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 959
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 963
    .local v4, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v5, 0x3

    .line 964
    const-string v6, "wf-invalid-character-in-node-name"

    .line 963
    invoke-static/range {v1 .. v6}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    .line 969
    .end local v4    # "msg":Ljava/lang/String;
    .end local v16    # "wellformed":Z
    :cond_1
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 970
    .local v8, "attributes":Lmf/org/w3c/dom/NamedNodeMap;
    :goto_2
    if-eqz v8, :cond_0

    .line 971
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    invoke-interface {v8}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v12, v1, :cond_0

    .line 972
    invoke-interface {v8, v12}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lmf/org/w3c/dom/Attr;

    .line 973
    .local v9, "attr":Lmf/org/w3c/dom/Attr;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object v9, v1, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    .line 974
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    .line 975
    invoke-interface {v9}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    move/from16 v11, p3

    .line 974
    invoke-static/range {v5 .. v11}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isAttrValueWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Lmf/org/w3c/dom/NamedNodeMap;Lmf/org/w3c/dom/Attr;Ljava/lang/String;Z)V

    .line 976
    if-eqz p2, :cond_2

    .line 977
    invoke-interface {v9}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v1

    move/from16 v0, p3

    invoke-static {v1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v16

    .line 978
    .restart local v16    # "wellformed":Z
    if-nez v16, :cond_2

    .line 981
    const-string v1, "http://www.w3.org/dom/DOMTR"

    .line 982
    const-string v2, "wf-invalid-character-in-node-name"

    .line 983
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Attr"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 980
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 984
    .restart local v4    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v5, 0x3

    .line 985
    const-string v6, "wf-invalid-character-in-node-name"

    .line 984
    invoke-static/range {v1 .. v6}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    .line 971
    .end local v4    # "msg":Ljava/lang/String;
    .end local v16    # "wellformed":Z
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 955
    .end local v8    # "attributes":Lmf/org/w3c/dom/NamedNodeMap;
    .end local v9    # "attr":Lmf/org/w3c/dom/Attr;
    .end local v12    # "i":I
    :cond_3
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    move/from16 v0, p3

    invoke-static {v1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v16

    .restart local v16    # "wellformed":Z
    goto/16 :goto_1

    .line 969
    .end local v16    # "wellformed":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 997
    :pswitch_2
    move-object/from16 v0, p0

    iget-short v1, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    .line 998
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    check-cast p1, Lmf/org/w3c/dom/Comment;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p3

    invoke-static {v1, v2, v3, v5, v0}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isCommentWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1003
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :pswitch_3
    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-short v1, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 1004
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    move/from16 v0, p3

    invoke-static {v1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 1011
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p3

    invoke-static {v1, v2, v3, v5, v0}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1016
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p3

    invoke-static {v1, v2, v3, v5, v0}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v13, p1

    .line 1020
    check-cast v13, Lmf/org/w3c/dom/ProcessingInstruction;

    .line 1021
    .local v13, "pinode":Lmf/org/w3c/dom/ProcessingInstruction;
    invoke-interface {v13}, Lmf/org/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v14

    .line 1022
    .local v14, "target":Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 1023
    if-eqz p3, :cond_6

    .line 1024
    invoke-static {v14}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v16

    .line 1029
    .restart local v16    # "wellformed":Z
    :goto_4
    if-nez v16, :cond_5

    .line 1032
    const-string v1, "http://www.w3.org/dom/DOMTR"

    .line 1033
    const-string v2, "wf-invalid-character-in-node-name"

    .line 1034
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Element"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1031
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1036
    .restart local v4    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    .line 1038
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    .line 1040
    const/4 v5, 0x3

    .line 1041
    const-string v6, "wf-invalid-character-in-node-name"

    .line 1035
    invoke-static/range {v1 .. v6}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    .line 1044
    .end local v4    # "msg":Ljava/lang/String;
    .end local v16    # "wellformed":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {v13}, Lmf/org/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p3

    invoke-static {v1, v2, v3, v5, v0}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1026
    :cond_6
    invoke-static {v14}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v16

    .restart local v16    # "wellformed":Z
    goto :goto_4

    .line 942
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 288
    if-nez p2, :cond_1

    .line 327
    .end local p2    # "state":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 292
    .restart local p2    # "state":Ljava/lang/Object;
    :cond_1
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    .line 293
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "state":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 294
    .local v0, "value":Z
    const-string v3, "namespaces"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 295
    const-string v3, "split-cdata-sections"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 296
    const-string v3, "discard-default-content"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 297
    const-string v3, "xml-declaration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 298
    const-string v3, "well-formed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    const-string v3, "infoset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 300
    const-string v3, "entities"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 301
    const-string v3, "cdata-sections"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 302
    const-string v3, "comments"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    const-string v3, "format-pretty-print"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 304
    const-string v3, "namespace-declarations"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    const-string v3, "canonical-form"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 309
    const-string v3, "validate-if-schema"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 310
    const-string v3, "validate"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 311
    const-string v3, "check-character-normalization"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 312
    const-string v3, "datatype-normalization"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 313
    const-string v3, "normalize-characters"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 315
    :cond_2
    if-eqz v0, :cond_3

    :goto_1
    move v2, v1

    goto/16 :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 317
    :cond_4
    const-string v2, "element-content-whitespace"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 318
    const-string v2, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    move v2, v0

    .line 320
    goto/16 :goto_0

    .line 323
    .end local v0    # "value":Z
    .restart local p2    # "state":Ljava/lang/Object;
    :cond_6
    const-string v3, "error-handler"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 324
    if-eqz p2, :cond_0

    :cond_7
    instance-of v3, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v3, :cond_0

    .end local p2    # "state":Ljava/lang/Object;
    :cond_8
    move v2, v1

    .line 327
    goto/16 :goto_0
.end method

.method public getDomConfig()Lmf/org/w3c/dom/DOMConfiguration;
    .locals 0

    .prologue
    .line 144
    return-object p0
.end method

.method public getFilter()Lmf/org/w3c/dom/ls/LSSerializerFilter;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    return-object v0
.end method

.method public getNewLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 382
    const-string v1, "comments"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    iget-short v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 424
    :goto_0
    return-object v1

    .line 383
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 384
    :cond_1
    const-string v1, "namespaces"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 385
    iget-short v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 386
    :cond_3
    const-string v1, "xml-declaration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 387
    iget-short v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 388
    :cond_5
    const-string v1, "cdata-sections"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 389
    iget-short v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 390
    :cond_7
    const-string v1, "entities"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 391
    iget-short v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_8
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 392
    :cond_9
    const-string v1, "split-cdata-sections"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 393
    iget-short v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_a
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 394
    :cond_b
    const-string v1, "well-formed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 395
    iget-short v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_c
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 396
    :cond_d
    const-string v1, "namespace-declarations"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 397
    iget-short v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_e

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_e
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 398
    :cond_f
    const-string v1, "element-content-whitespace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 399
    const-string v1, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 400
    :cond_10
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 401
    :cond_11
    const-string v1, "discard-default-content"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 402
    iget-short v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_12

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_12
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 403
    :cond_13
    const-string v1, "format-pretty-print"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 404
    iget-short v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_14

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_14
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 405
    :cond_15
    const-string v1, "infoset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 406
    iget-short v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_16

    .line 407
    iget-short v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_16

    .line 408
    iget-short v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    .line 409
    iget-short v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_16

    .line 410
    iget-short v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_16

    .line 411
    iget-short v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_16

    .line 412
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 414
    :cond_16
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 415
    :cond_17
    const-string v1, "normalize-characters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 416
    const-string v1, "canonical-form"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 417
    const-string v1, "validate-if-schema"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 418
    const-string v1, "check-character-normalization"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 419
    const-string v1, "validate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 420
    const-string v1, "validate-if-schema"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 421
    const-string v1, "datatype-normalization"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 422
    :cond_18
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 423
    :cond_19
    const-string v1, "error-handler"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 424
    iget-object v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    goto/16 :goto_0

    .line 426
    :cond_1a
    const-string v1, "resource-resolver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 427
    const-string v1, "schema-location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 428
    const-string v1, "schema-type"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 431
    :cond_1b
    const-string v1, "http://www.w3.org/dom/DOMTR"

    .line 432
    const-string v2, "FEATURE_NOT_SUPPORTED"

    .line 433
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 430
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 438
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1c
    const-string v1, "http://www.w3.org/dom/DOMTR"

    .line 439
    const-string v2, "FEATURE_NOT_FOUND"

    .line 440
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 437
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public getParameterNames()Lmf/org/w3c/dom/DOMStringList;
    .locals 2

    .prologue
    .line 340
    iget-object v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    if-nez v1, :cond_0

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v0, "parameters":Ljava/util/ArrayList;
    const-string v1, "namespaces"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    const-string v1, "split-cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    const-string v1, "discard-default-content"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    const-string v1, "xml-declaration"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    const-string v1, "canonical-form"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    const-string v1, "validate-if-schema"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    const-string v1, "validate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    const-string v1, "check-character-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    const-string v1, "datatype-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    const-string v1, "format-pretty-print"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    const-string v1, "normalize-characters"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    const-string v1, "well-formed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v1, "infoset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    const-string v1, "namespace-declarations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    const-string v1, "element-content-whitespace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    const-string v1, "entities"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v1, "cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    const-string v1, "comments"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v1, "ignore-unknown-character-denormalizations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    const-string v1, "error-handler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v1, Lmf/org/apache/xerces/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    .line 375
    .end local v0    # "parameters":Ljava/util/ArrayList;
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    return-object v1
.end method

.method public setFilter(Lmf/org/w3c/dom/ls/LSSerializerFilter;)V
    .locals 1
    .param p1, "filter"    # Lmf/org/w3c/dom/ls/LSSerializerFilter;

    .prologue
    .line 609
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iput-object p1, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    .line 610
    return-void
.end method

.method public setNewLine(Ljava/lang/String;)V
    .locals 1
    .param p1, "newLine"    # Ljava/lang/String;

    .prologue
    .line 561
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/OutputFormat;->setLineSeparator(Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x9

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 151
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1a

    .line 152
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 153
    .local v1, "state":Z
    const-string v2, "infoset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    if-eqz v1, :cond_0

    .line 155
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v2, v2, -0x5

    int-to-short v2, v2

    iput-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 156
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v2, v2, -0x9

    int-to-short v2, v2

    iput-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 157
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 158
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit16 v2, v2, 0x200

    int-to-short v2, v2

    iput-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 159
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    iput-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 160
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v2, v2, 0x20

    int-to-short v2, v2

    iput-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 282
    .end local v1    # "state":Z
    :cond_0
    :goto_0
    return-void

    .line 163
    .restart local v1    # "state":Z
    :cond_1
    const-string v2, "xml-declaration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    if-eqz v1, :cond_2

    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit16 v2, v2, 0x100

    :goto_1
    int-to-short v2, v2

    .line 164
    iput-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto :goto_0

    .line 165
    :cond_2
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v2, v2, -0x101

    goto :goto_1

    .line 166
    :cond_3
    const-string v2, "namespaces"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 168
    if-eqz v1, :cond_4

    .line 169
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v2, v2, 0x1

    .line 168
    :goto_2
    int-to-short v2, v2

    .line 167
    iput-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 171
    iget-object v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iput-boolean v1, v2, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    goto :goto_0

    .line 170
    :cond_4
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v2, v2, -0x2

    goto :goto_2

    .line 172
    :cond_5
    const-string v2, "split-cdata-sections"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 174
    if-eqz v1, :cond_6

    .line 175
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v2, v2, 0x10

    .line 174
    :goto_3
    int-to-short v2, v2

    .line 173
    iput-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto :goto_0

    .line 176
    :cond_6
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v2, v2, -0x11

    goto :goto_3

    .line 177
    :cond_7
    const-string v2, "discard-default-content"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 179
    if-eqz v1, :cond_8

    .line 180
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v2, v2, 0x40

    .line 179
    :goto_4
    int-to-short v2, v2

    .line 178
    iput-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto :goto_0

    .line 181
    :cond_8
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v2, v2, -0x41

    goto :goto_4

    .line 182
    :cond_9
    const-string v2, "well-formed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 184
    if-eqz v1, :cond_a

    .line 185
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v2, v2, 0x2

    .line 184
    :goto_5
    int-to-short v2, v2

    .line 183
    iput-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto :goto_0

    .line 186
    :cond_a
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v2, v2, -0x3

    goto :goto_5

    .line 187
    :cond_b
    const-string v2, "entities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 189
    if-eqz v1, :cond_c

    .line 190
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v2, v2, 0x4

    .line 189
    :goto_6
    int-to-short v2, v2

    .line 188
    iput-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_0

    .line 191
    :cond_c
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v2, v2, -0x5

    goto :goto_6

    .line 193
    :cond_d
    const-string v2, "cdata-sections"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 195
    if-eqz v1, :cond_e

    .line 196
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v2, v2, 0x8

    .line 195
    :goto_7
    int-to-short v2, v2

    .line 194
    iput-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_0

    .line 197
    :cond_e
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v2, v2, -0x9

    goto :goto_7

    .line 199
    :cond_f
    const-string v2, "comments"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 201
    if-eqz v1, :cond_10

    .line 202
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v2, v2, 0x20

    .line 201
    :goto_8
    int-to-short v2, v2

    .line 200
    iput-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_0

    .line 203
    :cond_10
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v2, v2, -0x21

    goto :goto_8

    .line 204
    :cond_11
    const-string v2, "format-pretty-print"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 206
    if-eqz v1, :cond_12

    .line 207
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit16 v2, v2, 0x800

    .line 206
    :goto_9
    int-to-short v2, v2

    .line 205
    iput-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_0

    .line 208
    :cond_12
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v2, v2, -0x801

    goto :goto_9

    .line 210
    :cond_13
    const-string v2, "canonical-form"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 211
    const-string v2, "validate-if-schema"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 212
    const-string v2, "validate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 213
    const-string v2, "check-character-normalization"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 214
    const-string v2, "datatype-normalization"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 215
    const-string v2, "normalize-characters"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 217
    :cond_14
    if-eqz v1, :cond_0

    .line 220
    const-string v2, "http://www.w3.org/dom/DOMTR"

    .line 221
    const-string v3, "FEATURE_NOT_SUPPORTED"

    .line 222
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    .line 219
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v2, v6, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 226
    .end local v0    # "msg":Ljava/lang/String;
    :cond_15
    const-string v2, "namespace-declarations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 229
    if-eqz v1, :cond_16

    .line 230
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit16 v2, v2, 0x200

    .line 229
    :goto_a
    int-to-short v2, v2

    .line 228
    iput-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    .line 232
    iget-object v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iput-boolean v1, v2, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    goto/16 :goto_0

    .line 231
    :cond_16
    iget-short v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v2, v2, -0x201

    goto :goto_a

    .line 233
    :cond_17
    const-string v2, "element-content-whitespace"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 234
    const-string v2, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 236
    :cond_18
    if-nez v1, :cond_0

    .line 239
    const-string v2, "http://www.w3.org/dom/DOMTR"

    .line 240
    const-string v3, "FEATURE_NOT_SUPPORTED"

    .line 241
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    .line 238
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v2, v6, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 247
    .end local v0    # "msg":Ljava/lang/String;
    :cond_19
    const-string v2, "http://www.w3.org/dom/DOMTR"

    .line 248
    const-string v3, "FEATURE_NOT_FOUND"

    .line 249
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    .line 246
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v2, v6, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 252
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "state":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1a
    const-string v2, "error-handler"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 253
    if-eqz p2, :cond_1b

    instance-of v2, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v2, :cond_1c

    .line 254
    :cond_1b
    check-cast p2, Lmf/org/w3c/dom/DOMErrorHandler;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    goto/16 :goto_0

    .line 258
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1c
    const-string v2, "http://www.w3.org/dom/DOMTR"

    .line 259
    const-string v3, "TYPE_MISMATCH_ERR"

    .line 260
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    .line 257
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 264
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1d
    const-string v2, "resource-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 265
    const-string v2, "schema-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 266
    const-string v2, "schema-type"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 267
    if-eqz p2, :cond_1f

    .line 270
    :cond_1e
    const-string v2, "http://www.w3.org/dom/DOMTR"

    .line 271
    const-string v3, "FEATURE_NOT_SUPPORTED"

    .line 272
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    .line 269
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v2, v6, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 277
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1f
    const-string v2, "http://www.w3.org/dom/DOMTR"

    .line 278
    const-string v3, "FEATURE_NOT_FOUND"

    .line 279
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    .line 276
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public write(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/ls/LSOutput;)Z
    .locals 18
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "destination"    # Lmf/org/w3c/dom/ls/LSOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    .prologue
    .line 663
    if-nez p1, :cond_0

    .line 664
    const/4 v13, 0x0

    .line 776
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    :goto_0
    return v13

    .line 666
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    const/4 v8, 0x0

    .line 667
    .local v8, "ser":Lmf/org/apache/xml/serialize/XMLSerializer;
    invoke-direct/range {p0 .. p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->_getXmlVersion(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    .line 669
    .local v11, "ver":Ljava/lang/String;
    if-eqz v11, :cond_5

    const-string v13, "1.1"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 670
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    if-nez v13, :cond_1

    .line 671
    new-instance v13, Lmf/org/apache/xml/serialize/XML11Serializer;

    invoke-direct {v13}, Lmf/org/apache/xml/serialize/XML11Serializer;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    .line 672
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->initSerializer(Lmf/org/apache/xml/serialize/XMLSerializer;)V

    .line 675
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->copySettings(Lmf/org/apache/xml/serialize/XMLSerializer;Lmf/org/apache/xml/serialize/XMLSerializer;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    .line 682
    :goto_1
    const/4 v3, 0x0

    .line 683
    .local v3, "encoding":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ls/LSOutput;->getEncoding()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 684
    invoke-direct/range {p0 .. p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->_getInputEncoding(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 685
    if-nez v3, :cond_2

    .line 686
    invoke-direct/range {p0 .. p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->_getXmlEncoding(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 687
    if-nez v3, :cond_2

    .line 688
    const-string v3, "UTF-8"

    .line 693
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->prepareForSerialization(Lmf/org/apache/xml/serialize/XMLSerializer;Lmf/org/w3c/dom/Node;)V

    .line 694
    iget-object v13, v8, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v13, v3}, Lmf/org/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 695
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ls/LSOutput;->getByteStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 696
    .local v7, "outputStream":Ljava/io/OutputStream;
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ls/LSOutput;->getCharacterStream()Ljava/io/Writer;

    move-result-object v12

    .line 697
    .local v12, "writer":Ljava/io/Writer;
    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/ls/LSOutput;->getSystemId()Ljava/lang/String;

    move-result-object v10

    .line 698
    .local v10, "uri":Ljava/lang/String;
    if-nez v12, :cond_8

    .line 699
    if-nez v7, :cond_7

    .line 700
    if-nez v10, :cond_6

    .line 702
    const-string v13, "http://apache.org/xml/serializer"

    .line 703
    const-string v14, "no-output-specified"

    const/4 v15, 0x0

    .line 701
    invoke-static {v13, v14, v15}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 704
    .local v6, "msg":Ljava/lang/String;
    iget-object v13, v8, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v13, :cond_3

    .line 705
    new-instance v4, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v4}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    .line 706
    .local v4, "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    const-string v13, "no-output-specified"

    iput-object v13, v4, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 707
    iput-object v6, v4, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 708
    const/4 v13, 0x3

    iput-short v13, v4, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 709
    iget-object v13, v8, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-interface {v13, v4}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 711
    .end local v4    # "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    :cond_3
    new-instance v13, Lmf/org/w3c/dom/ls/LSException;

    const/16 v14, 0x52

    invoke-direct {v13, v14, v6}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .end local v10    # "uri":Ljava/lang/String;
    .end local v12    # "writer":Ljava/io/Writer;
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    :catch_0
    move-exception v9

    .line 737
    .local v9, "ue":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    iget-object v13, v8, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v13, :cond_4

    .line 738
    new-instance v4, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v4}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    .line 739
    .restart local v4    # "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    iput-object v9, v4, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 740
    const-string v13, "unsupported-encoding"

    iput-object v13, v4, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 741
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 742
    const/4 v13, 0x3

    iput-short v13, v4, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 743
    iget-object v13, v8, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-interface {v13, v4}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 745
    .end local v4    # "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    :cond_4
    new-instance v13, Lmf/org/w3c/dom/ls/LSException;

    const/16 v14, 0x52

    .line 747
    const-string v15, "http://apache.org/xml/serializer"

    .line 748
    const-string v16, "unsupported-encoding"

    const/16 v17, 0x0

    .line 746
    invoke-static/range {v15 .. v17}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 745
    invoke-direct {v13, v14, v15}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    .end local v9    # "ue":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v13

    .line 774
    invoke-virtual {v8}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    .line 775
    throw v13

    .line 679
    .end local v3    # "encoding":Ljava/lang/String;
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    goto/16 :goto_1

    .line 714
    .restart local v3    # "encoding":Ljava/lang/String;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v10    # "uri":Ljava/lang/String;
    .restart local v12    # "writer":Ljava/io/Writer;
    :cond_6
    :try_start_2
    invoke-static {v10}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v13

    invoke-virtual {v8, v13}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    .line 727
    :goto_2
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/16 v14, 0x9

    if-ne v13, v14, :cond_9

    .line 728
    check-cast p1, Lmf/org/w3c/dom/Document;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/Document;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 774
    :goto_3
    invoke-virtual {v8}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    .line 776
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 719
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_7
    :try_start_3
    invoke-virtual {v8, v7}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 751
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .end local v10    # "uri":Ljava/lang/String;
    .end local v12    # "writer":Ljava/io/Writer;
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    :catch_1
    move-exception v5

    .line 753
    .local v5, "lse":Lmf/org/w3c/dom/ls/LSException;
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 724
    .end local v5    # "lse":Lmf/org/w3c/dom/ls/LSException;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v10    # "uri":Ljava/lang/String;
    .restart local v12    # "writer":Ljava/io/Writer;
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_8
    :try_start_5
    invoke-virtual {v8, v12}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 755
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .end local v10    # "uri":Ljava/lang/String;
    .end local v12    # "writer":Ljava/io/Writer;
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    :catch_2
    move-exception v2

    .line 756
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_6
    sget-object v13, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ne v2, v13, :cond_d

    .line 774
    invoke-virtual {v8}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    .line 758
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 729
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v10    # "uri":Ljava/lang/String;
    .restart local v12    # "writer":Ljava/io/Writer;
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_9
    :try_start_7
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/16 v14, 0xb

    if-ne v13, v14, :cond_b

    .line 730
    check-cast p1, Lmf/org/w3c/dom/DocumentFragment;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/DocumentFragment;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 762
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .end local v10    # "uri":Ljava/lang/String;
    .end local v12    # "writer":Ljava/io/Writer;
    :catch_3
    move-exception v2

    .line 763
    .local v2, "e":Ljava/lang/Exception;
    :try_start_8
    iget-object v13, v8, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v13, :cond_a

    .line 764
    new-instance v4, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v4}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    .line 765
    .restart local v4    # "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    iput-object v2, v4, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 766
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 767
    const/4 v13, 0x2

    iput-short v13, v4, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 768
    iget-object v13, v8, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-interface {v13, v4}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 771
    .end local v4    # "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    :cond_a
    const/16 v13, 0x52

    invoke-static {v13, v2}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object v13

    invoke-virtual {v13}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v13

    check-cast v13, Lmf/org/w3c/dom/ls/LSException;

    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 731
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v10    # "uri":Ljava/lang/String;
    .restart local v12    # "writer":Ljava/io/Writer;
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_b
    :try_start_9
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    .line 732
    check-cast p1, Lmf/org/w3c/dom/Element;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/Element;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 774
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_c
    invoke-virtual {v8}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    .line 734
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 760
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .end local v10    # "uri":Ljava/lang/String;
    .end local v12    # "writer":Ljava/io/Writer;
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    .local v2, "e":Ljava/lang/RuntimeException;
    :cond_d
    const/16 v13, 0x52

    :try_start_a
    invoke-static {v13, v2}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object v13

    invoke-virtual {v13}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v13

    check-cast v13, Lmf/org/w3c/dom/ls/LSException;

    throw v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public writeToString(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 13
    .param p1, "wnode"    # Lmf/org/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 467
    const/4 v6, 0x0

    .line 468
    .local v6, "ser":Lmf/org/apache/xml/serialize/XMLSerializer;
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->_getXmlVersion(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 469
    .local v7, "ver":Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v9, "1.1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 470
    iget-object v9, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    if-nez v9, :cond_0

    .line 471
    new-instance v9, Lmf/org/apache/xml/serialize/XML11Serializer;

    invoke-direct {v9}, Lmf/org/apache/xml/serialize/XML11Serializer;-><init>()V

    iput-object v9, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    .line 472
    iget-object v9, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    invoke-direct {p0, v9}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->initSerializer(Lmf/org/apache/xml/serialize/XMLSerializer;)V

    .line 475
    :cond_0
    iget-object v9, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iget-object v10, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    invoke-direct {p0, v9, v10}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->copySettings(Lmf/org/apache/xml/serialize/XMLSerializer;Lmf/org/apache/xml/serialize/XMLSerializer;)V

    .line 476
    iget-object v6, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    .line 482
    :goto_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 484
    .local v0, "destination":Ljava/io/StringWriter;
    :try_start_0
    invoke-direct {p0, v6, p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->prepareForSerialization(Lmf/org/apache/xml/serialize/XMLSerializer;Lmf/org/w3c/dom/Node;)V

    .line 485
    iget-object v9, v6, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v10, "UTF-16"

    invoke-virtual {v9, v10}, Lmf/org/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v6, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    .line 487
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_2

    .line 488
    check-cast p1, Lmf/org/w3c/dom/Document;

    .end local p1    # "wnode":Lmf/org/w3c/dom/Node;
    invoke-virtual {v6, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/Document;)V
    :try_end_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    :goto_1
    invoke-virtual {v6}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    .line 534
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    return-object v8

    .line 479
    .end local v0    # "destination":Ljava/io/StringWriter;
    .restart local p1    # "wnode":Lmf/org/w3c/dom/Node;
    :cond_1
    iget-object v6, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    goto :goto_0

    .line 490
    .restart local v0    # "destination":Ljava/io/StringWriter;
    :cond_2
    :try_start_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/16 v10, 0xb

    if-ne v9, v10, :cond_3

    .line 491
    check-cast p1, Lmf/org/w3c/dom/DocumentFragment;

    .end local p1    # "wnode":Lmf/org/w3c/dom/Node;
    invoke-virtual {v6, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/DocumentFragment;)V
    :try_end_1
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 510
    :catch_0
    move-exception v4

    .line 512
    .local v4, "lse":Lmf/org/w3c/dom/ls/LSException;
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 531
    .end local v4    # "lse":Lmf/org/w3c/dom/ls/LSException;
    :catchall_0
    move-exception v8

    .line 532
    invoke-virtual {v6}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    .line 533
    throw v8

    .line 493
    .restart local p1    # "wnode":Lmf/org/w3c/dom/Node;
    :cond_3
    :try_start_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v11, :cond_4

    .line 494
    check-cast p1, Lmf/org/w3c/dom/Element;

    .end local p1    # "wnode":Lmf/org/w3c/dom/Node;
    invoke-virtual {v6, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/Element;)V
    :try_end_3
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 514
    :catch_1
    move-exception v1

    .line 515
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_4
    sget-object v9, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v1, v9, :cond_6

    .line 532
    invoke-virtual {v6}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    goto :goto_2

    .line 498
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local p1    # "wnode":Lmf/org/w3c/dom/Node;
    :cond_4
    :try_start_5
    const-string v9, "http://apache.org/xml/serializer"

    .line 499
    const-string v10, "unable-to-serialize-node"

    const/4 v11, 0x0

    .line 497
    invoke-static {v9, v10, v11}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 500
    .local v5, "msg":Ljava/lang/String;
    iget-object v9, v6, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v9, :cond_5

    .line 501
    new-instance v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    .line 502
    .local v2, "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    const-string v9, "unable-to-serialize-node"

    iput-object v9, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 503
    iput-object v5, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 504
    const/4 v9, 0x3

    iput-short v9, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 505
    iget-object v9, v6, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-interface {v9, v2}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 507
    .end local v2    # "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    :cond_5
    new-instance v9, Lmf/org/w3c/dom/ls/LSException;

    const/16 v10, 0x52

    invoke-direct {v9, v10, v5}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v9
    :try_end_5
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 521
    .end local v5    # "msg":Ljava/lang/String;
    .end local p1    # "wnode":Lmf/org/w3c/dom/Node;
    :catch_2
    move-exception v3

    .line 526
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_6
    const-string v8, "http://www.w3.org/dom/DOMTR"

    .line 527
    const-string v9, "STRING_TOO_LONG"

    .line 528
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 525
    invoke-static {v8, v9, v10}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 529
    .restart local v5    # "msg":Ljava/lang/String;
    new-instance v8, Lmf/org/w3c/dom/DOMException;

    const/4 v9, 0x2

    invoke-direct {v8, v9, v5}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    .line 519
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v5    # "msg":Ljava/lang/String;
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    :cond_6
    const/16 v8, 0x52

    invoke-static {v8, v1}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object v8

    invoke-virtual {v8}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    check-cast v8, Lmf/org/w3c/dom/ls/LSException;

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public writeToURI(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Z
    .locals 10
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "URI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 806
    if-nez p1, :cond_0

    .line 872
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    :goto_0
    return v6

    .line 810
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    const/4 v4, 0x0

    .line 811
    .local v4, "ser":Lmf/org/apache/xml/serialize/XMLSerializer;
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->_getXmlVersion(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 813
    .local v5, "ver":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v8, "1.1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 814
    iget-object v8, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    if-nez v8, :cond_1

    .line 815
    new-instance v8, Lmf/org/apache/xml/serialize/XML11Serializer;

    invoke-direct {v8}, Lmf/org/apache/xml/serialize/XML11Serializer;-><init>()V

    iput-object v8, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    .line 816
    iget-object v8, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    invoke-direct {p0, v8}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->initSerializer(Lmf/org/apache/xml/serialize/XMLSerializer;)V

    .line 819
    :cond_1
    iget-object v8, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iget-object v9, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    invoke-direct {p0, v8, v9}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->copySettings(Lmf/org/apache/xml/serialize/XMLSerializer;Lmf/org/apache/xml/serialize/XMLSerializer;)V

    .line 820
    iget-object v4, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    .line 826
    :goto_1
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->_getInputEncoding(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 827
    .local v1, "encoding":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 828
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->_getXmlEncoding(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 829
    if-nez v1, :cond_2

    .line 830
    const-string v1, "UTF-8"

    .line 835
    :cond_2
    :try_start_0
    invoke-direct {p0, v4, p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->prepareForSerialization(Lmf/org/apache/xml/serialize/XMLSerializer;Lmf/org/w3c/dom/Node;)V

    .line 836
    iget-object v8, v4, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v8, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 837
    invoke-static {p2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v4, v8}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    .line 839
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_4

    .line 840
    check-cast p1, Lmf/org/w3c/dom/Document;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    invoke-virtual {v4, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/Document;)V
    :try_end_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    :goto_2
    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    move v6, v7

    .line 872
    goto :goto_0

    .line 823
    .end local v1    # "encoding":Ljava/lang/String;
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_3
    iget-object v4, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    goto :goto_1

    .line 841
    .restart local v1    # "encoding":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/16 v9, 0xb

    if-ne v8, v9, :cond_5

    .line 842
    check-cast p1, Lmf/org/w3c/dom/DocumentFragment;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    invoke-virtual {v4, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/DocumentFragment;)V
    :try_end_1
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 848
    :catch_0
    move-exception v3

    .line 850
    .local v3, "lse":Lmf/org/w3c/dom/ls/LSException;
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 869
    .end local v3    # "lse":Lmf/org/w3c/dom/ls/LSException;
    :catchall_0
    move-exception v6

    .line 870
    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    .line 871
    throw v6

    .line 843
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_5
    :try_start_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v8, v7, :cond_6

    .line 844
    check-cast p1, Lmf/org/w3c/dom/Element;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    invoke-virtual {v4, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/Element;)V
    :try_end_3
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 852
    :catch_1
    move-exception v0

    .line 853
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_4
    sget-object v7, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v0, v7, :cond_7

    .line 870
    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_6
    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    goto/16 :goto_0

    .line 857
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :cond_7
    const/16 v6, 0x52

    :try_start_5
    invoke-static {v6, v0}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object v6

    invoke-virtual {v6}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Lmf/org/w3c/dom/ls/LSException;

    throw v6

    .line 859
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 860
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, v4, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v6, :cond_8

    .line 861
    new-instance v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    .line 862
    .local v2, "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    iput-object v0, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    .line 863
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 864
    const/4 v6, 0x2

    iput-short v6, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 865
    iget-object v6, v4, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-interface {v6, v2}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 867
    .end local v2    # "error":Lmf/org/apache/xerces/dom/DOMErrorImpl;
    :cond_8
    const/16 v6, 0x52

    invoke-static {v6, v0}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object v6

    invoke-virtual {v6}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Lmf/org/w3c/dom/ls/LSException;

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
