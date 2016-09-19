.class abstract Lcom/android/server/policy/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field public customAction:I

.field public isKnoxCustom:Z

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field mLayoutId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 2
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3611
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 3612
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->customAction:I

    .line 3626
    iput p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    .line 3627
    iput p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 3628
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 3629
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 3631
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->init()V

    .line 3633
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 3635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3611
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 3612
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->customAction:I

    .line 3636
    iput p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    .line 3637
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 3638
    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 3639
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 3641
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->init()V

    .line 3643
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 3645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3611
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 3612
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->customAction:I

    .line 3646
    iput p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    .line 3647
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 3648
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 3649
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 3651
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->init()V

    .line 3653
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 1
    .param p1, "iconImageDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "messageChar"    # Ljava/lang/String;
    .param p3, "action"    # I

    .prologue
    const/4 v0, 0x0

    .line 3613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3611
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 3612
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->customAction:I

    .line 3614
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 3615
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 3616
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    .line 3617
    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 3618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 3619
    iput p3, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->customAction:I

    .line 3621
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->init()V

    .line 3623
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 3656
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3657
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3658
    const v0, 0x1090079

    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mLayoutId:I

    .line 3669
    :goto_0
    return-void

    .line 3660
    :cond_0
    const v0, 0x1090077

    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mLayoutId:I

    goto :goto_0

    .line 3663
    :cond_1
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v0

    if-nez v0, :cond_2

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3664
    const v0, 0x109007a

    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mLayoutId:I

    goto :goto_0

    .line 3666
    :cond_2
    const v0, 0x1090078

    iput v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mLayoutId:I

    goto :goto_0
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const v8, -0x777778

    const/4 v10, 0x0

    .line 3694
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-nez v7, :cond_8

    .line 3695
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v7

    if-nez v7, :cond_7

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v7

    if-nez v7, :cond_7

    .line 3696
    const v7, 0x1090079

    invoke-virtual {p4, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 3708
    .local v6, "v":Landroid/view/View;
    :goto_0
    const v7, 0x1020006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3709
    .local v1, "icon":Landroid/widget/ImageView;
    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3710
    .local v3, "messageView":Landroid/widget/TextView;
    const v7, 0x10203b6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3711
    .local v5, "statusView":Landroid/widget/TextView;
    const v7, 0x10203b8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 3713
    .local v2, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->isEnabled()Z

    move-result v0

    .line 3714
    .local v0, "enabled":Z
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;->getStatus()Ljava/lang/String;

    move-result-object v4

    .line 3716
    .local v4, "status":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 3717
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 3718
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3719
    if-nez v0, :cond_0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3726
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_b

    .line 3727
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3728
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3730
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3737
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 3738
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v7, :cond_c

    .line 3739
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3743
    :goto_3
    if-nez v0, :cond_2

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3746
    :cond_2
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_4

    .line 3747
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    if-eqz v7, :cond_3

    .line 3748
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10409bd

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3752
    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3753
    if-eqz v0, :cond_d

    .line 3754
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3755
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3762
    :cond_4
    :goto_4
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-nez v7, :cond_6

    .line 3763
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v7

    if-nez v7, :cond_6

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v7

    if-nez v7, :cond_6

    .line 3764
    if-eqz v3, :cond_5

    .line 3765
    const-string v7, "#FF000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3767
    :cond_5
    if-eqz v5, :cond_6

    .line 3768
    const-string v7, "#6B6F72"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3772
    :cond_6
    return-object v6

    .line 3698
    .end local v0    # "enabled":Z
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v3    # "messageView":Landroid/widget/TextView;
    .end local v4    # "status":Ljava/lang/String;
    .end local v5    # "statusView":Landroid/widget/TextView;
    .end local v6    # "v":Landroid/view/View;
    :cond_7
    const v7, 0x1090077

    invoke-virtual {p4, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 3701
    .end local v6    # "v":Landroid/view/View;
    :cond_8
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v7

    if-nez v7, :cond_9

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v7

    if-nez v7, :cond_9

    .line 3702
    const v7, 0x109007a

    invoke-virtual {p4, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 3704
    .end local v6    # "v":Landroid/view/View;
    :cond_9
    const v7, 0x1090078

    invoke-virtual {p4, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 3721
    .restart local v0    # "enabled":Z
    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v2    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .restart local v3    # "messageView":Landroid/widget/TextView;
    .restart local v4    # "status":Ljava/lang/String;
    .restart local v5    # "statusView":Landroid/widget/TextView;
    :cond_a
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3722
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 3732
    :cond_b
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v7, :cond_1

    .line 3733
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3734
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 3741
    :cond_c
    iget v7, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 3757
    :cond_d
    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3758
    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto/16 :goto_4
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3683
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 3684
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 3686
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/server/policy/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3677
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 3673
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method
