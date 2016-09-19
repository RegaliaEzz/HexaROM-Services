.class public Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;
.super Lmf/javax/xml/parsers/DocumentBuilder;
.source "DocumentBuilderImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/JAXPConstants;


# static fields
.field private static final CREATE_CDATA_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/create-cdata-nodes"

.field private static final CREATE_ENTITY_REF_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/dom/create-entity-ref-nodes"

.field private static final INCLUDE_COMMENTS_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/include-comments"

.field private static final INCLUDE_IGNORABLE_WHITESPACE:Ljava/lang/String; = "http://apache.org/xml/features/dom/include-ignorable-whitespace"

.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"

.field private static final XMLSCHEMA_VALIDATION_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field private final domParser:Lmf/org/apache/xerces/parsers/DOMParser;

.field private final fInitEntityResolver:Lorg/xml/sax/EntityResolver;

.field private final fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private final fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field private final fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

.field private final fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

.field private final fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

.field private final grammar:Lmf/javax/xml/validation/Schema;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "dbf"    # Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;
    .param p2, "dbfAttrs"    # Ljava/util/Hashtable;
    .param p3, "features"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V

    .line 113
    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V
    .locals 8
    .param p1, "dbf"    # Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;
    .param p2, "dbfAttrs"    # Ljava/util/Hashtable;
    .param p3, "features"    # Ljava/util/Hashtable;
    .param p4, "secureProcessing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 115
    invoke-direct {p0}, Lmf/javax/xml/parsers/DocumentBuilder;-><init>()V

    .line 118
    new-instance v2, Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-direct {v2}, Lmf/org/apache/xerces/parsers/DOMParser;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    .line 123
    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isValidating()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    new-instance v2, Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;

    invoke-direct {v2}, Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 125
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 131
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string v5, "http://xml.org/sax/features/validation"

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isValidating()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    .line 134
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string v5, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isNamespaceAware()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    .line 137
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string v6, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    .line 138
    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isIgnoringElementContentWhitespace()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 137
    :goto_1
    invoke-virtual {v5, v6, v2}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    .line 139
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string v6, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    .line 140
    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isExpandEntityReferences()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 139
    :goto_2
    invoke-virtual {v5, v6, v2}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    .line 141
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string v6, "http://apache.org/xml/features/include-comments"

    .line 142
    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isIgnoringComments()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    .line 141
    :goto_3
    invoke-virtual {v5, v6, v2}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    .line 143
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string v5, "http://apache.org/xml/features/create-cdata-nodes"

    .line 144
    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isCoalescing()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 143
    :goto_4
    invoke-virtual {v2, v5, v3}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    .line 149
    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isXIncludeAware()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string v3, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    .line 154
    :cond_0
    if-eqz p4, :cond_1

    .line 155
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string v3, "http://apache.org/xml/properties/security-manager"

    new-instance v4, Lmf/org/apache/xerces/util/SecurityManager;

    invoke-direct {v4}, Lmf/org/apache/xerces/util/SecurityManager;-><init>()V

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->getSchema()Lmf/javax/xml/validation/Schema;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Lmf/javax/xml/validation/Schema;

    .line 159
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Lmf/javax/xml/validation/Schema;

    if-eqz v2, :cond_8

    .line 160
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v2}, Lmf/org/apache/xerces/parsers/DOMParser;->getXMLParserConfiguration()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-result-object v0

    .line 161
    .local v0, "config":Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    const/4 v1, 0x0

    .line 163
    .local v1, "validatorComponent":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Lmf/javax/xml/validation/Schema;

    instance-of v2, v2, Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    if-eqz v2, :cond_7

    .line 164
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    .end local v1    # "validatorComponent":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    .line 165
    .restart local v1    # "validatorComponent":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    new-instance v2, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 166
    new-instance v2, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;-><init>(Lmf/org/apache/xerces/impl/validation/ValidationManager;)V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    .line 167
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 168
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 169
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/parsers/DOMParser;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 170
    new-instance v3, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;

    .line 171
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Lmf/javax/xml/validation/Schema;

    check-cast v2, Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v3, v0, v2, v4}, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;-><init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;Lmf/org/apache/xerces/impl/validation/ValidationManager;)V

    .line 170
    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .line 180
    :goto_5
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 181
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    move-object v2, v1

    .line 182
    check-cast v2, Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v1

    .line 183
    check-cast v2, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 184
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    move-object v2, v1

    check-cast v2, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/parsers/DOMParser;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 185
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 195
    .end local v0    # "config":Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .end local v1    # "validatorComponent":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :goto_6
    invoke-direct {p0, p3}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->setFeatures(Ljava/util/Hashtable;)V

    .line 198
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->setDocumentBuilderFactoryAttributes(Ljava/util/Hashtable;)V

    .line 201
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v2}, Lmf/org/apache/xerces/parsers/DOMParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 202
    return-void

    .line 128
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v2}, Lmf/org/apache/xerces/parsers/DOMParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 138
    goto/16 :goto_1

    :cond_4
    move v2, v4

    .line 140
    goto/16 :goto_2

    :cond_5
    move v2, v4

    .line 142
    goto/16 :goto_3

    :cond_6
    move v3, v4

    .line 144
    goto/16 :goto_4

    .line 175
    .restart local v0    # "config":Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .restart local v1    # "validatorComponent":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :cond_7
    new-instance v1, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    .end local v1    # "validatorComponent":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Lmf/javax/xml/validation/Schema;

    invoke-virtual {v2}, Lmf/javax/xml/validation/Schema;->newValidatorHandler()Lmf/javax/xml/validation/ValidatorHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;-><init>(Lmf/javax/xml/validation/ValidatorHandler;)V

    .line 176
    .restart local v1    # "validatorComponent":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    iput-object v7, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 177
    iput-object v7, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    .line 178
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    goto :goto_5

    .line 188
    .end local v0    # "config":Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .end local v1    # "validatorComponent":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :cond_8
    iput-object v7, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 189
    iput-object v7, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    .line 190
    iput-object v7, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .line 191
    iput-object v7, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

    goto :goto_6
.end method

.method private resetSchemaValidator()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 368
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private setDocumentBuilderFactoryAttributes(Ljava/util/Hashtable;)V
    .locals 12
    .param p1, "dbfAttrs"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;,
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 227
    if-nez p1, :cond_1

    .line 271
    :cond_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 233
    .local v0, "entries":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 234
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 235
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 237
    .local v3, "val":Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    .line 239
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "val":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v2, v6}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    .line 242
    .restart local v3    # "val":Ljava/lang/Object;
    :cond_3
    const-string v5, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 245
    const-string v5, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 246
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->isValidating()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string v6, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v5, v6, v11}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    .line 250
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string v6, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const-string v7, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v5, v6, v7}, Lmf/org/apache/xerces/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 253
    :cond_4
    const-string v5, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 254
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->isValidating()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 255
    const-string v5, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 256
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_5

    const-string v5, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 257
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v5, v2, v3}, Lmf/org/apache/xerces/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 259
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 260
    const-string v6, "http://www.w3.org/dom/DOMTR"

    .line 261
    const-string v7, "jaxp-order-not-supported"

    .line 262
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v10, v8, v9

    const-string v9, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v9, v8, v11

    .line 260
    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 259
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 267
    .end local v4    # "value":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v5, v2, v3}, Lmf/org/apache/xerces/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private setFeatures(Ljava/util/Hashtable;)V
    .locals 5
    .param p1, "features"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;,
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 208
    .local v0, "entries":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 215
    .end local v0    # "entries":Ljava/util/Iterator;
    :cond_0
    return-void

    .line 209
    .restart local v0    # "entries":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 210
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 211
    .local v2, "feature":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 212
    .local v3, "value":Z
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v4, v2, v3}, Lmf/org/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    return-object v0
.end method

.method getDOMParser()Lmf/org/apache/xerces/parsers/DOMParser;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    return-object v0
.end method

.method public getSchema()Lmf/javax/xml/validation/Schema;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Lmf/javax/xml/validation/Schema;

    return-object v0
.end method

.method public isNamespaceAware()Z
    .locals 3

    .prologue
    .line 309
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string v2, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "x":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isValidating()Z
    .locals 3

    .prologue
    .line 318
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string v2, "http://xml.org/sax/features/validation"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "x":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isXIncludeAware()Z
    .locals 3

    .prologue
    .line 331
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    const-string v2, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 334
    :goto_0
    return v1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "exc":Lorg/xml/sax/SAXException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    .prologue
    .line 279
    new-instance v0, Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DocumentImpl;-><init>()V

    return-object v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)Lmf/org/w3c/dom/Document;
    .locals 5
    .param p1, "is"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    if-nez p1, :cond_0

    .line 289
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 290
    const-string v2, "http://www.w3.org/dom/DOMTR"

    .line 291
    const-string v3, "jaxp-null-input-source"

    const/4 v4, 0x0

    .line 290
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    .line 296
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;->reset()V

    .line 298
    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->resetSchemaValidator()V

    .line 300
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/parsers/DOMParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 301
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v1}, Lmf/org/apache/xerces/parsers/DOMParser;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    .line 302
    .local v0, "doc":Lmf/org/w3c/dom/Document;
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v1}, Lmf/org/apache/xerces/parsers/DOMParser;->dropDocumentReferences()V

    .line 304
    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/parsers/DOMParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eq v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/parsers/DOMParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/parsers/DOMParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    if-eq v0, v1, :cond_1

    .line 357
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/parsers/DOMParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 359
    :cond_1
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 1
    .param p1, "er"    # Lorg/xml/sax/EntityResolver;

    .prologue
    .line 339
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/parsers/DOMParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 340
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1
    .param p1, "eh"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 343
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lmf/org/apache/xerces/parsers/DOMParser;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/parsers/DOMParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 344
    return-void
.end method
