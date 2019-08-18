.class public Lcom/android/launcher4/SearchDropTargetBar;
.super Landroid/widget/FrameLayout;
.source "SearchDropTargetBar.java"

# interfaces
.implements Lcom/android/launcher4/DragController$DragListener;


# static fields
.field private static final sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private static final sTransitionInDuration:I = 0xc8

.field private static final sTransitionOutDuration:I = 0xaf


# instance fields
.field private mBarHeight:I

.field private mDeferOnDragEnd:Z

.field private mDeleteDropTarget:Lcom/android/launcher4/ButtonDropTarget;

.field private mDropTargetBar:Landroid/view/View;

.field private mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

.field private mEnableDropDownDropTargets:Z

.field private mIsSearchBarHidden:Z

.field private mPreviousBackground:Landroid/graphics/drawable/Drawable;

.field private mQSBSearchBar:Landroid/view/View;

.field private mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher4/SearchDropTargetBar;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/SearchDropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDeferOnDragEnd:Z

    .line 63
    return-void
.end method

.method private prepareStartAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 87
    return-void
.end method

.method private setupAnimation(Landroid/animation/ObjectAnimator;Landroid/view/View;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/ObjectAnimator;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 90
    sget-object v0, Lcom/android/launcher4/SearchDropTargetBar;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 91
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 92
    new-instance v0, Lcom/android/launcher4/SearchDropTargetBar$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher4/SearchDropTargetBar$1;-><init>(Lcom/android/launcher4/SearchDropTargetBar;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 98
    return-void
.end method


# virtual methods
.method public deferOnDragEnd()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDeferOnDragEnd:Z

    .line 217
    return-void
.end method

.method public finishAnimations()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher4/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 138
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 139
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher4/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 141
    return-void
.end method

.method public getSearchBarBounds()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 253
    iget-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 254
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 255
    .local v0, "pos":[I
    iget-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 257
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 258
    .local v1, "rect":Landroid/graphics/Rect;
    aget v2, v0, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 259
    aget v2, v0, v4

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 260
    aget v2, v0, v3

    iget-object v3, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 261
    aget v2, v0, v4

    iget-object v3, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 264
    .end local v0    # "pos":[I
    .end local v1    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTransitionInDuration()I
    .locals 1

    .prologue
    .line 188
    const/16 v0, 0xc8

    return v0
.end method

.method public getTransitionOutDuration()I
    .locals 1

    .prologue
    .line 191
    const/16 v0, 0xaf

    return v0
.end method

.method public hideSearchBar(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-nez v0, :cond_0

    .line 169
    if-eqz p1, :cond_2

    .line 170
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher4/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 181
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mIsSearchBarHidden:Z

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 175
    iget-boolean v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mEnableDropDownDropTargets:Z

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher4/SearchDropTargetBar;->mBarHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method public onDragEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-boolean v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDeferOnDragEnd:Z

    if-nez v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher4/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 224
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 225
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher4/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 231
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 236
    :cond_1
    :goto_0
    return-void

    .line 234
    :cond_2
    iput-boolean v1, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDeferOnDragEnd:Z

    goto :goto_0
.end method

.method public onDragStart(Lcom/android/launcher4/DragSource;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "source"    # Lcom/android/launcher4/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher4/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 202
    invoke-static {p2}, Lcom/android/launcher4/DeleteDropTarget;->willAcceptDrop(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->mAllAppsButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher4/Launcher;->mAllAppsButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher4/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 213
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 102
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 105
    const v2, 0x7f110085

    invoke-virtual {p0, v2}, Lcom/android/launcher4/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    .line 107
    iget-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const v3, 0x7f110047

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/ButtonDropTarget;

    iput-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher4/ButtonDropTarget;

    .line 108
    const v2, 0x7f110084

    invoke-virtual {p0, v2}, Lcom/android/launcher4/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    .line 110
    iget-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher4/ButtonDropTarget;

    invoke-virtual {v2, p0}, Lcom/android/launcher4/ButtonDropTarget;->setSearchDropTargetBar(Lcom/android/launcher4/SearchDropTargetBar;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/launcher4/SearchDropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 112
    iput-boolean v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mEnableDropDownDropTargets:Z

    .line 116
    iget-boolean v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mEnableDropDownDropTargets:Z

    if-eqz v2, :cond_0

    .line 117
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 118
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 119
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    iget v2, v1, Lcom/android/launcher4/DeviceProfile;->searchBarSpaceHeightPx:I

    iput v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mBarHeight:I

    .line 120
    iget-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher4/SearchDropTargetBar;->mBarHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 121
    iget-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    .line 122
    iget v5, p0, Lcom/android/launcher4/SearchDropTargetBar;->mBarHeight:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v8

    aput v7, v4, v9

    .line 121
    invoke-static {v2, v3, v4}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    .line 123
    iget-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    .line 124
    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v8

    iget v5, p0, Lcom/android/launcher4/SearchDropTargetBar;->mBarHeight:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v9

    .line 123
    invoke-static {v2, v3, v4}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    .line 132
    .end local v0    # "app":Lcom/android/launcher4/LauncherAppState;
    .end local v1    # "grid":Lcom/android/launcher4/DeviceProfile;
    :goto_0
    iget-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v2, v3}, Lcom/android/launcher4/SearchDropTargetBar;->setupAnimation(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    .line 133
    iget-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v2, v3}, Lcom/android/launcher4/SearchDropTargetBar;->setupAnimation(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    .line 134
    return-void

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    .line 128
    iget-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    .line 129
    iget-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    .line 130
    const-string v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    .line 129
    invoke-static {v2, v3, v4}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 128
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 130
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onSearchPackagesChanged(ZZ)V
    .locals 3
    .param p1, "searchVisible"    # Z
    .param p2, "voiceVisible"    # Z

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 241
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 243
    iput-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    .line 244
    iget-object v1, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 250
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 245
    .restart local v0    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher4/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher4/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setup(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/DragController;)V
    .locals 5
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;
    .param p2, "dragController"    # Lcom/android/launcher4/DragController;

    .prologue
    const/4 v2, 0x2

    .line 66
    invoke-virtual {p2, p0}, Lcom/android/launcher4/DragController;->addDragListener(Lcom/android/launcher4/DragController$DragListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher4/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher4/DragController;->addDragListener(Lcom/android/launcher4/DragController$DragListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher4/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher4/DragController;->addDropTarget(Lcom/android/launcher4/DropTarget;)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher4/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher4/DragController;->setFlingToDeleteDropTarget(Lcom/android/launcher4/DropTarget;)V

    .line 73
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher4/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/ButtonDropTarget;->setLauncher(Lcom/android/launcher4/Launcher;)V

    .line 74
    invoke-virtual {p1}, Lcom/android/launcher4/Launcher;->getQsbBar()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    .line 75
    iget-boolean v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mEnableDropDownDropTargets:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const-string v1, "translationY"

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher4/SearchDropTargetBar;->mBarHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher4/SearchDropTargetBar;->setupAnimation(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    .line 81
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public showSearchBar(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-eqz v0, :cond_0

    .line 151
    if-eqz p1, :cond_2

    .line 152
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher4/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 153
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 162
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mIsSearchBarHidden:Z

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 156
    iget-boolean v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mEnableDropDownDropTargets:Z

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/android/launcher4/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method
