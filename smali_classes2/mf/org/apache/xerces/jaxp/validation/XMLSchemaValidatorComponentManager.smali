.class final Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;
.super Lmf/org/apache/xerces/util/ParserConfigurationSettings;
.source "XMLSchemaValidatorComponentManager.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponentManager;


# static fields
.field private static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field private static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field private static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field private static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final IDENTITY_CONSTRAINT_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/identity-constraint-checking"

.field private static final ID_IDREF_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/id-idref-checking"

.field private static final IGNORE_XSI_TYPE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

.field private static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field private static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field private static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field private static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field private static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field private static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final UNPARSED_ENTITY_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/unparsed-entity-checking"

.field private static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field private static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field private static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private final fComponents:Ljava/util/HashMap;

.field private fConfigUpdated:Z

.field private final fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field private fErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private final fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private final fInitFeatures:Ljava/util/HashMap;

.field private final fInitProperties:Ljava/util/HashMap;

.field private final fInitSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

.field private fLocale:Ljava/util/Locale;

.field private final fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field private fResourceResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

.field private final fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

.field private fUseGrammarPoolOnly:Z

.field private final fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 7
    .param p1, "grammarContainer"    # Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 214
    invoke-direct {p0}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>()V

    .line 157
    iput-boolean v6, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fConfigUpdated:Z

    .line 166
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    .line 192
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitFeatures:Ljava/util/HashMap;

    .line 195
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitProperties:Ljava/util/HashMap;

    .line 205
    iput-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 208
    iput-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fResourceResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    .line 211
    iput-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fLocale:Ljava/util/Locale;

    .line 217
    new-instance v2, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    .line 218
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/properties/internal/entity-manager"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 221
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v2, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    .line 224
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/properties/internal/namespace-context"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    .line 227
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/properties/internal/validator/schema"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v2, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 230
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/properties/internal/validation-manager"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/properties/internal/symbol-table"

    new-instance v4, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v4}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1}, Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->getGrammarPool()Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-interface {p1}, Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->isFullyComposed()Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fUseGrammarPoolOnly:Z

    .line 243
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/xml-schema-1"

    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 246
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 247
    const-string v3, "http://apache.org/xml/features/disallow-doctype-decl"

    aput-object v3, v0, v2

    .line 248
    const-string v2, "http://apache.org/xml/features/validation/schema/normalized-value"

    aput-object v2, v0, v6

    const/4 v2, 0x2

    .line 249
    const-string v3, "http://apache.org/xml/features/validation/schema/element-default"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    .line 250
    const-string v3, "http://apache.org/xml/features/validation/schema/augment-psvi"

    aput-object v3, v0, v2

    .line 252
    .local v0, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/features/disallow-doctype-decl"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/features/validation/schema/normalized-value"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/features/validation/schema/element-default"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/features/validation/schema/augment-psvi"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0, v2, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    .line 259
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v2, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    .line 260
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v2, p1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    .line 263
    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->getFeature(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 264
    .local v1, "secureProcessing":Ljava/lang/Boolean;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    new-instance v2, Lmf/org/apache/xerces/util/SecurityManager;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/SecurityManager;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    .line 270
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/properties/security-manager"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/features/validation/id-idref-checking"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/features/validation/identity-constraint-checking"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    const-string v3, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-void

    .line 268
    :cond_0
    iput-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    goto :goto_0
.end method

.method private setFeatureDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;[Ljava/lang/String;Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 4
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;
    .param p2, "recognizedFeatures"    # [Ljava/lang/String;
    .param p3, "grammarContainer"    # Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    .prologue
    .line 511
    if-eqz p2, :cond_0

    .line 512
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-lt v1, v3, :cond_1

    .line 531
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 513
    .restart local v1    # "i":I
    :cond_1
    aget-object v0, p2, v1

    .line 514
    .local v0, "featureId":Ljava/lang/String;
    invoke-interface {p3, v0}, Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->getFeature(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 515
    .local v2, "state":Ljava/lang/Boolean;
    if-nez v2, :cond_2

    .line 516
    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 518
    :cond_2
    if-eqz v2, :cond_3

    .line 520
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 521
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fConfigUpdated:Z

    .line 512
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setPropertyDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;[Ljava/lang/String;)V
    .locals 4
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;
    .param p2, "recognizedProperties"    # [Ljava/lang/String;

    .prologue
    .line 535
    if-eqz p2, :cond_0

    .line 536
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-lt v0, v3, :cond_1

    .line 552
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 537
    .restart local v0    # "i":I
    :cond_1
    aget-object v1, p2, v0

    .line 538
    .local v1, "propertyId":Ljava/lang/String;
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 539
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 541
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 542
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fConfigUpdated:Z

    .line 536
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 2
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;
    .param p2, "grammarContainer"    # Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    .prologue
    .line 419
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 423
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->addRecognizedProperties([Ljava/lang/String;)V

    .line 427
    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setFeatureDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;[Ljava/lang/String;Lmf/org/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    .line 428
    invoke-direct {p0, p1, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setPropertyDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;[Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 297
    const-string v1, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fConfigUpdated:Z

    .line 309
    :cond_0
    :goto_0
    return v0

    .line 300
    :cond_1
    const-string v1, "http://xml.org/sax/features/validation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    const-string v1, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fUseGrammarPoolOnly:Z

    goto :goto_0

    .line 306
    :cond_2
    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    const-string v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 309
    :cond_3
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "propertyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 359
    const-string v1, "http://apache.org/xml/properties/locale"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 369
    :cond_0
    :goto_0
    return-object v0

    .line 362
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 363
    .local v0, "component":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 366
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    const/4 v0, 0x0

    goto :goto_0

    .line 369
    :cond_2
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method getResourceResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fResourceResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    return-object v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->reset()V

    .line 434
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    .line 435
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 436
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 437
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fConfigUpdated:Z

    .line 440
    return-void
.end method

.method restoreInitialState()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 472
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fConfigUpdated:Z

    .line 475
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string v5, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string v5, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string v5, "http://apache.org/xml/properties/security-manager"

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setLocale(Ljava/util/Locale;)V

    .line 483
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string v5, "http://apache.org/xml/properties/locale"

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 487
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 488
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 494
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 496
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 497
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 498
    .restart local v1    # "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 504
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 506
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_1
    return-void

    .line 489
    .restart local v1    # "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 490
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 491
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 492
    .local v3, "value":Z
    invoke-super {p0, v2, v3}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    .line 499
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Z
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 500
    .restart local v0    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 501
    .restart local v2    # "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 502
    .local v3, "value":Ljava/lang/Object;
    invoke-super {p0, v2, v3}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 3
    .param p1, "errorHandler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 443
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 444
    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    if-eqz p1, :cond_0

    new-instance v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    :goto_0
    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    return-void

    .line 445
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;

    invoke-static {}, Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;->getInstance()Lmf/org/apache/xerces/jaxp/validation/DraconianErrorHandler;

    move-result-object v2

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 321
    const-string v1, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v1, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 324
    :cond_0
    if-nez p2, :cond_2

    const-string v1, "http://xml.org/sax/features/validation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    :cond_1
    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v1, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 327
    :cond_2
    const-string v1, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fUseGrammarPoolOnly:Z

    if-eq p2, v1, :cond_3

    .line 328
    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v1, v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 330
    :cond_3
    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 331
    const-string v2, "http://apache.org/xml/properties/security-manager"

    if-eqz p2, :cond_4

    new-instance v1, Lmf/org/apache/xerces/util/SecurityManager;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/SecurityManager;-><init>()V

    :goto_0
    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    :goto_1
    return-void

    .line 331
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 334
    :cond_5
    iput-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fConfigUpdated:Z

    .line 335
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setFeature(Ljava/lang/String;Z)V

    .line 336
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V

    .line 337
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setFeature(Ljava/lang/String;Z)V

    .line 338
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 339
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    .line 340
    .local v0, "current":Z
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitFeatures:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .end local v0    # "current":Z
    :cond_6
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    goto :goto_1

    .line 340
    .restart local v0    # "current":Z
    :cond_7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 462
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fLocale:Ljava/util/Locale;

    .line 463
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    .line 464
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 381
    const-string v0, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    const-string v0, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 387
    :cond_1
    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fConfigUpdated:Z

    .line 388
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 389
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 392
    const-string v0, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :goto_0
    return-void

    .line 396
    :cond_3
    const-string v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p2

    .line 397
    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setLocale(Ljava/util/Locale;)V

    .line 398
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 401
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 402
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitProperties:Ljava/util/HashMap;

    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_5
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setResourceResolver(Lmf/org/w3c/dom/ls/LSResourceResolver;)V
    .locals 2
    .param p1, "resourceResolver"    # Lmf/org/w3c/dom/ls/LSResourceResolver;

    .prologue
    .line 453
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fResourceResolver:Lmf/org/w3c/dom/ls/LSResourceResolver;

    .line 454
    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    new-instance v1, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-direct {v1, p1}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 455
    return-void
.end method
