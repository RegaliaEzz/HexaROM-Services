.class final Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;
.super Ljava/lang/Object;
.source "DOMValidatorHelper.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/ValidatorHelper;
.implements Lmf/org/apache/xerces/impl/validation/EntityState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;
    }
.end annotation


# static fields
.field private static final CHUNK_MASK:I = 0x3ff

.field private static final CHUNK_SIZE:I = 0x400

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field final fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

.field private final fCharBuffer:[C

.field private final fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fCurrentElement:Lmf/org/w3c/dom/Node;

.field private final fDOMNamespaceContext:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

.field private final fDOMResultAugmentor:Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;

.field private final fDOMResultBuilder:Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;

.field private fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

.field final fElementQName:Lmf/org/apache/xerces/xni/QName;

.field private fEntities:Lmf/org/w3c/dom/NamedNodeMap;

.field private final fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private final fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

.field private fRoot:Lmf/org/w3c/dom/Node;

.field private final fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

.field private final fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field final fTempString:Lmf/org/apache/xerces/xni/XMLString;

.field private final fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field private final fXMLLocator:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 6
    .param p1, "componentManager"    # Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;-><init>(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMNamespaceContext:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

    .line 126
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    .line 132
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;-><init>(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultAugmentor:Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;

    .line 135
    new-instance v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;

    invoke-direct {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultBuilder:Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;

    .line 138
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lmf/org/w3c/dom/NamedNodeMap;

    .line 141
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    .line 150
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    .line 151
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    .line 152
    new-instance v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    .line 153
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    .line 156
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    .line 157
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 158
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    .line 159
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    .line 160
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 161
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 162
    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fRoot:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method static synthetic access$2(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V

    return-void
.end method

.method static synthetic access$3(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/SymbolTable;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-object v0
.end method

.method private beginNode(Lmf/org/w3c/dom/Node;)V
    .locals 4
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 270
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 335
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 272
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :pswitch_1
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lmf/org/w3c/dom/Node;

    .line 274
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->pushContext()V

    .line 276
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V

    .line 277
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->processAttributes(Lmf/org/w3c/dom/NamedNodeMap;)V

    .line 278
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    .line 281
    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->setIgnoringCharacters(Z)V

    .line 283
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->setIgnoringCharacters(Z)V

    .line 285
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    check-cast p1, Lmf/org/w3c/dom/Text;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    invoke-interface {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->characters(Lmf/org/w3c/dom/Text;)V

    goto :goto_0

    .line 288
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :pswitch_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->setIgnoringCharacters(Z)V

    .line 294
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 295
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 297
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->setIgnoringCharacters(Z)V

    .line 298
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    check-cast p1, Lmf/org/w3c/dom/CDATASection;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    invoke-interface {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->cdata(Lmf/org/w3c/dom/CDATASection;)V

    goto :goto_0

    .line 301
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 302
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    .line 311
    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    check-cast p1, Lmf/org/w3c/dom/ProcessingInstruction;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    invoke-interface {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->processingInstruction(Lmf/org/w3c/dom/ProcessingInstruction;)V

    goto/16 :goto_0

    .line 320
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :pswitch_5
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    check-cast p1, Lmf/org/w3c/dom/Comment;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    invoke-interface {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->comment(Lmf/org/w3c/dom/Comment;)V

    goto/16 :goto_0

    .line 328
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :pswitch_6
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    check-cast p1, Lmf/org/w3c/dom/DocumentType;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    invoke-interface {v0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->doctypeDecl(Lmf/org/w3c/dom/DocumentType;)V

    goto/16 :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V
    .locals 5
    .param p1, "toFill"    # Lmf/org/apache/xerces/xni/QName;
    .param p2, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 402
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "prefix":Ljava/lang/String;
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "localName":Ljava/lang/String;
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "rawName":Ljava/lang/String;
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "namespace":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    .line 407
    if-eqz v0, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    .line 408
    if-eqz v3, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    .line 409
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    iput-object v4, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    .line 410
    return-void

    .line 406
    :cond_0
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_0

    .line 407
    :cond_1
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    .line 408
    :cond_2
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    .line 409
    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private finishNode(Lmf/org/w3c/dom/Node;)V
    .locals 3
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 339
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 340
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lmf/org/w3c/dom/Node;

    .line 342
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V

    .line 343
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 345
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    .line 347
    :cond_0
    return-void
.end method

.method private processAttributes(Lmf/org/w3c/dom/NamedNodeMap;)V
    .locals 8
    .param p1, "attrMap"    # Lmf/org/w3c/dom/NamedNodeMap;

    .prologue
    const/4 v5, 0x0

    .line 413
    invoke-interface {p1}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    .line 414
    .local v1, "attrCount":I
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 415
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 438
    return-void

    .line 416
    :cond_0
    invoke-interface {p1, v2}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    .line 417
    .local v0, "attr":Lmf/org/w3c/dom/Attr;
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 419
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    .line 421
    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {p0, v4, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V

    .line 423
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v6

    invoke-virtual {v4, v2, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    .line 428
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v4, v6, :cond_2

    .line 430
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v4, v6, :cond_4

    .line 431
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v4, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v7, v4}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 415
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object v4, v5

    .line 431
    goto :goto_1

    .line 434
    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v6, v7, v4}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_5
    move-object v4, v5

    goto :goto_3
.end method

.method private sendCharactersToValidator(Ljava/lang/String;)V
    .locals 9
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 441
    if-eqz p1, :cond_1

    .line 442
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 443
    .local v2, "length":I
    and-int/lit16 v3, v2, 0x3ff

    .line 444
    .local v3, "remainder":I
    if-lez v3, :cond_0

    .line 445
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    invoke-virtual {p1, v7, v3, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 446
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    invoke-virtual {v4, v5, v7, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 447
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 449
    :cond_0
    move v0, v3

    .local v0, "i":I
    move v1, v0

    .line 450
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_2

    .line 456
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "remainder":I
    :cond_1
    return-void

    .line 451
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    .restart local v3    # "remainder":I
    :cond_2
    add-int/lit16 v0, v1, 0x400

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    invoke-virtual {p1, v1, v0, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 452
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    const/16 v6, 0x400

    invoke-virtual {v4, v5, v7, v6}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 453
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method private setupDOMResultHandler(Lmf/javax/xml/transform/dom/DOMSource;Lmf/javax/xml/transform/dom/DOMResult;)V
    .locals 6
    .param p1, "source"    # Lmf/javax/xml/transform/dom/DOMSource;
    .param p2, "result"    # Lmf/javax/xml/transform/dom/DOMResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 370
    if-nez p2, :cond_0

    .line 371
    iput-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    .line 372
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    .line 399
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p2}, Lmf/javax/xml/transform/dom/DOMResult;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 379
    .local v3, "nodeResult":Lmf/org/w3c/dom/Node;
    invoke-virtual {p1}, Lmf/javax/xml/transform/dom/DOMSource;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    if-ne v4, v3, :cond_1

    .line 380
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultAugmentor:Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;

    iput-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    .line 381
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultAugmentor:Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;

    invoke-virtual {v4, p2}, Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;->setDOMResult(Lmf/javax/xml/transform/dom/DOMResult;)V

    .line 382
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultAugmentor:Lmf/org/apache/xerces/jaxp/validation/DOMResultAugmentor;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {p2}, Lmf/javax/xml/transform/dom/DOMResult;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    if-nez v4, :cond_2

    .line 387
    :try_start_0
    invoke-static {}, Lmf/javax/xml/parsers/DocumentBuilderFactory;->newInstance()Lmf/javax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 388
    .local v2, "factory":Lmf/javax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lmf/javax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 389
    invoke-virtual {v2}, Lmf/javax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Lmf/javax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 390
    .local v0, "builder":Lmf/javax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Lmf/javax/xml/parsers/DocumentBuilder;->newDocument()Lmf/org/w3c/dom/Document;

    move-result-object v4

    invoke-virtual {p2, v4}, Lmf/javax/xml/transform/dom/DOMResult;->setNode(Lmf/org/w3c/dom/Node;)V
    :try_end_0
    .catch Lmf/javax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v0    # "builder":Lmf/javax/xml/parsers/DocumentBuilder;
    .end local v2    # "factory":Lmf/javax/xml/parsers/DocumentBuilderFactory;
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultBuilder:Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;

    iput-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    .line 397
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultBuilder:Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;

    invoke-virtual {v4, p2}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->setDOMResult(Lmf/javax/xml/transform/dom/DOMResult;)V

    .line 398
    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultBuilder:Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    goto :goto_0

    .line 392
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Lmf/javax/xml/parsers/ParserConfigurationException;
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method private setupEntityMap(Lmf/org/w3c/dom/Document;)V
    .locals 2
    .param p1, "doc"    # Lmf/org/w3c/dom/Document;

    .prologue
    .line 355
    if-eqz p1, :cond_0

    .line 356
    invoke-interface {p1}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    .line 357
    .local v0, "docType":Lmf/org/w3c/dom/DocumentType;
    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lmf/org/w3c/dom/NamedNodeMap;

    .line 363
    .end local v0    # "docType":Lmf/org/w3c/dom/DocumentType;
    :goto_0
    return-void

    .line 362
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lmf/org/w3c/dom/NamedNodeMap;

    goto :goto_0
.end method

.method private useIsSameNode(Lmf/org/w3c/dom/Node;)Z
    .locals 5
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    .line 463
    instance-of v2, p1, Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v2, :cond_1

    .line 468
    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_0
    :goto_0
    return v1

    .line 466
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 467
    check-cast p1, Lmf/org/w3c/dom/Document;

    .end local p1    # "node":Lmf/org/w3c/dom/Node;
    move-object v0, p1

    .line 468
    .local v0, "doc":Lmf/org/w3c/dom/Document;
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/Document;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v2

    const-string v3, "Core"

    const-string v4, "3.0"

    invoke-interface {v2, v3, v4}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 467
    .end local v0    # "doc":Lmf/org/w3c/dom/Document;
    .restart local p1    # "node":Lmf/org/w3c/dom/Node;
    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    goto :goto_1
.end method

.method private validate(Lmf/org/w3c/dom/Node;)V
    .locals 4
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 239
    move-object v1, p1

    .line 240
    .local v1, "top":Lmf/org/w3c/dom/Node;
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->useIsSameNode(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    .line 243
    .local v2, "useIsSameNode":Z
    :goto_0
    if-nez p1, :cond_0

    .line 266
    return-void

    .line 244
    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->beginNode(Lmf/org/w3c/dom/Node;)V

    .line 245
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 246
    .local v0, "next":Lmf/org/w3c/dom/Node;
    :cond_1
    if-eqz v0, :cond_3

    .line 264
    :cond_2
    :goto_1
    move-object p1, v0

    goto :goto_0

    .line 247
    :cond_3
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->finishNode(Lmf/org/w3c/dom/Node;)V

    .line 248
    if-eq v1, p1, :cond_2

    .line 251
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 252
    if-nez v0, :cond_1

    .line 253
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    .line 254
    if-eqz p1, :cond_4

    .line 255
    if-eqz v2, :cond_6

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/Node;->isSameNode(Lmf/org/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 257
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->finishNode(Lmf/org/w3c/dom/Node;)V

    .line 259
    :cond_5
    const/4 v0, 0x0

    .line 260
    goto :goto_1

    .line 255
    :cond_6
    if-ne v1, p1, :cond_1

    goto :goto_2
.end method


# virtual methods
.method getCurrentElement()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lmf/org/w3c/dom/NamedNodeMap;

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lmf/org/w3c/dom/NamedNodeMap;

    invoke-interface {v2, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Entity;

    .line 226
    .local v0, "entity":Lmf/org/w3c/dom/Entity;
    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0}, Lmf/org/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 230
    .end local v0    # "entity":Lmf/org/w3c/dom/Entity;
    :cond_0
    return v1
.end method

.method public validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V
    .locals 12
    .param p1, "source"    # Lmf/javax/xml/transform/Source;
    .param p2, "result"    # Lmf/javax/xml/transform/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 170
    instance-of v6, p2, Lmf/javax/xml/transform/dom/DOMResult;

    if-nez v6, :cond_0

    if-nez p2, :cond_4

    :cond_0
    move-object v2, p1

    .line 171
    check-cast v2, Lmf/javax/xml/transform/dom/DOMSource;

    .local v2, "domSource":Lmf/javax/xml/transform/dom/DOMSource;
    move-object v1, p2

    .line 172
    check-cast v1, Lmf/javax/xml/transform/dom/DOMResult;

    .line 174
    .local v1, "domResult":Lmf/javax/xml/transform/dom/DOMResult;
    invoke-virtual {v2}, Lmf/javax/xml/transform/dom/DOMSource;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 175
    .local v4, "node":Lmf/org/w3c/dom/Node;
    iput-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fRoot:Lmf/org/w3c/dom/Node;

    .line 176
    if-eqz v4, :cond_1

    .line 177
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v6}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->reset()V

    .line 178
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v6, p0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lmf/org/apache/xerces/impl/validation/EntityState;)V

    .line 179
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMNamespaceContext:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

    invoke-virtual {v6}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->reset()V

    .line 180
    invoke-virtual {v2}, Lmf/javax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "systemId":Ljava/lang/String;
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->setLiteralSystemId(Ljava/lang/String;)V

    .line 182
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;->setExpandedSystemId(Ljava/lang/String;)V

    .line 183
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    .line 186
    :try_start_0
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_2

    move-object v0, v4

    check-cast v0, Lmf/org/w3c/dom/Document;

    move-object v6, v0

    :goto_0
    invoke-direct {p0, v6}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->setupEntityMap(Lmf/org/w3c/dom/Document;)V

    .line 187
    invoke-direct {p0, v2, v1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->setupDOMResultHandler(Lmf/javax/xml/transform/dom/DOMSource;Lmf/javax/xml/transform/dom/DOMResult;)V

    .line 188
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    const/4 v8, 0x0

    iget-object v9, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMNamespaceContext:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 189
    invoke-direct {p0, v4}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->validate(Lmf/org/w3c/dom/Node;)V

    .line 190
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iput-object v11, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fRoot:Lmf/org/w3c/dom/Node;

    .line 201
    iput-object v11, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lmf/org/w3c/dom/Node;

    .line 202
    iput-object v11, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lmf/org/w3c/dom/NamedNodeMap;

    .line 203
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v6, :cond_1

    .line 204
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    invoke-interface {v6, v11}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->setDOMResult(Lmf/javax/xml/transform/dom/DOMResult;)V

    .line 208
    .end local v5    # "systemId":Ljava/lang/String;
    :cond_1
    return-void

    .line 186
    .restart local v5    # "systemId":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 192
    :catch_0
    move-exception v3

    .line 193
    .local v3, "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :try_start_2
    invoke-static {v3}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    .end local v3    # "e":Lmf/org/apache/xerces/xni/parser/XMLParseException;
    :catchall_0
    move-exception v6

    .line 200
    iput-object v11, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fRoot:Lmf/org/w3c/dom/Node;

    .line 201
    iput-object v11, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lmf/org/w3c/dom/Node;

    .line 202
    iput-object v11, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lmf/org/w3c/dom/NamedNodeMap;

    .line 203
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v7, :cond_3

    .line 204
    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;

    invoke-interface {v7, v11}, Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;->setDOMResult(Lmf/javax/xml/transform/dom/DOMResult;)V

    .line 206
    :cond_3
    throw v6

    .line 195
    :catch_1
    move-exception v3

    .line 196
    .local v3, "e":Lmf/org/apache/xerces/xni/XNIException;
    :try_start_3
    invoke-static {v3}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    .end local v1    # "domResult":Lmf/javax/xml/transform/dom/DOMResult;
    .end local v2    # "domSource":Lmf/javax/xml/transform/dom/DOMSource;
    .end local v3    # "e":Lmf/org/apache/xerces/xni/XNIException;
    .end local v4    # "node":Lmf/org/w3c/dom/Node;
    .end local v5    # "systemId":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v7}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v7

    .line 211
    const-string v8, "SourceResultMismatch"

    .line 212
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 210
    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
