.class final Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;
.super Lmf/javax/xml/validation/ValidatorHandler;
.source "ValidatorHandlerImpl.java"

# interfaces
.implements Lorg/xml/sax/DTDHandler;
.implements Lmf/org/apache/xerces/impl/validation/EntityState;
.implements Lmf/org/apache/xerces/xs/PSVIProvider;
.implements Lmf/org/apache/xerces/jaxp/validation/ValidatorHelper;
.implements Lmf/org/apache/xerces/xni/XMLDocumentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;,
        Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;
    }
.end annotation


# static fields
.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final LEXICAL_HANDLER:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field private static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field private static final NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final STRINGS_INTERNED:Ljava/lang/String; = "http://apache.org/xml/features/internal/strings-interned"

.field private static final STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field private final fAttrAdapter:Lmf/org/apache/xerces/util/AttributesProxy;

.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field private final fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

.field private final fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fContentHandler:Lorg/xml/sax/ContentHandler;

.field private final fElementQName:Lmf/org/apache/xerces/xni/QName;

.field private final fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private final fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field private fNeedPushNSContext:Z

.field private final fResolutionForwarder:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

.field private final fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

.field private final fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

.field private fStringsInternalized:Z

.field private final fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fTempString:Lmf/org/apache/xerces/xni/XMLString;

.field private final fTypeInfoProvider:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

.field private fUnparsedEntities:Ljava/util/HashMap;

.field private final fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 3
    .param p1, "componentManager"    # Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Lmf/javax/xml/validation/ValidatorHandler;-><init>()V

    .line 163
    new-instance v0, Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SAXLocatorWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    .line 169
    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z

    .line 175
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    .line 176
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 177
    new-instance v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .line 178
    new-instance v0, Lmf/org/apache/xerces/util/AttributesProxy;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/AttributesProxy;-><init>(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttrAdapter:Lmf/org/apache/xerces/util/AttributesProxy;

    .line 179
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    .line 185
    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    .line 861
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-direct {v0, p0, v2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;-><init>(Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    .line 1030
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;-><init>(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fResolutionForwarder:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

    .line 200
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    .line 201
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 202
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/NamespaceContext;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 203
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    .line 204
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 205
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 206
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 5
    .param p1, "grammarContainer"    # Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 192
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;-><init>(Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;-><init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    .line 193
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "http://xml.org/sax/features/namespace-prefixes"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setFeature(Ljava/lang/String;Z)V

    .line 195
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 196
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    .line 197
    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;)Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    return-object v0
.end method

.method private fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "toFill"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localpart"    # Ljava/lang/String;
    .param p4, "raw"    # Ljava/lang/String;

    .prologue
    .line 802
    iget-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z

    if-nez v2, :cond_5

    .line 803
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, p2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 804
    :goto_0
    if-eqz p3, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, p3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 805
    :goto_1
    if-eqz p4, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, p4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 818
    :cond_0
    :goto_2
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 819
    .local v0, "prefix":Ljava/lang/String;
    const/16 v2, 0x3a

    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 820
    .local v1, "prefixIdx":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 821
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const/4 v3, 0x0

    invoke-virtual {p4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    :cond_1
    invoke-virtual {p1, v0, p3, p4, p2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    return-void

    .line 803
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "prefixIdx":I
    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    .line 804
    :cond_3
    sget-object p3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    .line 805
    :cond_4
    sget-object p4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    .line 808
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 809
    const/4 p2, 0x0

    .line 811
    :cond_6
    if-nez p3, :cond_7

    .line 812
    sget-object p3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 814
    :cond_7
    if-nez p4, :cond_0

    .line 815
    sget-object p4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2
.end method

.method private fillXMLAttribute(Lorg/xml/sax/Attributes;I)V
    .locals 5
    .param p1, "att"    # Lorg/xml/sax/Attributes;
    .param p2, "index"    # I

    .prologue
    .line 851
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    if-eqz v0, :cond_0

    .end local v0    # "type":Ljava/lang/String;
    :goto_0
    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    return-void

    .line 853
    .restart local v0    # "type":Ljava/lang/String;
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    goto :goto_0
.end method

.method private fillXMLAttributes(Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "att"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 828
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 829
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 830
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 834
    return-void

    .line 831
    :cond_0
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fillXMLAttribute(Lorg/xml/sax/Attributes;I)V

    .line 832
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    .line 830
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private fillXMLAttributes2(Lorg/xml/sax/ext/Attributes2;)V
    .locals 5
    .param p1, "att"    # Lorg/xml/sax/ext/Attributes2;

    .prologue
    .line 838
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 839
    invoke-interface {p1}, Lorg/xml/sax/ext/Attributes2;->getLength()I

    move-result v1

    .line 840
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 847
    return-void

    .line 841
    :cond_0
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fillXMLAttribute(Lorg/xml/sax/Attributes;I)V

    .line 842
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {p1, v0}, Lorg/xml/sax/ext/Attributes2;->isSpecified(I)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    .line 843
    invoke-interface {p1, v0}, Lorg/xml/sax/ext/Attributes2;->isDeclared(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 844
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v2

    const-string v3, "ATTRIBUTE_DECLARED"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 431
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_0

    .line 434
    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-nez v1, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public characters([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 620
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v1, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 621
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 629
    return-void

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v1

    throw v1

    .line 626
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catch_1
    move-exception v0

    .line 627
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v1

    throw v1
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 381
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "rootElement"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 379
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 416
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 417
    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 477
    return-void
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 531
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->setLocator(Lorg/xml/sax/Locator;)V

    .line 533
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 541
    return-void

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v1

    throw v1

    .line 538
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catch_1
    move-exception v0

    .line 539
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v1

    throw v1
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_0

    .line 482
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :cond_0
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 602
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {p0, v1, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    .line 615
    return-void

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :try_start_1
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catchall_0
    move-exception v1

    .line 613
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    .line 614
    throw v1

    .line 609
    :catch_1
    move-exception v0

    .line 610
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    :try_start_2
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 460
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_0

    .line 462
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->beginEndElement(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 463
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 464
    :goto_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 463
    invoke-interface {v2, v1, v3, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->finishEndElement()V

    .line 473
    :cond_0
    return-void

    .line 463
    :cond_1
    :try_start_1
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Lorg/xml/sax/SAXException;
    :try_start_2
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v1

    .line 470
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->finishEndElement()V

    .line 471
    throw v1
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 427
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 569
    :cond_0
    return-void
.end method

.method public getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 787
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributePSVI(I)Lmf/org/apache/xerces/xs/AttributePSVI;

    move-result-object v0

    return-object v0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localname"    # Ljava/lang/String;

    .prologue
    .line 791
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/AttributePSVI;

    move-result-object v0

    return-object v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    return-object v0
.end method

.method public getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getElementPSVI()Lmf/org/apache/xerces/xs/ElementPSVI;

    move-result-object v0

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 242
    if-nez p1, :cond_0

    .line 243
    new-instance v2, Ljava/lang/NullPointerException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 244
    const-string v4, "FeatureNameNull"

    const/4 v5, 0x0

    .line 243
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    :cond_0
    const-string v2, "http://apache.org/xml/features/internal/strings-interned"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    iget-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z

    .line 250
    :goto_0
    return v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_2

    .line 255
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    .line 256
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 257
    const-string v4, "feature-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 256
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_2
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 261
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 262
    const-string v4, "feature-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 261
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 297
    if-nez p1, :cond_0

    .line 298
    new-instance v2, Ljava/lang/NullPointerException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 299
    const-string v4, "ProperyNameNull"

    const/4 v5, 0x0

    .line 298
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 302
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_1

    .line 307
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    .line 308
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 309
    const-string v4, "property-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 308
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 313
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 314
    const-string v4, "property-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 313
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;

    move-result-object v0

    return-object v0
.end method

.method public getTypeInfoProvider()Lmf/javax/xml/validation/TypeInfoProvider;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .param p1, "text"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p2, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 448
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_0

    .line 450
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_0
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public ignorableWhitespace([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 634
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v1, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 635
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 643
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v1

    throw v1

    .line 640
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catch_1
    move-exception v0

    .line 641
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v1

    throw v1
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 670
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 652
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Lmf/org/apache/xerces/xni/XMLString;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_0

    .line 387
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "receiver"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 213
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    .line 214
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 502
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->setLocator(Lorg/xml/sax/Locator;)V

    .line 503
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 506
    :cond_0
    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0
    .param p1, "source"    # Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    .prologue
    .line 491
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1
    .param p1, "errorHandler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 221
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 222
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 269
    if-nez p1, :cond_0

    .line 270
    new-instance v2, Ljava/lang/NullPointerException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 271
    const-string v4, "FeatureNameNull"

    const/4 v5, 0x0

    .line 270
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 273
    :cond_0
    const-string v2, "http://apache.org/xml/features/internal/strings-interned"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    iput-boolean p2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z

    .line 293
    :goto_0
    return-void

    .line 278
    :cond_1
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_2

    .line 283
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    .line 284
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 285
    const-string v4, "feature-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 284
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 288
    :cond_2
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 289
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 290
    const-string v4, "feature-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 289
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 321
    if-nez p1, :cond_0

    .line 322
    new-instance v2, Ljava/lang/NullPointerException;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 323
    const-string v4, "ProperyNameNull"

    const/4 v5, 0x0

    .line 322
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v2, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "identifier":Ljava/lang/String;
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v2

    if-nez v2, :cond_1

    .line 331
    new-instance v2, Lorg/xml/sax/SAXNotRecognizedException;

    .line 332
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 333
    const-string v4, "property-not-recognized"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 332
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    .line 337
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 338
    const-string v4, "property-not-supported"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    .line 337
    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-direct {v2, v3}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V
    .locals 1
    .param p1, "resourceResolver"    # Lmf/org/w3c/dom/ls/LSResourceResolver;

    .prologue
    .line 229
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    .line 230
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 660
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 663
    :cond_0
    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 475
    return-void
.end method

.method public startDocument()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 509
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->reset()V

    .line 510
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v1, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 511
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v1, p0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lmf/org/apache/xerces/impl/validation/EntityState;)V

    .line 512
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->finishStartElement()V

    .line 513
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    .line 514
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 518
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 520
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lmf/org/apache/xerces/util/SAXLocatorWrapper;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/SAXLocatorWrapper;->getEncoding()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 528
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v1

    throw v1

    .line 525
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catch_1
    move-exception v0

    .line 526
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v1

    throw v1
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .param p1, "locator"    # Lmf/org/apache/xerces/xni/XMLLocator;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "namespaceContext"    # Lmf/org/apache/xerces/xni/NamespaceContext;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_0

    .line 367
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 573
    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 576
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    .line 579
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {p0, v1, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    instance-of v1, p4, Lorg/xml/sax/ext/Attributes2;

    if-eqz v1, :cond_1

    .line 583
    check-cast p4, Lorg/xml/sax/ext/Attributes2;

    .end local p4    # "atts":Lorg/xml/sax/Attributes;
    invoke-direct {p0, p4}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fillXMLAttributes2(Lorg/xml/sax/ext/Attributes2;)V

    .line 590
    :goto_0
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    .line 598
    return-void

    .line 586
    .restart local p4    # "atts":Lorg/xml/sax/Attributes;
    :cond_1
    invoke-direct {p0, p4}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fillXMLAttributes(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 592
    .end local p4    # "atts":Lorg/xml/sax/Attributes;
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v1

    throw v1

    .line 595
    .end local v0    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catch_1
    move-exception v0

    .line 596
    .local v0, "e":Lmf/org/apache/xerces/xni/XNIException;
    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v1

    throw v1
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .param p1, "element"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "attributes"    # Lmf/org/apache/xerces/xni/XMLAttributes;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 397
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_0

    .line 399
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v1, p3, p2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->beginStartElement(Lmf/org/apache/xerces/xni/Augmentations;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 400
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 401
    :goto_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttrAdapter:Lmf/org/apache/xerces/util/AttributesProxy;

    .line 400
    invoke-interface {v2, v1, v3, v4, v5}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->finishStartElement()V

    .line 410
    :cond_0
    return-void

    .line 400
    :cond_1
    :try_start_1
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Lorg/xml/sax/SAXException;
    :try_start_2
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v1

    .line 407
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v2}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->finishStartElement()V

    .line 408
    throw v1
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "identifier"    # Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 421
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 547
    iget-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z

    if-nez v2, :cond_4

    .line 548
    if-eqz p1, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "prefixSymbol":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, p2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, "uriSymbol":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    if-eqz v2, :cond_1

    .line 556
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    .line 557
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    .line 559
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v2, v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 560
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v2, :cond_2

    .line 561
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_2
    return-void

    .line 548
    .end local v0    # "prefixSymbol":Ljava/lang/String;
    .end local v1    # "uriSymbol":Ljava/lang/String;
    :cond_3
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_0

    .line 552
    :cond_4
    if-eqz p1, :cond_6

    move-object v0, p1

    .line 553
    .restart local v0    # "prefixSymbol":Ljava/lang/String;
    :goto_2
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    move-object v1, p2

    .restart local v1    # "uriSymbol":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 552
    .end local v0    # "prefixSymbol":Ljava/lang/String;
    .end local v1    # "uriSymbol":Ljava/lang/String;
    :cond_6
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 424
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 675
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    .line 677
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    return-void
.end method

.method public validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V
    .locals 18
    .param p1, "source"    # Lmf/javax/xml/transform/Source;
    .param p2, "result"    # Lmf/javax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    move-object/from16 v0, p2

    instance-of v12, v0, Lmf/javax/xml/transform/sax/SAXResult;

    if-nez v12, :cond_0

    if-nez p2, :cond_7

    :cond_0
    move-object/from16 v9, p1

    .line 687
    check-cast v9, Lmf/javax/xml/transform/sax/SAXSource;

    .local v9, "saxSource":Lmf/javax/xml/transform/sax/SAXSource;
    move-object/from16 v8, p2

    .line 688
    check-cast v8, Lmf/javax/xml/transform/sax/SAXResult;

    .line 690
    .local v8, "saxResult":Lmf/javax/xml/transform/sax/SAXResult;
    const/4 v6, 0x0

    .line 691
    .local v6, "lh":Lorg/xml/sax/ext/LexicalHandler;
    if-eqz p2, :cond_2

    .line 692
    invoke-virtual {v8}, Lmf/javax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    .line 693
    .local v1, "ch":Lorg/xml/sax/ContentHandler;
    invoke-virtual {v8}, Lmf/javax/xml/transform/sax/SAXResult;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v6

    .line 695
    if-nez v6, :cond_1

    instance-of v12, v1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v12, :cond_1

    move-object v6, v1

    .line 696
    check-cast v6, Lorg/xml/sax/ext/LexicalHandler;

    .line 698
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 701
    .end local v1    # "ch":Lorg/xml/sax/ContentHandler;
    :cond_2
    const/4 v7, 0x0

    .line 703
    .local v7, "reader":Lorg/xml/sax/XMLReader;
    :try_start_0
    invoke-virtual {v9}, Lmf/javax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 704
    if-nez v7, :cond_3

    .line 706
    invoke-static {}, Lmf/javax/xml/parsers/SAXParserFactory;->newInstance()Lmf/javax/xml/parsers/SAXParserFactory;

    move-result-object v11

    .line 707
    .local v11, "spf":Lmf/javax/xml/parsers/SAXParserFactory;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    :try_start_1
    invoke-virtual {v11}, Lmf/javax/xml/parsers/SAXParserFactory;->newSAXParser()Lmf/javax/xml/parsers/SAXParser;

    move-result-object v12

    invoke-virtual {v12}, Lmf/javax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 711
    instance-of v12, v7, Lmf/org/apache/xerces/parsers/SAXParser;

    if-eqz v12, :cond_3

    .line 712
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v13, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 713
    .local v10, "securityManager":Ljava/lang/Object;
    if-eqz v10, :cond_3

    .line 715
    :try_start_2
    const-string v12, "http://apache.org/xml/properties/security-manager"

    invoke-interface {v7, v12, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 731
    .end local v10    # "securityManager":Ljava/lang/Object;
    .end local v11    # "spf":Lmf/javax/xml/parsers/SAXParserFactory;
    :cond_3
    :goto_0
    :try_start_3
    const-string v12, "http://xml.org/sax/features/string-interning"

    invoke-interface {v7, v12}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 739
    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v12}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v3

    .line 740
    .local v3, "errorHandler":Lorg/xml/sax/ErrorHandler;
    if-eqz v3, :cond_6

    .end local v3    # "errorHandler":Lorg/xml/sax/ErrorHandler;
    :goto_2
    invoke-interface {v7, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fResolutionForwarder:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

    invoke-interface {v7, v12}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fResolutionForwarder:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v13}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;

    move-result-object v13

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->setEntityResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    .line 743
    move-object/from16 v0, p0

    invoke-interface {v7, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 744
    move-object/from16 v0, p0

    invoke-interface {v7, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 746
    :try_start_5
    const-string v12, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v7, v12, v6}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 751
    :goto_3
    :try_start_6
    invoke-virtual {v9}, Lmf/javax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v5

    .line 752
    .local v5, "is":Lorg/xml/sax/InputSource;
    invoke-interface {v7, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 756
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 758
    if-eqz v7, :cond_4

    .line 760
    const/4 v12, 0x0

    :try_start_7
    invoke-interface {v7, v12}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 761
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 762
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 763
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fResolutionForwarder:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->setEntityResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    .line 765
    const-string v12, "http://xml.org/sax/properties/lexical-handler"

    const/4 v13, 0x0

    invoke-interface {v7, v12, v13}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 771
    :cond_4
    :goto_4
    return-void

    .line 722
    .end local v5    # "is":Lorg/xml/sax/InputSource;
    .restart local v11    # "spf":Lmf/javax/xml/parsers/SAXParserFactory;
    :catch_0
    move-exception v2

    .line 724
    .local v2, "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v12, Lmf/javax/xml/parsers/FactoryConfigurationError;

    invoke-direct {v12, v2}, Lmf/javax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 754
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v11    # "spf":Lmf/javax/xml/parsers/SAXParserFactory;
    :catchall_0
    move-exception v12

    .line 756
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 758
    if-eqz v7, :cond_5

    .line 760
    const/4 v13, 0x0

    :try_start_9
    invoke-interface {v7, v13}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 761
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 762
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 763
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fResolutionForwarder:Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->setEntityResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    .line 765
    const-string v13, "http://xml.org/sax/properties/lexical-handler"

    const/4 v14, 0x0

    invoke-interface {v7, v13, v14}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 770
    :cond_5
    :goto_5
    throw v12

    .line 733
    :catch_1
    move-exception v4

    .line 736
    .local v4, "exc":Lorg/xml/sax/SAXException;
    const/4 v12, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z

    goto/16 :goto_1

    .line 740
    .end local v4    # "exc":Lorg/xml/sax/SAXException;
    .restart local v3    # "errorHandler":Lorg/xml/sax/ErrorHandler;
    :cond_6
    invoke-static {}, Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;->getInstance()Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v3

    goto/16 :goto_2

    .line 773
    .end local v3    # "errorHandler":Lorg/xml/sax/ErrorHandler;
    .end local v6    # "lh":Lorg/xml/sax/ext/LexicalHandler;
    .end local v7    # "reader":Lorg/xml/sax/XMLReader;
    .end local v8    # "saxResult":Lmf/javax/xml/transform/sax/SAXResult;
    .end local v9    # "saxSource":Lmf/javax/xml/transform/sax/SAXSource;
    :cond_7
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v13}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v13

    .line 774
    const-string v14, "SourceResultMismatch"

    .line 775
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 773
    invoke-static {v13, v14, v15}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 768
    .restart local v5    # "is":Lorg/xml/sax/InputSource;
    .restart local v6    # "lh":Lorg/xml/sax/ext/LexicalHandler;
    .restart local v7    # "reader":Lorg/xml/sax/XMLReader;
    .restart local v8    # "saxResult":Lmf/javax/xml/transform/sax/SAXResult;
    .restart local v9    # "saxSource":Lmf/javax/xml/transform/sax/SAXSource;
    :catch_2
    move-exception v12

    goto :goto_4

    .end local v5    # "is":Lorg/xml/sax/InputSource;
    :catch_3
    move-exception v13

    goto :goto_5

    .line 749
    :catch_4
    move-exception v12

    goto/16 :goto_3

    .line 718
    .restart local v10    # "securityManager":Ljava/lang/Object;
    .restart local v11    # "spf":Lmf/javax/xml/parsers/SAXParserFactory;
    :catch_5
    move-exception v12

    goto/16 :goto_0
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "standalone"    # Ljava/lang/String;
    .param p4, "augs"    # Lmf/org/apache/xerces/xni/Augmentations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 376
    return-void
.end method
