.class public Lcom/android/launcher4/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/DragLayer$LayoutParams;,
        Lcom/android/launcher4/DragLayer$TouchCompleteListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_END_DISAPPEAR:I = 0x0

.field public static final ANIMATION_END_FADE_OUT:I = 0x1

.field public static final ANIMATION_END_REMAIN_VISIBLE:I = 0x2


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mAnchorViewInitialScrollX:I

.field private mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mCurrentResizeFrame:Lcom/android/launcher4/AppWidgetResizeFrame;

.field private mDragController:Lcom/android/launcher4/DragController;

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field private mDropView:Lcom/android/launcher4/DragView;

.field private mFadeOutAnim:Landroid/animation/ValueAnimator;

.field private mHitRect:Landroid/graphics/Rect;

.field private mHoverPointClosesFolder:Z

.field private mInScrollArea:Z

.field private final mInsets:Landroid/graphics/Rect;

.field private mLauncher:Lcom/android/launcher4/Launcher;

.field private mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mQsbIndex:I

.field private final mResizeFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppWidgetResizeFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mTmpXY:[I

.field private mTouchCompleteListener:Lcom/android/launcher4/DragLayer$TouchCompleteListener;

.field private mWorkspaceIndex:I

.field private mXDown:I

.field private mYDown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher4/DragLayer;->mTmpXY:[I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    .line 57
    iput-object v2, p0, Lcom/android/launcher4/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 58
    iput-object v2, p0, Lcom/android/launcher4/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 59
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 60
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 59
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher4/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 61
    iput-object v2, p0, Lcom/android/launcher4/DragLayer;->mDropView:Lcom/android/launcher4/DragView;

    .line 62
    iput v3, p0, Lcom/android/launcher4/DragLayer;->mAnchorViewInitialScrollX:I

    .line 63
    iput-object v2, p0, Lcom/android/launcher4/DragLayer;->mAnchorView:Landroid/view/View;

    .line 65
    iput-boolean v3, p0, Lcom/android/launcher4/DragLayer;->mHoverPointClosesFolder:Z

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/DragLayer;->mHitRect:Landroid/graphics/Rect;

    .line 67
    iput v4, p0, Lcom/android/launcher4/DragLayer;->mWorkspaceIndex:I

    .line 68
    iput v4, p0, Lcom/android/launcher4/DragLayer;->mQsbIndex:I

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/DragLayer;->mInsets:Landroid/graphics/Rect;

    .line 90
    invoke-virtual {p0, v3}, Lcom/android/launcher4/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher4/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    .line 92
    invoke-virtual {p0, p0}, Lcom/android/launcher4/DragLayer;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher4/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    const v1, 0x7f020655

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher4/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    const v1, 0x7f020656

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/DragLayer;)Lcom/android/launcher4/DragView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropView:Lcom/android/launcher4/DragView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher4/DragLayer;)Landroid/view/View;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/launcher4/DragLayer;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/launcher4/DragLayer;->mAnchorViewInitialScrollX:I

    return v0
.end method

.method static synthetic access$3(Lcom/android/launcher4/DragLayer;)V
    .locals 0

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/launcher4/DragLayer;->fadeOutDragView()V

    return-void
.end method

.method static synthetic access$4(Lcom/android/launcher4/DragLayer;)Lcom/android/launcher4/DragController;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDragController:Lcom/android/launcher4/DragController;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/launcher4/DragLayer;Lcom/android/launcher4/DragView;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/launcher4/DragLayer;->mDropView:Lcom/android/launcher4/DragView;

    return-void
.end method

.method private fadeOutDragView()V
    .locals 4

    .prologue
    .line 811
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 812
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 813
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 814
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 815
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher4/DragLayer$4;

    invoke-direct {v1, p0}, Lcom/android/launcher4/DragLayer$4;-><init>(Lcom/android/launcher4/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 823
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher4/DragLayer$5;

    invoke-direct {v1, p0}, Lcom/android/launcher4/DragLayer$5;-><init>(Lcom/android/launcher4/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 832
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 833
    return-void

    .line 813
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "intercept"    # Z

    .prologue
    const/4 v5, 0x1

    .line 149
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 150
    .local v2, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 151
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 153
    .local v4, "y":I
    iget-object v6, p0, Lcom/android/launcher4/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 167
    iget-object v6, p0, Lcom/android/launcher4/DragLayer;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher4/Workspace;->getOpenFolder()Lcom/android/launcher4/Folder;

    move-result-object v1

    .line 168
    .local v1, "currentFolder":Lcom/android/launcher4/Folder;
    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/android/launcher4/DragLayer;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher4/Launcher;->isFolderClingVisible()Z

    move-result v6

    if-nez v6, :cond_3

    .line 169
    if-eqz p2, :cond_3

    .line 170
    invoke-virtual {v1}, Lcom/android/launcher4/Folder;->isEditingName()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 171
    invoke-direct {p0, v1, p1}, Lcom/android/launcher4/DragLayer;->isEventOverFolderTextRegion(Lcom/android/launcher4/Folder;Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 172
    invoke-virtual {v1}, Lcom/android/launcher4/Folder;->dismissEditingName()V

    .line 183
    .end local v1    # "currentFolder":Lcom/android/launcher4/Folder;
    :goto_0
    return v5

    .line 153
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/AppWidgetResizeFrame;

    .line 154
    .local v0, "child":Lcom/android/launcher4/AppWidgetResizeFrame;
    invoke-virtual {v0, v2}, Lcom/android/launcher4/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 155
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/android/launcher4/AppWidgetResizeFrame;->getLeft()I

    move-result v7

    sub-int v7, v3, v7

    .line 157
    invoke-virtual {v0}, Lcom/android/launcher4/AppWidgetResizeFrame;->getTop()I

    move-result v8

    sub-int v8, v4, v8

    .line 156
    invoke-virtual {v0, v7, v8}, Lcom/android/launcher4/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v7

    .line 157
    if-eqz v7, :cond_0

    .line 158
    iput-object v0, p0, Lcom/android/launcher4/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher4/AppWidgetResizeFrame;

    .line 159
    iput v3, p0, Lcom/android/launcher4/DragLayer;->mXDown:I

    .line 160
    iput v4, p0, Lcom/android/launcher4/DragLayer;->mYDown:I

    .line 161
    invoke-virtual {p0, v5}, Lcom/android/launcher4/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 177
    .end local v0    # "child":Lcom/android/launcher4/AppWidgetResizeFrame;
    .restart local v1    # "currentFolder":Lcom/android/launcher4/Folder;
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher4/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 178
    invoke-direct {p0, v1, p1}, Lcom/android/launcher4/DragLayer;->isEventOverFolder(Lcom/android/launcher4/Folder;Landroid/view/MotionEvent;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 179
    iget-object v6, p0, Lcom/android/launcher4/DragLayer;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher4/Launcher;->closeFolder()V

    goto :goto_0

    .line 183
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isEventOverFolder(Lcom/android/launcher4/Folder;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "folder"    # Lcom/android/launcher4/Folder;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher4/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 142
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEventOverFolderTextRegion(Lcom/android/launcher4/Folder;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "folder"    # Lcom/android/launcher4/Folder;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/android/launcher4/Folder;->getEditTextRegion()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 134
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendTapOutsideFolderAccessibilityEvent(Z)V
    .locals 5
    .param p1, "isEditingName"    # Z

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/launcher4/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 252
    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 253
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    if-eqz p1, :cond_1

    const v2, 0x7f0c005a

    .line 257
    .local v2, "stringId":I
    :goto_0
    const/16 v3, 0x8

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 258
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v1}, Lcom/android/launcher4/DragLayer;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 259
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher4/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 262
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v2    # "stringId":I
    :cond_0
    return-void

    .line 255
    :cond_1
    const v2, 0x7f0c0059

    goto :goto_0
.end method

.method private updateChildIndices()V
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mLauncher:Lcom/android/launcher4/Launcher;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/DragLayer;->mWorkspaceIndex:I

    .line 848
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getSearchBar()Lcom/android/launcher4/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/DragLayer;->mQsbIndex:I

    .line 850
    :cond_0
    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "childrenForAccessibility":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/launcher4/DragLayer;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher4/Workspace;->getOpenFolder()Lcom/android/launcher4/Folder;

    move-result-object v0

    .line 284
    .local v0, "currentFolder":Lcom/android/launcher4/Folder;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public addResizeFrame(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/LauncherAppWidgetHostView;Lcom/android/launcher4/CellLayout;)V
    .locals 4
    .param p1, "itemInfo"    # Lcom/android/launcher4/ItemInfo;
    .param p2, "widget"    # Lcom/android/launcher4/LauncherAppWidgetHostView;
    .param p3, "cellLayout"    # Lcom/android/launcher4/CellLayout;

    .prologue
    const/4 v3, -0x1

    .line 501
    new-instance v1, Lcom/android/launcher4/AppWidgetResizeFrame;

    .line 502
    invoke-virtual {p0}, Lcom/android/launcher4/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 501
    invoke-direct {v1, v2, p2, p3, p0}, Lcom/android/launcher4/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/android/launcher4/LauncherAppWidgetHostView;Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/DragLayer;)V

    .line 504
    .local v1, "resizeFrame":Lcom/android/launcher4/AppWidgetResizeFrame;
    new-instance v0, Lcom/android/launcher4/DragLayer$LayoutParams;

    invoke-direct {v0, v3, v3}, Lcom/android/launcher4/DragLayer$LayoutParams;-><init>(II)V

    .line 505
    .local v0, "lp":Lcom/android/launcher4/DragLayer$LayoutParams;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher4/DragLayer$LayoutParams;->customPosition:Z

    .line 507
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher4/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    iget-object v2, p0, Lcom/android/launcher4/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher4/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 511
    return-void
.end method

.method public animateView(Lcom/android/launcher4/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 4
    .param p1, "view"    # Lcom/android/launcher4/DragView;
    .param p2, "updateCb"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p5, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p6, "animationEndStyle"    # I
    .param p7, "anchorView"    # Landroid/view/View;

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 759
    :cond_1
    iput-object p1, p0, Lcom/android/launcher4/DragLayer;->mDropView:Lcom/android/launcher4/DragView;

    .line 760
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropView:Lcom/android/launcher4/DragView;

    invoke-virtual {v0}, Lcom/android/launcher4/DragView;->cancelAnimation()V

    .line 761
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropView:Lcom/android/launcher4/DragView;

    invoke-virtual {v0}, Lcom/android/launcher4/DragView;->resetLayoutParams()V

    .line 764
    if-eqz p7, :cond_2

    .line 765
    invoke-virtual {p7}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/DragLayer;->mAnchorViewInitialScrollX:I

    .line 767
    :cond_2
    iput-object p7, p0, Lcom/android/launcher4/DragLayer;->mAnchorView:Landroid/view/View;

    .line 770
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 771
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 772
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 773
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 774
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 775
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher4/DragLayer$3;

    invoke-direct {v1, p0, p5, p6}, Lcom/android/launcher4/DragLayer$3;-><init>(Lcom/android/launcher4/DragLayer;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 792
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 793
    return-void

    .line 773
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateView(Lcom/android/launcher4/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 25
    .param p1, "view"    # Lcom/android/launcher4/DragView;
    .param p2, "from"    # Landroid/graphics/Rect;
    .param p3, "to"    # Landroid/graphics/Rect;
    .param p4, "finalAlpha"    # F
    .param p5, "initScaleX"    # F
    .param p6, "initScaleY"    # F
    .param p7, "finalScaleX"    # F
    .param p8, "finalScaleY"    # F
    .param p9, "duration"    # I
    .param p10, "motionInterpolator"    # Landroid/view/animation/Interpolator;
    .param p11, "alphaInterpolator"    # Landroid/view/animation/Interpolator;
    .param p12, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p13, "animationEndStyle"    # I
    .param p14, "anchorView"    # Landroid/view/View;

    .prologue
    .line 674
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 675
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 674
    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v22, v0

    .line 676
    .local v22, "dist":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 678
    .local v24, "res":Landroid/content/res/Resources;
    const v3, 0x7f0b0018

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v23, v0

    .line 682
    .local v23, "maxDist":F
    if-gez p9, :cond_1

    .line 683
    const v3, 0x7f0b0016

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p9

    .line 684
    cmpg-float v3, v22, v23

    if-gez v3, :cond_0

    .line 685
    move/from16 v0, p9

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 686
    div-float v5, v22, v23

    .line 685
    invoke-interface {v4, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 p9, v0

    .line 689
    :cond_0
    const v3, 0x7f0b0015

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 688
    move/from16 v0, p9

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p9

    .line 694
    :cond_1
    const/16 v18, 0x0

    .line 695
    .local v18, "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz p11, :cond_2

    if-nez p10, :cond_3

    .line 696
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v18, v0

    .line 700
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/DragView;->getAlpha()F

    move-result v13

    .line 701
    .local v13, "initAlpha":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/DragView;->getScaleX()F

    move-result v8

    .line 702
    .local v8, "dropViewScale":F
    new-instance v2, Lcom/android/launcher4/DragLayer$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p11

    move-object/from16 v6, p10

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p4

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v2 .. v15}, Lcom/android/launcher4/DragLayer$2;-><init>(Lcom/android/launcher4/DragLayer;Lcom/android/launcher4/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .local v2, "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v2

    move/from16 v17, p9

    move-object/from16 v19, p12

    move/from16 v20, p13

    move-object/from16 v21, p14

    .line 744
    invoke-virtual/range {v14 .. v21}, Lcom/android/launcher4/DragLayer;->animateView(Lcom/android/launcher4/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 746
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher4/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .locals 17
    .param p1, "view"    # Lcom/android/launcher4/DragView;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I
    .param p6, "finalAlpha"    # F
    .param p7, "initScaleX"    # F
    .param p8, "initScaleY"    # F
    .param p9, "finalScaleX"    # F
    .param p10, "finalScaleY"    # F
    .param p11, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p12, "animationEndStyle"    # I
    .param p13, "duration"    # I
    .param p14, "anchorView"    # Landroid/view/View;

    .prologue
    .line 616
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/DragView;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p2

    .line 617
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/DragView;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p3

    .line 616
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 618
    .local v4, "from":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/DragView;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p4

    .line 619
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/DragView;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p5

    .line 618
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 621
    .local v5, "to":Landroid/graphics/Rect;
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p13

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p14

    .line 620
    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher4/DragLayer;->animateView(Lcom/android/launcher4/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 623
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher4/DragView;Landroid/view/View;)V
    .locals 1
    .param p1, "dragView"    # Lcom/android/launcher4/DragView;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher4/DragLayer;->animateViewIntoPosition(Lcom/android/launcher4/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 515
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher4/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
    .locals 24
    .param p1, "dragView"    # Lcom/android/launcher4/DragView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "duration"    # I
    .param p4, "onFinishAnimationRunnable"    # Ljava/lang/Runnable;
    .param p5, "anchorView"    # Landroid/view/View;

    .prologue
    .line 539
    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    .line 539
    check-cast v21, Lcom/android/launcher4/ShortcutAndWidgetContainer;

    .line 542
    .local v21, "parentChildren":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 541
    check-cast v20, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 543
    .local v20, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 545
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 546
    .local v22, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 548
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v19, v0

    .line 549
    .local v19, "coord":[I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v18

    .line 550
    .local v18, "childScale":F
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->x:I

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, v18

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v4, v9

    .line 550
    aput v4, v19, v3

    .line 552
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->y:I

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, v18

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v4, v9

    .line 552
    aput v4, v19, v3

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 559
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher4/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v12

    .line 564
    .local v12, "scale":F
    mul-float v12, v12, v18

    .line 565
    const/4 v3, 0x0

    aget v7, v19, v3

    .line 566
    .local v7, "toX":I
    const/4 v3, 0x1

    aget v8, v19, v3

    .line 567
    .local v8, "toY":I
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object/from16 v23, p2

    .line 568
    check-cast v23, Landroid/widget/TextView;

    .line 575
    .local v23, "tv":Landroid/widget/TextView;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v8, v3

    .line 576
    int-to-float v3, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/DragView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v12

    mul-float/2addr v4, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    float-to-int v8, v3

    .line 577
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/DragView;->getMeasuredWidth()I

    move-result v3

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v12

    .line 577
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    .line 595
    .end local v23    # "tv":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v22

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 596
    .local v5, "fromX":I
    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 597
    .local v6, "fromY":I
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 598
    new-instance v14, Lcom/android/launcher4/DragLayer$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lcom/android/launcher4/DragLayer$1;-><init>(Lcom/android/launcher4/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 606
    .local v14, "onCompleteRunnable":Ljava/lang/Runnable;
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    .line 607
    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v13, v12

    move/from16 v16, p3

    move-object/from16 v17, p5

    .line 606
    invoke-virtual/range {v3 .. v17}, Lcom/android/launcher4/DragLayer;->animateViewIntoPosition(Lcom/android/launcher4/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 609
    return-void

    .line 579
    .end local v5    # "fromX":I
    .end local v6    # "fromY":I
    .end local v14    # "onCompleteRunnable":Ljava/lang/Runnable;
    :cond_0
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher4/FolderIcon;

    if-eqz v3, :cond_1

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/DragView;->getDragRegionTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 581
    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v8, v3

    .line 583
    int-to-float v3, v8

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v12

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    float-to-int v8, v3

    .line 584
    int-to-float v3, v8

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/DragView;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v4, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    float-to-int v8, v3

    .line 586
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/DragView;->getMeasuredWidth()I

    move-result v3

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v12

    .line 586
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    .line 588
    goto :goto_0

    .line 590
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/DragView;->getHeight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 589
    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v8, v3

    .line 592
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 591
    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    goto/16 :goto_0
.end method

.method public animateViewIntoPosition(Lcom/android/launcher4/DragView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "dragView"    # Lcom/android/launcher4/DragView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "onFinishAnimationRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 532
    const/4 v3, -0x1

    .line 533
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 532
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/DragLayer;->animateViewIntoPosition(Lcom/android/launcher4/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 534
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher4/DragView;[IFFFILjava/lang/Runnable;I)V
    .locals 19
    .param p1, "dragView"    # Lcom/android/launcher4/DragView;
    .param p2, "pos"    # [I
    .param p3, "alpha"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "animationEndStyle"    # I
    .param p7, "onFinishRunnable"    # Ljava/lang/Runnable;
    .param p8, "duration"    # I

    .prologue
    .line 520
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 521
    .local v18, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 522
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 523
    .local v5, "fromX":I
    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 525
    .local v6, "fromY":I
    const/4 v3, 0x0

    aget v7, p2, v3

    const/4 v3, 0x1

    aget v8, p2, v3

    .line 526
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    .line 527
    const/16 v17, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v9, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p7

    move/from16 v15, p6

    move/from16 v16, p8

    .line 525
    invoke-virtual/range {v3 .. v17}, Lcom/android/launcher4/DragLayer;->animateViewIntoPosition(Lcom/android/launcher4/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 528
    return-void
.end method

.method public clearAllResizeFrames()V
    .locals 3

    .prologue
    .line 482
    iget-object v1, p0, Lcom/android/launcher4/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/android/launcher4/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 487
    iget-object v1, p0, Lcom/android/launcher4/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 489
    :cond_0
    return-void

    .line 483
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/AppWidgetResizeFrame;

    .line 484
    .local v0, "frame":Lcom/android/launcher4/AppWidgetResizeFrame;
    invoke-virtual {v0}, Lcom/android/launcher4/AppWidgetResizeFrame;->commitResize()V

    .line 485
    invoke-virtual {p0, v0}, Lcom/android/launcher4/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public clearAnimatedView()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropView:Lcom/android/launcher4/DragView;

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDragController:Lcom/android/launcher4/DragController;

    iget-object v1, p0, Lcom/android/launcher4/DragLayer;->mDropView:Lcom/android/launcher4/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/DragController;->onDeferredEndDrag(Lcom/android/launcher4/DragView;)V

    .line 802
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropView:Lcom/android/launcher4/DragView;

    .line 803
    invoke-virtual {p0}, Lcom/android/launcher4/DragLayer;->invalidate()V

    .line 804
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    .line 900
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 902
    iget-boolean v7, p0, Lcom/android/launcher4/DragLayer;->mInScrollArea:Z

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher4/LauncherAppState;->isScreenLarge()Z

    move-result v7

    if-nez v7, :cond_0

    .line 903
    iget-object v7, p0, Lcom/android/launcher4/DragLayer;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v6

    .line 904
    .local v6, "workspace":Lcom/android/launcher4/Workspace;
    invoke-virtual {p0}, Lcom/android/launcher4/DragLayer;->getMeasuredWidth()I

    move-result v5

    .line 905
    .local v5, "width":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 906
    .local v0, "childRect":Landroid/graphics/Rect;
    invoke-virtual {v6, v11}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v0}, Lcom/android/launcher4/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 908
    invoke-virtual {v6}, Lcom/android/launcher4/Workspace;->getNextPage()I

    move-result v3

    .line 909
    .local v3, "page":I
    invoke-virtual {p0}, Lcom/android/launcher4/DragLayer;->isLayoutRtl()Z

    move-result v1

    .line 911
    .local v1, "isRtl":Z
    if-eqz v1, :cond_1

    add-int/lit8 v7, v3, 0x1

    :goto_0
    invoke-virtual {v6, v7}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 910
    check-cast v2, Lcom/android/launcher4/CellLayout;

    .line 913
    .local v2, "leftPage":Lcom/android/launcher4/CellLayout;
    if-eqz v1, :cond_2

    add-int/lit8 v7, v3, -0x1

    :goto_1
    invoke-virtual {v6, v7}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 912
    check-cast v4, Lcom/android/launcher4/CellLayout;

    .line 915
    .local v4, "rightPage":Lcom/android/launcher4/CellLayout;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher4/CellLayout;->getIsDragOverlapping()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 916
    iget-object v7, p0, Lcom/android/launcher4/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 917
    iget-object v9, p0, Lcom/android/launcher4/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 918
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 916
    invoke-virtual {v7, v11, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 919
    iget-object v7, p0, Lcom/android/launcher4/DragLayer;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 927
    .end local v0    # "childRect":Landroid/graphics/Rect;
    .end local v1    # "isRtl":Z
    .end local v2    # "leftPage":Lcom/android/launcher4/CellLayout;
    .end local v3    # "page":I
    .end local v4    # "rightPage":Lcom/android/launcher4/CellLayout;
    .end local v5    # "width":I
    .end local v6    # "workspace":Lcom/android/launcher4/Workspace;
    :cond_0
    :goto_2
    return-void

    .line 911
    .restart local v0    # "childRect":Landroid/graphics/Rect;
    .restart local v1    # "isRtl":Z
    .restart local v3    # "page":I
    .restart local v5    # "width":I
    .restart local v6    # "workspace":Lcom/android/launcher4/Workspace;
    :cond_1
    add-int/lit8 v7, v3, -0x1

    goto :goto_0

    .line 913
    .restart local v2    # "leftPage":Lcom/android/launcher4/CellLayout;
    :cond_2
    add-int/lit8 v7, v3, 0x1

    goto :goto_1

    .line 920
    .restart local v4    # "rightPage":Lcom/android/launcher4/CellLayout;
    :cond_3
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/launcher4/CellLayout;->getIsDragOverlapping()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 921
    iget-object v7, p0, Lcom/android/launcher4/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 922
    iget-object v8, p0, Lcom/android/launcher4/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int v8, v5, v8

    .line 923
    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 921
    invoke-virtual {v7, v8, v9, v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 924
    iget-object v7, p0, Lcom/android/launcher4/DragLayer;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDragController:Lcom/android/launcher4/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDragController:Lcom/android/launcher4/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher4/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/launcher4/DragLayer;->getChildCount()I

    move-result v3

    .line 114
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 128
    iget-object v4, p0, Lcom/android/launcher4/DragLayer;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 129
    const/4 v4, 0x1

    return v4

    .line 115
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher4/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 116
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    .local v1, "flp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v4, v0, Lcom/android/launcher4/Insettable;

    if-eqz v4, :cond_1

    move-object v4, v0

    .line 119
    check-cast v4, Lcom/android/launcher4/Insettable;

    invoke-interface {v4, p1}, Lcom/android/launcher4/Insettable;->setInsets(Landroid/graphics/Rect;)V

    .line 126
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_1
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/launcher4/DragLayer;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 122
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/launcher4/DragLayer;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 123
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/launcher4/DragLayer;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 124
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/launcher4/DragLayer;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method public getAnimatedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mDropView:Lcom/android/launcher4/DragView;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 861
    return p2
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [I

    .prologue
    .line 367
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher4/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [I
    .param p3, "includeRootScroll"    # Z

    .prologue
    .line 389
    invoke-static {p1, p0, p2, p3}, Lcom/android/launcher4/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 350
    iget-object v1, p0, Lcom/android/launcher4/DragLayer;->mTmpXY:[I

    aput v4, v1, v4

    .line 351
    iget-object v1, p0, Lcom/android/launcher4/DragLayer;->mTmpXY:[I

    aput v4, v1, v5

    .line 352
    iget-object v1, p0, Lcom/android/launcher4/DragLayer;->mTmpXY:[I

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher4/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 354
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/launcher4/DragLayer;->mTmpXY:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher4/DragLayer;->mTmpXY:[I

    aget v2, v2, v5

    .line 355
    iget-object v3, p0, Lcom/android/launcher4/DragLayer;->mTmpXY:[I

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 356
    iget-object v4, p0, Lcom/android/launcher4/DragLayer;->mTmpXY:[I

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 354
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 357
    return v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)F
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "loc"    # [I

    .prologue
    const/4 v1, 0x0

    .line 361
    aput v1, p2, v1

    .line 362
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher4/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    return v0
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 401
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 402
    .local v1, "loc":[I
    invoke-virtual {p0, v1}, Lcom/android/launcher4/DragLayer;->getLocationInWindow([I)V

    .line 403
    aget v5, v1, v8

    .line 404
    .local v5, "x":I
    aget v6, v1, v9

    .line 406
    .local v6, "y":I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 407
    aget v3, v1, v8

    .line 408
    .local v3, "vX":I
    aget v4, v1, v9

    .line 410
    .local v4, "vY":I
    sub-int v0, v3, v5

    .line 411
    .local v0, "left":I
    sub-int v2, v4, v6

    .line 412
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    .line 413
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    .line 412
    invoke-virtual {p2, v0, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 414
    return-void
.end method

.method public hasResizeFrames()Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 895
    invoke-virtual {p0}, Lcom/android/launcher4/DragLayer;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWidgetBeingResized()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/launcher4/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher4/AppWidgetResizeFrame;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mapCoordInSelfToDescendent(Landroid/view/View;[I)F
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [I

    .prologue
    .line 397
    invoke-static {p1, p0, p2}, Lcom/android/launcher4/Utilities;->mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[I)F

    move-result v0

    return v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 837
    invoke-direct {p0}, Lcom/android/launcher4/DragLayer;->updateChildIndices()V

    .line 838
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/android/launcher4/DragLayer;->updateChildIndices()V

    .line 843
    return-void
.end method

.method onEnterScrollArea(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/DragLayer;->mInScrollArea:Z

    .line 882
    invoke-virtual {p0}, Lcom/android/launcher4/DragLayer;->invalidate()V

    .line 883
    return-void
.end method

.method onExitScrollArea()V
    .locals 1

    .prologue
    .line 886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/DragLayer;->mInScrollArea:Z

    .line 887
    invoke-virtual {p0}, Lcom/android/launcher4/DragLayer;->invalidate()V

    .line 888
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 207
    iget-object v6, p0, Lcom/android/launcher4/DragLayer;->mLauncher:Lcom/android/launcher4/Launcher;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher4/DragLayer;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v6

    if-nez v6, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v4

    .line 210
    :cond_1
    iget-object v6, p0, Lcom/android/launcher4/DragLayer;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher4/Workspace;->getOpenFolder()Lcom/android/launcher4/Folder;

    move-result-object v2

    .line 211
    .local v2, "currentFolder":Lcom/android/launcher4/Folder;
    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher4/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 215
    const-string v7, "accessibility"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 216
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 219
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 233
    :goto_1
    :pswitch_1
    invoke-direct {p0, v2, p1}, Lcom/android/launcher4/DragLayer;->isEventOverFolder(Lcom/android/launcher4/Folder;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 234
    .local v3, "isOverFolder":Z
    if-nez v3, :cond_4

    iget-boolean v6, p0, Lcom/android/launcher4/DragLayer;->mHoverPointClosesFolder:Z

    if-nez v6, :cond_4

    .line 236
    invoke-virtual {v2}, Lcom/android/launcher4/Folder;->isEditingName()Z

    move-result v4

    .line 235
    invoke-direct {p0, v4}, Lcom/android/launcher4/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 237
    iput-boolean v5, p0, Lcom/android/launcher4/DragLayer;->mHoverPointClosesFolder:Z

    move v4, v5

    .line 238
    goto :goto_0

    .line 221
    .end local v3    # "isOverFolder":Z
    :pswitch_2
    invoke-direct {p0, v2, p1}, Lcom/android/launcher4/DragLayer;->isEventOverFolder(Lcom/android/launcher4/Folder;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 222
    .restart local v3    # "isOverFolder":Z
    if-nez v3, :cond_2

    .line 224
    invoke-virtual {v2}, Lcom/android/launcher4/Folder;->isEditingName()Z

    move-result v4

    .line 223
    invoke-direct {p0, v4}, Lcom/android/launcher4/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 225
    iput-boolean v5, p0, Lcom/android/launcher4/DragLayer;->mHoverPointClosesFolder:Z

    move v4, v5

    .line 226
    goto :goto_0

    .line 227
    :cond_2
    if-eqz v3, :cond_3

    .line 228
    iput-boolean v4, p0, Lcom/android/launcher4/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_1

    :cond_3
    move v4, v5

    .line 230
    goto :goto_0

    .line 239
    :cond_4
    if-eqz v3, :cond_5

    .line 240
    iput-boolean v4, p0, Lcom/android/launcher4/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_0

    :cond_5
    move v4, v5

    .line 242
    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 190
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0, p1, v1}, Lcom/android/launcher4/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 202
    :goto_0
    return v1

    .line 194
    :cond_0
    if-eq v0, v1, :cond_1

    .line 195
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/android/launcher4/DragLayer;->mTouchCompleteListener:Lcom/android/launcher4/DragLayer$TouchCompleteListener;

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/android/launcher4/DragLayer;->mTouchCompleteListener:Lcom/android/launcher4/DragLayer$TouchCompleteListener;

    invoke-interface {v1}, Lcom/android/launcher4/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 199
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher4/DragLayer;->mTouchCompleteListener:Lcom/android/launcher4/DragLayer$TouchCompleteListener;

    .line 201
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher4/DragLayer;->clearAllResizeFrames()V

    .line 202
    iget-object v1, p0, Lcom/android/launcher4/DragLayer;->mDragController:Lcom/android/launcher4/DragController;

    invoke-virtual {v1, p1}, Lcom/android/launcher4/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 466
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 467
    invoke-virtual {p0}, Lcom/android/launcher4/DragLayer;->getChildCount()I

    move-result v1

    .line 468
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 479
    return-void

    .line 469
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/launcher4/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 471
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 470
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 472
    .local v2, "flp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v5, v2, Lcom/android/launcher4/DragLayer$LayoutParams;

    if-eqz v5, :cond_1

    move-object v4, v2

    .line 473
    check-cast v4, Lcom/android/launcher4/DragLayer$LayoutParams;

    .line 474
    .local v4, "lp":Lcom/android/launcher4/DragLayer$LayoutParams;
    iget-boolean v5, v4, Lcom/android/launcher4/DragLayer$LayoutParams;->customPosition:Z

    if-eqz v5, :cond_1

    .line 475
    iget v5, v4, Lcom/android/launcher4/DragLayer$LayoutParams;->x:I

    iget v6, v4, Lcom/android/launcher4/DragLayer$LayoutParams;->y:I

    iget v7, v4, Lcom/android/launcher4/DragLayer$LayoutParams;->x:I

    iget v8, v4, Lcom/android/launcher4/DragLayer$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/android/launcher4/DragLayer$LayoutParams;->y:I

    iget v9, v4, Lcom/android/launcher4/DragLayer$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 468
    .end local v4    # "lp":Lcom/android/launcher4/DragLayer$LayoutParams;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/launcher4/DragLayer;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher4/Workspace;->getOpenFolder()Lcom/android/launcher4/Folder;

    move-result-object v0

    .line 268
    .local v0, "currentFolder":Lcom/android/launcher4/Folder;
    if-eqz v0, :cond_1

    .line 269
    if-ne p1, v0, :cond_0

    .line 270
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 277
    :goto_0
    return v1

    .line 275
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 277
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 304
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 305
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 307
    .local v3, "y":I
    if-nez v0, :cond_1

    .line 308
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/android/launcher4/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 336
    :cond_0
    :goto_0
    return v4

    .line 311
    :cond_1
    if-eq v0, v4, :cond_2

    .line 312
    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    .line 313
    :cond_2
    iget-object v5, p0, Lcom/android/launcher4/DragLayer;->mTouchCompleteListener:Lcom/android/launcher4/DragLayer$TouchCompleteListener;

    if-eqz v5, :cond_3

    .line 314
    iget-object v5, p0, Lcom/android/launcher4/DragLayer;->mTouchCompleteListener:Lcom/android/launcher4/DragLayer$TouchCompleteListener;

    invoke-interface {v5}, Lcom/android/launcher4/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 316
    :cond_3
    iput-object v8, p0, Lcom/android/launcher4/DragLayer;->mTouchCompleteListener:Lcom/android/launcher4/DragLayer$TouchCompleteListener;

    .line 319
    :cond_4
    iget-object v5, p0, Lcom/android/launcher4/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher4/AppWidgetResizeFrame;

    if-eqz v5, :cond_5

    .line 320
    const/4 v1, 0x1

    .line 321
    packed-switch v0, :pswitch_data_0

    .line 334
    :cond_5
    :goto_1
    if-nez v1, :cond_0

    .line 336
    iget-object v4, p0, Lcom/android/launcher4/DragLayer;->mDragController:Lcom/android/launcher4/DragController;

    invoke-virtual {v4, p1}, Lcom/android/launcher4/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 323
    :pswitch_0
    iget-object v5, p0, Lcom/android/launcher4/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher4/AppWidgetResizeFrame;

    iget v6, p0, Lcom/android/launcher4/DragLayer;->mXDown:I

    sub-int v6, v2, v6

    .line 324
    iget v7, p0, Lcom/android/launcher4/DragLayer;->mYDown:I

    sub-int v7, v3, v7

    .line 323
    invoke-virtual {v5, v6, v7}, Lcom/android/launcher4/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_1

    .line 328
    :pswitch_1
    iget-object v5, p0, Lcom/android/launcher4/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher4/AppWidgetResizeFrame;

    iget v6, p0, Lcom/android/launcher4/DragLayer;->mXDown:I

    sub-int v6, v2, v6

    .line 329
    iget v7, p0, Lcom/android/launcher4/DragLayer;->mYDown:I

    sub-int v7, v3, v7

    .line 328
    invoke-virtual {v5, v6, v7}, Lcom/android/launcher4/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 330
    iget-object v5, p0, Lcom/android/launcher4/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher4/AppWidgetResizeFrame;

    invoke-virtual {v5}, Lcom/android/launcher4/AppWidgetResizeFrame;->onTouchUp()V

    .line 331
    iput-object v8, p0, Lcom/android/launcher4/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher4/AppWidgetResizeFrame;

    goto :goto_1

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTouchCompleteListener(Lcom/android/launcher4/DragLayer$TouchCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher4/DragLayer$TouchCompleteListener;

    .prologue
    .line 930
    iput-object p1, p0, Lcom/android/launcher4/DragLayer;->mTouchCompleteListener:Lcom/android/launcher4/DragLayer$TouchCompleteListener;

    .line 931
    return-void
.end method

.method public setup(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/DragController;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;
    .param p2, "controller"    # Lcom/android/launcher4/DragController;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/launcher4/DragLayer;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 102
    iput-object p2, p0, Lcom/android/launcher4/DragLayer;->mDragController:Lcom/android/launcher4/DragController;

    .line 103
    return-void
.end method
