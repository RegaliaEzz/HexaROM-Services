.class public Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;
.super Ljava/lang/Object;
.source "CocktailPolicyManager.java"

# interfaces
.implements Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;,
        Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;
    }
.end annotation


# static fields
.field public static final COCKTAIL_STATE_ADD:I = 0x1

.field public static final COCKTAIL_STATE_REMOVE:I = 0x3

.field public static final COCKTAIL_STATE_UPDATE:I = 0x2

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCocktailPolicys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;

.field private mUpdatableCocktailMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 21
    const-class v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->TAG:Ljava/lang/String;

    .line 23
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mCocktailPolicys:Ljava/util/ArrayList;

    .line 30
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    .line 34
    iput-object p2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;

    .line 35
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result v1

    .line 36
    .local v1, "categoryId":I
    if-eqz v1, :cond_0

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    .line 37
    :cond_0
    new-instance v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualHighPriorityPolicy;

    invoke-direct {v2, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualHighPriorityPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    .line 38
    new-instance v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;

    invoke-direct {v2, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailContextualPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    .line 40
    :cond_1
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_2

    .line 41
    new-instance v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;

    invoke-direct {v2, p1, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    .line 43
    :cond_2
    const/16 v0, 0xa4

    .line 46
    .local v0, "categories":I
    if-eqz v1, :cond_3

    and-int/lit16 v2, v1, 0xa4

    if-eqz v2, :cond_4

    .line 47
    :cond_3
    new-instance v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNativePolicy;

    invoke-direct {v2, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNativePolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    .line 49
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 50
    new-instance v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPrivatePolicy;

    invoke-direct {v2, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPrivatePolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    .line 52
    :cond_5
    new-instance v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNormalPolicy;

    invoke-direct {v2, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailNormalPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V

    .line 53
    return-void
.end method

.method private findCocktailPolicy(I)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    .locals 5
    .param p1, "policyType"    # I

    .prologue
    .line 177
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mCocktailPolicys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    .line 178
    .local v1, "p":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    invoke-interface {v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->getCocktailType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 179
    sget-boolean v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 180
    sget-object v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findPolicy: find policy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v1    # "p":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    .locals 6
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, "policy":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mCocktailPolicys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    .line 165
    .local v1, "p":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    invoke-interface {v1, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->isMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    sget-boolean v3, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 167
    sget-object v3, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "findMatchedPolicy: find policy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->getCocktailType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    move-object v2, v1

    .line 173
    .end local v1    # "p":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    :cond_2
    return-object v2
.end method

.method private setupCocktailPolicy(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;)V
    .locals 1
    .param p1, "policy"    # Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mCocktailPolicys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method


# virtual methods
.method public canCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z
    .locals 4
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "userId"    # I
    .param p4, "modeManager"    # Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    .prologue
    const/4 v1, 0x0

    .line 138
    if-nez p1, :cond_1

    .line 139
    sget-object v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "canCloseCocktail: cocktail is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 142
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->findMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    move-result-object v0

    .line 143
    .local v0, "policy":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v1

    invoke-interface {v0, p1, p3, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->isAcceptCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method public canSendUpdateIntent(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z
    .locals 1
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z
    .locals 4
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "userId"    # I
    .param p4, "modeManager"    # Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    .prologue
    const/4 v1, 0x0

    .line 124
    if-nez p1, :cond_1

    .line 125
    sget-object v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "canShowCocktail: cocktail is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 128
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->findMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    move-result-object v0

    .line 129
    .local v0, "policy":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v1

    invoke-interface {v0, p1, p3, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->isAcceptShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method public canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;ILcom/android/server/cocktailbar/mode/CocktailBarModeManager;)Z
    .locals 6
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "userId"    # I
    .param p4, "modeManager"    # Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    .prologue
    const/4 v1, 0x0

    .line 110
    if-nez p1, :cond_1

    .line 111
    sget-object v2, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "canUpdateCocktail: cocktail is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    :goto_0
    return v1

    .line 114
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->findMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    move-result-object v0

    .line 115
    .local v0, "policy":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->isUpdatedCocktail(II)Z

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->isAcceptUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method public canUpdateFeeds(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z
    .locals 3
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .prologue
    const/4 v0, 0x0

    .line 151
    if-nez p1, :cond_1

    .line 152
    sget-object v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "canUpdateFeeds: cocktail is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public changeResumePackage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "resumePackageName"    # Ljava/lang/String;
    .param p2, "policyType"    # I

    .prologue
    .line 71
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->findCocktailPolicy(I)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    move-result-object v0

    .line 72
    .local v0, "policy":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->changeResumePackage(Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public disableUpdatableCocktail(II)V
    .locals 2
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;

    .line 88
    .local v0, "info":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->disableUpdate(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public enableUpdatableCocktail(II)V
    .locals 2
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;

    .line 79
    .local v0, "info":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;
    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;

    .end local v0    # "info":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;
    invoke-direct {v0, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;-><init>(I)V

    .line 81
    .restart local v0    # "info":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->enableUpdate(I)V

    .line 84
    return-void
.end method

.method public establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;II)V
    .locals 3
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "policyType"    # I
    .param p3, "cocktailState"    # I

    .prologue
    .line 60
    if-nez p1, :cond_1

    .line 61
    sget-object v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "establishPolicy: cocktail is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->findCocktailPolicy(I)Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;

    move-result-object v0

    .line 65
    .local v0, "policy":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1, p3}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy;->establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;I)V

    goto :goto_0
.end method

.method public isUpdatedCocktail(II)Z
    .locals 2
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;

    .line 95
    .local v0, "info":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->isUpdatedCocktail(I)Z

    move-result v1

    .line 98
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDisableUpdatableCocktail(II)V
    .locals 0
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->disableUpdatableCocktail(II)V

    .line 196
    return-void
.end method

.method public onEanbleUpdatableCocktail(II)V
    .locals 0
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->enableUpdatableCocktail(II)V

    .line 191
    return-void
.end method

.method public onRemoveUpdatableCocktail(I)V
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 209
    shr-int/lit8 v1, p1, 0x10

    .line 210
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;

    .line 211
    .local v0, "info":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->isUpdatedCocktail(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;

    invoke-interface {v2, p1, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;->onRemoveCocktail(II)V

    .line 214
    :cond_0
    return-void
.end method

.method public onUpdateCocktail(I)V
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 200
    shr-int/lit8 v1, p1, 0x10

    .line 201
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mUpdatableCocktailMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;

    .line 202
    .local v0, "info":Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$UpadatableCocktailInfo;->isUpdatedCocktail(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;

    invoke-interface {v2, p1, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;->onUpdateCocktail(II)V

    .line 205
    :cond_0
    return-void
.end method
