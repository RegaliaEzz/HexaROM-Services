.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;
.super Ljava/lang/Object;
.source "XMLSchemaValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ValueStoreCache"
.end annotation


# instance fields
.field protected final fGlobalIDConstraintMap:Ljava/util/HashMap;

.field protected final fGlobalMapStack:Ljava/util/Stack;

.field protected final fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

.field final fLocalId:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

.field protected final fValueStores:Ljava/util/ArrayList;

.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)V
    .locals 1

    .prologue
    .line 4320
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4276
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    .line 4280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    .line 4291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    .line 4312
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    .line 4313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    .line 4321
    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 4

    .prologue
    .line 4470
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4471
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 4476
    return-void

    .line 4472
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    .line 4473
    .local v2, "valueStore":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocument()V

    .line 4471
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public endElement()V
    .locals 7

    .prologue
    .line 4350
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4374
    :cond_0
    return-void

    .line 4353
    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 4355
    .local v4, "oldMap":Ljava/util/HashMap;
    if-eqz v4, :cond_0

    .line 4359
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4360
    .local v1, "entries":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4361
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4362
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .line 4363
    .local v3, "id":Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    .line 4364
    .local v5, "oldVal":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
    if-eqz v5, :cond_2

    .line 4365
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    .line 4366
    .local v0, "currVal":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
    if-nez v0, :cond_3

    .line 4367
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4369
    :cond_3
    if-eq v0, v5, :cond_2

    .line 4370
    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->append(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)V

    goto :goto_0
.end method

.method public getGlobalValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
    .locals 1
    .param p1, "id"    # Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .prologue
    .line 4444
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    return-object v0
.end method

.method public getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
    .locals 2
    .param p1, "id"    # Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .param p2, "initialDepth"    # I

    .prologue
    .line 4437
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iput p2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    .line 4438
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iput-object p1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .line 4439
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    return-object v0
.end method

.method public initValueStoresFor(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;)V
    .locals 12
    .param p1, "eDecl"    # Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .param p2, "activator"    # Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;

    .prologue
    .line 4382
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDConstraints:[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .line 4383
    .local v1, "icArray":[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    iget v2, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    .line 4384
    .local v2, "icCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 4433
    return-void

    .line 4385
    :cond_0
    aget-object v10, v1, v0

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 4384
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4388
    :pswitch_0
    aget-object v8, v1, v0

    check-cast v8, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    .line 4389
    .local v8, "unique":Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;
    new-instance v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    # getter for: Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I
    invoke-static {v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->access$0(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)I

    move-result v10

    invoke-direct {v7, v8, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;-><init>(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    .line 4391
    .local v7, "toHash":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;

    .line 4392
    .local v9, "uniqueValueStore":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;
    if-nez v9, :cond_1

    .line 4393
    new-instance v9, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;

    .end local v9    # "uniqueValueStore":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v9, v10, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;)V

    .line 4394
    .restart local v9    # "uniqueValueStore":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4398
    :goto_2
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4399
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    aget-object v11, v1, v0

    # invokes: Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->activateSelectorFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    invoke-static {v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->access$1(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    goto :goto_1

    .line 4396
    :cond_1
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;->clear()V

    goto :goto_2

    .line 4403
    .end local v7    # "toHash":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;
    .end local v8    # "unique":Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;
    .end local v9    # "uniqueValueStore":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;
    :pswitch_1
    aget-object v3, v1, v0

    check-cast v3, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    .line 4404
    .local v3, "key":Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;
    new-instance v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    # getter for: Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I
    invoke-static {v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->access$0(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)I

    move-result v10

    invoke-direct {v7, v3, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;-><init>(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    .line 4406
    .restart local v7    # "toHash":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;

    .line 4407
    .local v6, "keyValueStore":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;
    if-nez v6, :cond_2

    .line 4408
    new-instance v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;

    .end local v6    # "keyValueStore":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v6, v10, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;)V

    .line 4409
    .restart local v6    # "keyValueStore":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4413
    :goto_3
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4414
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    aget-object v11, v1, v0

    # invokes: Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->activateSelectorFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    invoke-static {v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->access$1(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    goto :goto_1

    .line 4411
    :cond_2
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;->clear()V

    goto :goto_3

    .line 4418
    .end local v3    # "key":Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;
    .end local v6    # "keyValueStore":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;
    .end local v7    # "toHash":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;
    :pswitch_2
    aget-object v4, v1, v0

    check-cast v4, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;

    .line 4419
    .local v4, "keyRef":Lmf/org/apache/xerces/impl/xs/identity/KeyRef;
    new-instance v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    # getter for: Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I
    invoke-static {v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->access$0(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)I

    move-result v10

    invoke-direct {v7, v4, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;-><init>(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    .line 4421
    .restart local v7    # "toHash":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;

    .line 4422
    .local v5, "keyRefValueStore":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;
    if-nez v5, :cond_3

    .line 4423
    new-instance v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;

    .end local v5    # "keyRefValueStore":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v11, 0x0

    invoke-direct {v5, v10, v4, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/KeyRef;Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;)V

    .line 4424
    .restart local v5    # "keyRefValueStore":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4428
    :goto_4
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4429
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    aget-object v11, v1, v0

    # invokes: Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->activateSelectorFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    invoke-static {v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->access$1(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    goto/16 :goto_1

    .line 4426
    :cond_3
    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->clear()V

    goto :goto_4

    .line 4385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 4329
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4330
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4331
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4332
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 4333
    return-void
.end method

.method public startElement()V
    .locals 2

    .prologue
    .line 4339
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4340
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4343
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4344
    return-void

    .line 4342
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 4484
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4485
    .local v2, "s":Ljava/lang/String;
    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 4486
    .local v0, "index1":I
    if-eq v0, v4, :cond_1

    .line 4487
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 4493
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 4489
    .restart local v2    # "s":Ljava/lang/String;
    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 4490
    .local v1, "index2":I
    if-eq v1, v4, :cond_0

    .line 4491
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public transplant(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 4
    .param p1, "id"    # Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .param p2, "initialDepth"    # I

    .prologue
    .line 4452
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iput p2, v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    .line 4453
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iput-object p1, v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    .line 4455
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    .line 4456
    .local v1, "newVals":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4465
    :goto_0
    return-void

    .line 4458
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    .line 4459
    .local v0, "currVals":Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
    if-eqz v0, :cond_1

    .line 4460
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->append(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)V

    .line 4461
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4463
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
