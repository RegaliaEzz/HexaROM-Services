.class public Lmf/org/apache/xerces/jaxp/SAXParserImpl;
.super Lmf/javax/xml/parsers/SAXParser;
.source "SAXParserImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/JAXPConstants;
.implements Lmf/org/apache/xerces/xs/PSVIProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;
    }
.end annotation


# static fields
.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final NAMESPACE_PREFIXES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"

.field private static final XMLSCHEMA_VALIDATION_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field private final fInitEntityResolver:Lorg/xml/sax/EntityResolver;

.field private final fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private final fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field private final fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

.field private final fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

.field private final fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

.field private final grammar:Lmf/javax/xml/validation/Schema;

.field private schemaLanguage:Ljava/lang/String;

.field private final xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "spf"    # Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;
    .param p2, "features"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;-><init>(Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;Z)V

    .line 114
    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;Z)V
    .locals 7
    .param p1, "spf"    # Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;
    .param p2, "features"    # Ljava/util/Hashtable;
    .param p3, "secureProcessing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 120
    invoke-direct {p0}, Lmf/javax/xml/parsers/SAXParser;-><init>()V

    .line 93
    iput-object v6, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->schemaLanguage:Ljava/lang/String;

    .line 124
    new-instance v2, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-direct {v2, p0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;-><init>(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    .line 129
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v4, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isNamespaceAware()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    .line 134
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v5, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isNamespaceAware()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4, v5, v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    .line 139
    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isXIncludeAware()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v4, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v2, v4, v3}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    .line 144
    :cond_0
    if-eqz p3, :cond_1

    .line 145
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v3, "http://apache.org/xml/properties/security-manager"

    new-instance v4, Lmf/org/apache/xerces/util/SecurityManager;

    invoke-direct {v4}, Lmf/org/apache/xerces/util/SecurityManager;-><init>()V

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setProperty0(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    :cond_1
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->setFeatures(Ljava/util/Hashtable;)V

    .line 154
    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isValidating()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    new-instance v2, Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;

    invoke-direct {v2}, Lmf/org/apache/xerces/jaxp/DefaultValidationErrorHandler;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 156
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 161
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v3, "http://xml.org/sax/features/validation"

    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isValidating()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    .line 164
    invoke-virtual {p1}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->getSchema()Lmf/javax/xml/validation/Schema;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;

    .line 165
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;

    if-eqz v2, :cond_5

    .line 166
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getXMLParserConfiguration()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-result-object v0

    .line 167
    .local v0, "config":Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    const/4 v1, 0x0

    .line 169
    .local v1, "validatorComponent":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;

    instance-of v2, v2, Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    if-eqz v2, :cond_4

    .line 170
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    .end local v1    # "validatorComponent":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    .line 171
    .restart local v1    # "validatorComponent":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    new-instance v2, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 172
    new-instance v2, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;-><init>(Lmf/org/apache/xerces/impl/validation/ValidationManager;)V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    .line 173
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 174
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    .line 175
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    .line 176
    new-instance v3, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;

    .line 177
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;

    check-cast v2, Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v3, v0, v2, v4}, Lmf/org/apache/xerces/jaxp/SchemaValidatorConfiguration;-><init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;Lmf/org/apache/xerces/impl/validation/ValidationManager;)V

    .line 176
    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .line 186
    :goto_2
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 187
    invoke-interface {v1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    move-object v2, v1

    .line 188
    check-cast v2, Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v1

    .line 189
    check-cast v2, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 190
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v2, v1

    check-cast v2, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    .line 191
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 201
    .end local v0    # "config":Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .end local v1    # "validatorComponent":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :goto_3
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 202
    return-void

    :cond_2
    move v2, v3

    .line 134
    goto/16 :goto_0

    .line 159
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    goto/16 :goto_1

    .line 181
    .restart local v0    # "config":Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .restart local v1    # "validatorComponent":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :cond_4
    new-instance v1, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    .end local v1    # "validatorComponent":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;

    invoke-virtual {v2}, Lmf/javax/xml/validation/Schema;->newValidatorHandler()Lmf/javax/xml/validation/ValidatorHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;-><init>(Lmf/javax/xml/validation/ValidatorHandler;)V

    .line 182
    .restart local v1    # "validatorComponent":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    iput-object v6, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 183
    iput-object v6, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    .line 184
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    goto :goto_2

    .line 194
    .end local v0    # "config":Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .end local v1    # "validatorComponent":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    :cond_5
    iput-object v6, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 195
    iput-object v6, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    .line 196
    iput-object v6, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .line 197
    iput-object v6, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

    goto :goto_3
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponent;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lmf/org/apache/xerces/xni/parser/XMLComponent;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/javax/xml/validation/Schema;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;

    return-object v0
.end method

.method static synthetic access$2(Lmf/org/apache/xerces/jaxp/SAXParserImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->schemaLanguage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->schemaLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/impl/validation/ValidationManager;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    return-object v0
.end method

.method static synthetic access$5(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lmf/org/apache/xerces/jaxp/UnparsedEntityHandler;

    return-object v0
.end method

.method static synthetic access$6(Lmf/org/apache/xerces/jaxp/SAXParserImpl;)Lmf/org/apache/xerces/xni/parser/XMLComponentManager;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    return-object v0
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
    .line 213
    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 215
    .local v0, "entries":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 222
    .end local v0    # "entries":Ljava/util/Iterator;
    :cond_0
    return-void

    .line 216
    .restart local v0    # "entries":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 217
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 218
    .local v2, "feature":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 219
    .local v3, "value":Z
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v4, v2, v3}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xs/PSVIProvider;->getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;

    move-result-object v0

    return-object v0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localname"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xs/PSVIProvider;->getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;

    move-result-object v0

    return-object v0
.end method

.method public getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/PSVIProvider;->getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;

    move-result-object v0

    return-object v0
.end method

.method public getParser()Lorg/xml/sax/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSchema()Lmf/javax/xml/validation/Schema;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->grammar:Lmf/javax/xml/validation/Schema;

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    return-object v0
.end method

.method public isNamespaceAware()Z
    .locals 3

    .prologue
    .line 240
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v2, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
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
    .line 249
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v2, "http://xml.org/sax/features/validation"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
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
    .line 262
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v2, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 265
    :goto_0
    return v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "exc":Lorg/xml/sax/SAXException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V
    .locals 2
    .param p1, "is"    # Lorg/xml/sax/InputSource;
    .param p2, "hb"    # Lorg/xml/sax/HandlerBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 307
    :cond_0
    if-eqz p2, :cond_1

    .line 308
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    .line 309
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 310
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 311
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 312
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 314
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 315
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 2
    .param p1, "is"    # Lorg/xml/sax/InputSource;
    .param p2, "dh"    # Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 292
    :cond_0
    if-eqz p2, :cond_1

    .line 293
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 294
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 295
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 296
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 297
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    .line 299
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->parse(Lorg/xml/sax/InputSource;)V

    .line 300
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 324
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->restoreInitState()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 333
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 334
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eq v0, v1, :cond_0

    .line 335
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    if-eq v0, v1, :cond_1

    .line 338
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 340
    :cond_1
    return-void

    .line 326
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    return-void
.end method
