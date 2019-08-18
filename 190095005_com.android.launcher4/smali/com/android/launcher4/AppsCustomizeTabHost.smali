.class public Lcom/android/launcher4/AppsCustomizeTabHost;
.super Landroid/widget/TabHost;
.source "AppsCustomizeTabHost.java"

# interfaces
.implements Lcom/android/launcher4/LauncherTransitionable;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/android/launcher4/Insettable;


# static fields
.field private static final APPS_TAB_TAG:Ljava/lang/String; = "APPS"

.field static final LOG_TAG:Ljava/lang/String; = "AppsCustomizeTabHost"

.field private static final WIDGETS_TAB_TAG:Ljava/lang/String; = "WIDGETS"


# instance fields
.field private mAnimationBuffer:Landroid/widget/FrameLayout;

.field private mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

.field private mContent:Landroid/widget/LinearLayout;

.field private mInTransition:Z

.field private final mInsets:Landroid/graphics/Rect;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRelayoutAndMakeVisible:Ljava/lang/Runnable;

.field private mResetAfterTransition:Z

.field private mTabs:Landroid/view/ViewGroup;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTransitioningToWorkspace:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mInsets:Landroid/graphics/Rect;

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 70
    new-instance v0, Lcom/android/launcher4/AppsCustomizeTabHost$1;

    invoke-direct {v0, p0}, Lcom/android/launcher4/AppsCustomizeTabHost$1;-><init>(Lcom/android/launcher4/AppsCustomizeTabHost;)V

    iput-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mRelayoutAndMakeVisible:Ljava/lang/Runnable;

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/AppsCustomizeTabHost;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher4/AppsCustomizeTabHost;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/launcher4/AppsCustomizeTabHost;)Lcom/android/launcher4/AppsCustomizePagedView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/launcher4/AppsCustomizeTabHost;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->reloadCurrentPage()V

    return-void
.end method

.method static synthetic access$4(Lcom/android/launcher4/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/launcher4/AppsCustomizeTabHost;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->onTabChangedStart()V

    return-void
.end method

.method static synthetic access$6(Lcom/android/launcher4/AppsCustomizeTabHost;Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/android/launcher4/AppsCustomizeTabHost;->onTabChangedEnd(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)V

    return-void
.end method

.method private enableAndBuildHardwareLayer()V
    .locals 2

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/AppsCustomizeTabHost;->setLayerType(ILandroid/graphics/Paint;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->buildLayer()V

    .line 383
    :cond_0
    return-void
.end method

.method private onTabChangedEnd(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)V
    .locals 2
    .param p1, "type"    # Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    .prologue
    .line 211
    invoke-static {}, Lcom/syu/util/JLog;->getInstance()Lcom/syu/util/JLog;

    move-result-object v0

    const-string v1, "onTabChangedEnd"

    invoke-virtual {v0, v1}, Lcom/syu/util/JLog;->e(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->setContentType(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)V

    .line 220
    return-void
.end method

.method private onTabChangedStart()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method private reloadCurrentPage()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher4/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 207
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizePagedView;->requestFocus()Z

    .line 208
    return-void
.end method

.method private setVisibilityOfSiblingsWithLowerZOrder(I)V
    .locals 7
    .param p1, "visibility"    # I

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 454
    .local v4, "parent":Landroid/view/ViewGroup;
    if-nez v4, :cond_1

    .line 476
    :cond_0
    return-void

    .line 456
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher4/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher4/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    .line 457
    .local v3, "overviewPanel":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 458
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->isChildrenDrawingOrderEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 459
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 460
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 461
    .local v0, "child":Landroid/view/View;
    if-eq v0, p0, :cond_0

    .line 463
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher4/Launcher;->mHotseat:Landroid/view/View;

    if-ne v5, v0, :cond_2

    .line 464
    sget-object v5, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 467
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    if-ne v0, v3, :cond_4

    .line 459
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 470
    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 474
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Failed; can\'t get z-order of views"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method alphaAnmi()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 500
    invoke-static {v6, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher4/AppsCustomizeTabHost;->setBackgroundColor(I)V

    .line 501
    const/4 v2, 0x0

    .line 502
    .local v2, "initAlpha":F
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 503
    const v4, 0x7f0b0002

    .line 502
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    .line 503
    const/high16 v4, 0x42c80000    # 100.0f

    .line 502
    div-float v1, v3, v4

    .line 505
    .local v1, "finalAlpha":F
    new-instance v3, Landroid/animation/FloatEvaluator;

    invoke-direct {v3}, Landroid/animation/FloatEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 506
    .local v0, "bgAnimator":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/android/launcher4/AppsCustomizeTabHost$4;

    invoke-direct {v3, p0}, Lcom/android/launcher4/AppsCustomizeTabHost$4;-><init>(Lcom/android/launcher4/AppsCustomizeTabHost;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 514
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 515
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 516
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 517
    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getContentTypeForTabTag(Ljava/lang/String;)Lcom/android/launcher4/AppsCustomizePagedView$ContentType;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string v0, "APPS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    .line 335
    :goto_0
    return-object v0

    .line 332
    :cond_0
    const-string v0, "WIDGETS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    sget-object v0, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    goto :goto_0

    .line 335
    :cond_1
    sget-object v0, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const/high16 v0, 0x60000

    .line 358
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TabHost;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getTabTagForContentType(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    .prologue
    .line 342
    sget-object v0, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_0

    .line 343
    const-string v0, "APPS"

    .line 347
    :goto_0
    return-object v0

    .line 344
    :cond_0
    sget-object v0, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_1

    .line 345
    const-string v0, "WIDGETS"

    goto :goto_0

    .line 347
    :cond_1
    const-string v0, "APPS"

    goto :goto_0
.end method

.method isTransitioning()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mInTransition:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 15

    .prologue
    const v14, 0x7f04002e

    const/16 v13, 0x96

    const/4 v12, 0x0

    const/high16 v11, 0x41a00000    # 20.0f

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->setup()V

    .line 111
    const v9, 0x7f11000e

    invoke-virtual {p0, v9}, Lcom/android/launcher4/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 112
    .local v8, "tabsContainer":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    .line 114
    .local v7, "tabs":Landroid/widget/TabWidget;
    const v9, 0x7f110010

    invoke-virtual {p0, v9}, Lcom/android/launcher4/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/AppsCustomizePagedView;

    .line 115
    .local v0, "appsCustomizePane":Lcom/android/launcher4/AppsCustomizePagedView;
    iput-object v7, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    .line 116
    iput-object v8, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    .line 117
    iput-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    .line 118
    const v9, 0x7f110012

    invoke-virtual {p0, v9}, Lcom/android/launcher4/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    iput-object v9, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;

    .line 119
    const v9, 0x7f11000d

    invoke-virtual {p0, v9}, Lcom/android/launcher4/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    .line 120
    if-eqz v7, :cond_0

    iget-object v9, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    if-nez v9, :cond_1

    :cond_0
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v9}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v9

    .line 124
    :cond_1
    new-instance v1, Lcom/android/launcher4/AppsCustomizeTabHost$2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher4/AppsCustomizeTabHost$2;-><init>(Lcom/android/launcher4/AppsCustomizeTabHost;Lcom/android/launcher4/AppsCustomizePagedView;)V

    .line 133
    .local v1, "contentFactory":Landroid/widget/TabHost$TabContentFactory;
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c0027

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "label":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v9, v14, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 135
    .local v6, "tabView":Landroid/widget/TextView;
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setWidth(I)V

    .line 138
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 139
    const-string v9, "APPS"

    invoke-virtual {p0, v9}, Lcom/android/launcher4/AppsCustomizeTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/launcher4/AppsCustomizeTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c000d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    iget-object v9, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v9, v14, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .end local v6    # "tabView":Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 142
    .restart local v6    # "tabView":Landroid/widget/TextView;
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setWidth(I)V

    .line 143
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 145
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 146
    const-string v9, "WIDGETS"

    invoke-virtual {p0, v9}, Lcom/android/launcher4/AppsCustomizeTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/launcher4/AppsCustomizeTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 147
    invoke-virtual {p0, p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 150
    new-instance v2, Lcom/android/launcher4/AppsCustomizeTabKeyEventListener;

    invoke-direct {v2}, Lcom/android/launcher4/AppsCustomizeTabKeyEventListener;-><init>()V

    .line 151
    .local v2, "keyListener":Lcom/android/launcher4/AppsCustomizeTabKeyEventListener;
    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    .line 152
    .local v4, "lastTab":Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 153
    const v9, 0x7f11000f

    invoke-virtual {p0, v9}, Lcom/android/launcher4/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 154
    .local v5, "shopButton":Landroid/view/View;
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 157
    iget-object v9, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 158
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mInTransition:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mTransitioningToWorkspace:Z

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher4/Launcher;ZZ)V
    .locals 2
    .param p1, "l"    # Lcom/android/launcher4/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    const/4 v1, 0x0

    .line 432
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher4/AppsCustomizePagedView;->onLauncherTransitionEnd(Lcom/android/launcher4/Launcher;ZZ)V

    .line 433
    iput-boolean v1, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mInTransition:Z

    .line 434
    if-eqz p2, :cond_0

    .line 435
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher4/AppsCustomizeTabHost;->setLayerType(ILandroid/graphics/Paint;)V

    .line 438
    :cond_0
    if-nez p3, :cond_1

    .line 440
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizePagedView;->showAllAppsCling()V

    .line 443
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher4/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 448
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher4/AppsCustomizeTabHost;->setVisibilityOfSiblingsWithLowerZOrder(I)V

    .line 450
    :cond_1
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher4/Launcher;ZZ)V
    .locals 4
    .param p1, "l"    # Lcom/android/launcher4/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 393
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher4/AppsCustomizePagedView;->onLauncherTransitionPrepare(Lcom/android/launcher4/Launcher;ZZ)V

    .line 394
    iput-boolean v3, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mInTransition:Z

    .line 395
    iput-boolean p3, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mTransitioningToWorkspace:Z

    .line 397
    if-eqz p3, :cond_1

    .line 399
    invoke-direct {p0, v2}, Lcom/android/launcher4/AppsCustomizeTabHost;->setVisibilityOfSiblingsWithLowerZOrder(I)V

    .line 409
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mResetAfterTransition:Z

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizePagedView;->reset()V

    .line 411
    iput-boolean v2, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mResetAfterTransition:Z

    .line 413
    :cond_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher4/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher4/AppsCustomizePagedView;->loadAssociatedPages(IZ)V

    goto :goto_0
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher4/Launcher;ZZ)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher4/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 417
    if-eqz p2, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->enableAndBuildHardwareLayer()V

    .line 422
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher4/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    .line 423
    return-void
.end method

.method public onLauncherTransitionStep(Lcom/android/launcher4/Launcher;F)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher4/Launcher;
    .param p2, "t"    # F

    .prologue
    .line 428
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v2, :cond_2

    const/4 v1, 0x1

    .line 163
    .local v1, "remeasureTabWidth":Z
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 166
    if-eqz v1, :cond_1

    .line 167
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v0

    .line 168
    .local v0, "contentWidth":I
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v0, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 171
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mRelayoutAndMakeVisible:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 174
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 176
    .end local v0    # "contentWidth":I
    :cond_1
    return-void

    .line 162
    .end local v1    # "remeasureTabWidth":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {}, Lcom/syu/util/JLog;->getInstance()Lcom/syu/util/JLog;

    move-result-object v3

    const-string v4, "onTabChanged"

    invoke-virtual {v3, v4}, Lcom/syu/util/JLog;->e(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/launcher4/AppsCustomizeTabHost;->getContentTypeForTabTag(Ljava/lang/String;)Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    move-result-object v2

    .line 228
    .local v2, "type":Lcom/android/launcher4/AppsCustomizePagedView$ContentType;
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 229
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f0b0010

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 233
    .local v0, "duration":I
    new-instance v3, Lcom/android/launcher4/AppsCustomizeTabHost$3;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/launcher4/AppsCustomizeTabHost$3;-><init>(Lcom/android/launcher4/AppsCustomizeTabHost;Lcom/android/launcher4/AppsCustomizePagedView$ContentType;I)V

    invoke-virtual {p0, v3}, Lcom/android/launcher4/AppsCustomizeTabHost;->post(Ljava/lang/Runnable;)Z

    .line 318
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mInTransition:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mTransitioningToWorkspace:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 199
    :goto_0
    return v0

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher4/AppsCustomizePagedView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 197
    const/4 v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrimMemory()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizePagedView;->clearAllWidgetPages()V

    .line 493
    return-void
.end method

.method public onWindowVisible()V
    .locals 3

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher4/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->loadAssociatedPages(IZ)V

    .line 484
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher4/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 486
    :cond_0
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mInTransition:Z

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizePagedView;->reset()V

    .line 369
    :cond_0
    return-void
.end method

.method setContentTypeImmediate(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)V
    .locals 1
    .param p1, "type"    # Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 86
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->onTabChangedStart()V

    .line 87
    invoke-direct {p0, p1}, Lcom/android/launcher4/AppsCustomizeTabHost;->onTabChangedEnd(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/launcher4/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 90
    return-void
.end method

.method public setCurrentTabFromContent(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)V
    .locals 1
    .param p1, "type"    # Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/launcher4/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0, p0}, Lcom/android/launcher4/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 324
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 95
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    .local v0, "flp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 97
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 98
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 99
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 100
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    return-void
.end method
