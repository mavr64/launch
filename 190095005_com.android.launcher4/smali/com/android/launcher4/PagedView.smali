.class public abstract Lcom/android/launcher4/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/PagedView$FlingAlongVectorAnimatorUpdateListener;,
        Lcom/android/launcher4/PagedView$LayoutParams;,
        Lcom/android/launcher4/PagedView$PageSwitchListener;,
        Lcom/android/launcher4/PagedView$SavedState;,
        Lcom/android/launcher4/PagedView$ScrollInterpolator;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field private static final ANIM_TAG_KEY:I = 0x64

.field static final AUTOMATIC_PAGE_SPACING:I = -0x1

.field private static final DEBUG:Z = false

.field private static final DISABLE_FLING_TO_DELETE:Z = true

.field private static final DISABLE_TOUCH_INTERACTION:Z = false

.field private static final DISABLE_TOUCH_SIDE_PAGES:Z = true

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field public static final INVALID_RESTORE_PAGE:I = -0x3e9

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field protected static final PAGE_SNAP_ANIMATION_DURATION:I = 0x2ee

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field protected static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "PagedView"

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REORDERING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

.field private DRAG_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FRICTION:F

.field private FLING_TO_DELETE_MAX_FLING_DEGREES:F

.field private NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

.field private REORDERING_DROP_REPOSITION_DURATION:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field private REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

.field protected REORDERING_ZOOM_IN_OUT_DURATION:I

.field protected mActivePointerId:I

.field protected mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field private mAllowPagedViewAnimations:Z

.field private mAltTmpRect:Landroid/graphics/Rect;

.field private mAutoComputePageSpacing:Z

.field private mCancelTap:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCenterPagesVertically:Z

.field protected mChildCountOnLastLayout:I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field protected mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field protected mDeferScrollUpdate:Z

.field private mDeferringForDelete:Z

.field private mDeleteDropTarget:Landroid/view/View;

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mDragViewBaselineLeft:F

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstChildLeft:I

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mFlingToDeleteThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field private mFreeScroll:Z

.field private mFreeScrollMaxScrollX:I

.field private mFreeScrollMinScrollX:I

.field protected final mInsets:Landroid/graphics/Rect;

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field private mIsReordering:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field protected mNextPage:I

.field private mNormalChildHeight:I

.field protected mOverScrollX:I

.field private mPageIndicator:Lcom/android/launcher4/PageIndicator;

.field private mPageIndicatorViewId:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutPaddingBottom:I

.field protected mPageLayoutPaddingLeft:I

.field protected mPageLayoutPaddingRight:I

.field protected mPageLayoutPaddingTop:I

.field protected mPageLayoutWidthGap:I

.field private mPageScrolls:[I

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/android/launcher4/PagedView$PageSwitchListener;

.field private mPagingTouchSlop:I

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mRecomputePageSpacing:Z

.field private mReorderingStarted:Z

.field protected mRestorePage:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field private mTmpIntPoint:[I

.field private mTmpInvMatrix:Landroid/graphics/Matrix;

.field private mTmpPoint:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopAlignPageWhenShrinkingForBouncer:Z

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field private mUseMinScale:Z

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field protected mZoomInOutAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 303
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v6, 0xfa

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 306
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    iput-boolean v2, p0, Lcom/android/launcher4/PagedView;->mFreeScroll:Z

    .line 113
    iput v4, p0, Lcom/android/launcher4/PagedView;->mFreeScrollMinScrollX:I

    .line 114
    iput v4, p0, Lcom/android/launcher4/PagedView;->mFreeScrollMaxScrollX:I

    .line 126
    iput-boolean v3, p0, Lcom/android/launcher4/PagedView;->mFirstLayout:Z

    .line 130
    const/16 v1, -0x3e9

    iput v1, p0, Lcom/android/launcher4/PagedView;->mRestorePage:I

    .line 133
    iput v4, p0, Lcom/android/launcher4/PagedView;->mNextPage:I

    .line 148
    iput v4, p0, Lcom/android/launcher4/PagedView;->mLastScreenCenter:I

    .line 162
    iput v2, p0, Lcom/android/launcher4/PagedView;->mTouchState:I

    .line 163
    iput-boolean v2, p0, Lcom/android/launcher4/PagedView;->mForceScreenScrolled:Z

    .line 177
    iput v2, p0, Lcom/android/launcher4/PagedView;->mCellCountX:I

    .line 178
    iput v2, p0, Lcom/android/launcher4/PagedView;->mCellCountY:I

    .line 180
    iput-boolean v3, p0, Lcom/android/launcher4/PagedView;->mAllowOverScroll:Z

    .line 182
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    .line 194
    iput v4, p0, Lcom/android/launcher4/PagedView;->mActivePointerId:I

    .line 201
    iput-boolean v3, p0, Lcom/android/launcher4/PagedView;->mContentIsRefreshable:Z

    .line 204
    iput-boolean v2, p0, Lcom/android/launcher4/PagedView;->mFadeInAdjacentScreens:Z

    .line 209
    iput-boolean v3, p0, Lcom/android/launcher4/PagedView;->mUsePagingTouchSlop:Z

    .line 214
    iput-boolean v2, p0, Lcom/android/launcher4/PagedView;->mDeferScrollUpdate:Z

    .line 215
    iput-boolean v2, p0, Lcom/android/launcher4/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 217
    iput-boolean v2, p0, Lcom/android/launcher4/PagedView;->mIsPageMoving:Z

    .line 220
    iput-boolean v2, p0, Lcom/android/launcher4/PagedView;->mIsDataReady:Z

    .line 222
    iput-boolean v3, p0, Lcom/android/launcher4/PagedView;->mAllowLongPress:Z

    .line 227
    iput-boolean v3, p0, Lcom/android/launcher4/PagedView;->mAllowPagedViewAnimations:Z

    .line 232
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 238
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/launcher4/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    .line 239
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/launcher4/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 240
    iput v6, p0, Lcom/android/launcher4/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    .line 241
    const/16 v1, 0x50

    iput v1, p0, Lcom/android/launcher4/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    .line 242
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/launcher4/PagedView;->mMinScale:F

    .line 243
    iput-boolean v2, p0, Lcom/android/launcher4/PagedView;->mUseMinScale:Z

    .line 247
    iput v4, p0, Lcom/android/launcher4/PagedView;->mSidePageHoverIndex:I

    .line 250
    iput-boolean v2, p0, Lcom/android/launcher4/PagedView;->mReorderingStarted:Z

    .line 257
    iput v5, p0, Lcom/android/launcher4/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    .line 262
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    .line 263
    new-array v1, v5, [F

    iput-object v1, p0, Lcom/android/launcher4/PagedView;->mTmpPoint:[F

    .line 264
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/android/launcher4/PagedView;->mTmpIntPoint:[I

    .line 265
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/PagedView;->mTmpRect:Landroid/graphics/Rect;

    .line 266
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    .line 269
    const/16 v1, 0x15e

    iput v1, p0, Lcom/android/launcher4/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    .line 270
    const v1, 0x3d0f5c29    # 0.035f

    iput v1, p0, Lcom/android/launcher4/PagedView;->FLING_TO_DELETE_FRICTION:F

    .line 273
    const/high16 v1, 0x42820000    # 65.0f

    iput v1, p0, Lcom/android/launcher4/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    .line 274
    const/16 v1, -0x578

    iput v1, p0, Lcom/android/launcher4/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 276
    iput-boolean v2, p0, Lcom/android/launcher4/PagedView;->mDeferringForDelete:Z

    .line 277
    iput v6, p0, Lcom/android/launcher4/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    .line 278
    const/16 v1, 0x15e

    iput v1, p0, Lcom/android/launcher4/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    .line 283
    iput-boolean v2, p0, Lcom/android/launcher4/PagedView;->mAutoComputePageSpacing:Z

    .line 284
    iput-boolean v2, p0, Lcom/android/launcher4/PagedView;->mRecomputePageSpacing:Z

    .line 287
    iput-boolean v2, p0, Lcom/android/launcher4/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 289
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/PagedView;->mInsets:Landroid/graphics/Rect;

    .line 309
    sget-object v1, Lcom/android/launcher4/R$styleable;->PagedView:[I

    .line 308
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 311
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedView;->setPageSpacing(I)V

    .line 312
    iget v1, p0, Lcom/android/launcher4/PagedView;->mPageSpacing:I

    if-gez v1, :cond_0

    .line 313
    iput-boolean v3, p0, Lcom/android/launcher4/PagedView;->mRecomputePageSpacing:Z

    iput-boolean v3, p0, Lcom/android/launcher4/PagedView;->mAutoComputePageSpacing:Z

    .line 315
    :cond_0
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher4/PagedView;->mPageLayoutPaddingTop:I

    .line 318
    const/4 v1, 0x3

    .line 317
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher4/PagedView;->mPageLayoutPaddingBottom:I

    .line 320
    const/4 v1, 0x4

    .line 319
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher4/PagedView;->mPageLayoutPaddingLeft:I

    .line 322
    const/4 v1, 0x5

    .line 321
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher4/PagedView;->mPageLayoutPaddingRight:I

    .line 323
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher4/PagedView;->mPageLayoutWidthGap:I

    .line 325
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher4/PagedView;->mPageLayoutHeightGap:I

    .line 328
    const/4 v1, 0x7

    .line 327
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher4/PagedView;->mPageIndicatorViewId:I

    .line 329
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 331
    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 332
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->init()V

    .line 333
    return-void
.end method

.method static synthetic access$1(Lcom/android/launcher4/PagedView;I)V
    .locals 0

    .prologue
    .line 247
    iput p1, p0, Lcom/android/launcher4/PagedView;->mSidePageHoverIndex:I

    return-void
.end method

.method static synthetic access$2(Lcom/android/launcher4/PagedView;)Lcom/android/launcher4/PageIndicator;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/launcher4/PagedView;)V
    .locals 0

    .prologue
    .line 2636
    invoke-direct {p0}, Lcom/android/launcher4/PagedView;->onPostReorderingAnimationCompleted()V

    return-void
.end method

.method static synthetic access$4(Lcom/android/launcher4/PagedView;)I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/android/launcher4/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    return v0
.end method

.method static synthetic access$5(Lcom/android/launcher4/PagedView;Z)V
    .locals 0

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/android/launcher4/PagedView;->mDeferringForDelete:Z

    return-void
.end method

.method static synthetic access$6(Lcom/android/launcher4/PagedView;)I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/android/launcher4/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    return v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2197
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2199
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2200
    return-void
.end method

.method private createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "dragView"    # Landroid/view/View;

    .prologue
    .line 2789
    new-instance v0, Lcom/android/launcher4/PagedView$5;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher4/PagedView$5;-><init>(Lcom/android/launcher4/PagedView;Landroid/view/View;)V

    return-object v0
.end method

.method private isFlingingToDelete()Landroid/graphics/PointF;
    .locals 8

    .prologue
    .line 2723
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2724
    .local v0, "config":Landroid/view/ViewConfiguration;
    iget-object v4, p0, Lcom/android/launcher4/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    .line 2725
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    int-to-float v6, v6

    .line 2724
    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2727
    iget-object v4, p0, Lcom/android/launcher4/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    iget v5, p0, Lcom/android/launcher4/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 2730
    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/launcher4/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    .line 2731
    iget-object v5, p0, Lcom/android/launcher4/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    .line 2730
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2732
    .local v3, "vel":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2734
    .local v2, "upVec":Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 2735
    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v6

    mul-float/2addr v5, v6

    .line 2734
    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 2736
    .local v1, "theta":F
    float-to-double v4, v1

    iget v6, p0, Lcom/android/launcher4/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 2740
    .end local v1    # "theta":F
    .end local v2    # "upVec":Landroid/graphics/PointF;
    .end local v3    # "vel":Landroid/graphics/PointF;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isHoveringOverDeleteDropTarget(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 2945
    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mDeleteDropTarget:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2946
    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2947
    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mDeleteDropTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2948
    .local v0, "parent":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2949
    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2951
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mDeleteDropTarget:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2952
    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2953
    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 2955
    .end local v0    # "parent":Landroid/view/View;
    :cond_1
    return v1
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1429
    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher4/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher4/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1428
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1430
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private onDropToDelete()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2963
    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    .line 2965
    .local v3, "dragView":Landroid/view/View;
    const/4 v7, 0x0

    .line 2966
    .local v7, "toScale":F
    const/4 v6, 0x0

    .line 2969
    .local v6, "toAlpha":F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2970
    .local v2, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2971
    .local v4, "motionAnim":Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2972
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    .line 2973
    const-string v9, "scaleX"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    .line 2974
    const-string v9, "scaleY"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v11

    .line 2972
    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2975
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2977
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2978
    .local v0, "alphaAnim":Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2979
    new-array v8, v11, [Landroid/animation/Animator;

    const-string v9, "alpha"

    new-array v10, v11, [F

    .line 2980
    aput v13, v10, v12

    .line 2979
    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2981
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2983
    invoke-direct {p0, v3}, Lcom/android/launcher4/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v5

    .line 2985
    .local v5, "onAnimationEndRunnable":Ljava/lang/Runnable;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2986
    .local v1, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2987
    iget v8, p0, Lcom/android/launcher4/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2988
    new-instance v8, Lcom/android/launcher4/PagedView$8;

    invoke-direct {v8, p0, v5}, Lcom/android/launcher4/PagedView$8;-><init>(Lcom/android/launcher4/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2993
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2995
    iput-boolean v11, p0, Lcom/android/launcher4/PagedView;->mDeferringForDelete:Z

    .line 2996
    return-void
.end method

.method private onPostReorderingAnimationCompleted()V
    .locals 1

    .prologue
    .line 2638
    iget v0, p0, Lcom/android/launcher4/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher4/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2639
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2640
    iget v0, p0, Lcom/android/launcher4/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_0

    .line 2641
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2644
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 2212
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2213
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/launcher4/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2217
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2218
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher4/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    .line 2219
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher4/PagedView;->mLastMotionY:F

    .line 2220
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher4/PagedView;->mLastMotionXRemainder:F

    .line 2221
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher4/PagedView;->mActivePointerId:I

    .line 2222
    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2223
    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2226
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .param p1, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1663
    sub-float/2addr p1, v1

    .line 1664
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2204
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2205
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2208
    :cond_0
    return-void
.end method

.method private removeMarkerForView(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    iget-boolean v1, p0, Lcom/android/launcher4/PagedView;->mAllowPagedViewAnimations:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher4/PageIndicator;->removeMarker(IZ)V

    .line 1139
    :cond_0
    return-void
.end method

.method private resetTouchState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2152
    invoke-direct {p0}, Lcom/android/launcher4/PagedView;->releaseVelocityTracker()V

    .line 2153
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->endReordering()V

    .line 2154
    iput-boolean v0, p0, Lcom/android/launcher4/PagedView;->mCancelTap:Z

    .line 2155
    iput v0, p0, Lcom/android/launcher4/PagedView;->mTouchState:I

    .line 2156
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher4/PagedView;->mActivePointerId:I

    .line 2157
    return-void
.end method

.method private sendScrollAccessibilityEvent()V
    .locals 5

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 716
    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 715
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 717
    .local v1, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 719
    const/16 v3, 0x1000

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 720
    .local v2, "ev":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 721
    iget v3, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 724
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getNextPage()I

    move-result v3

    iget v4, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    if-lt v3, v4, :cond_1

    .line 725
    const/16 v0, 0x1000

    .line 730
    .local v0, "action":I
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 731
    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 733
    .end local v0    # "action":I
    .end local v2    # "ev":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void

    .line 727
    .restart local v2    # "ev":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1
    const/16 v0, 0x2000

    .restart local v0    # "action":I
    goto :goto_0
.end method

.method private setEnableFreeScroll(ZI)V
    .locals 4
    .param p1, "freeScroll"    # Z
    .param p2, "snapPage"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1753
    iput-boolean p1, p0, Lcom/android/launcher4/PagedView;->mFreeScroll:Z

    .line 1755
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1756
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageNearestToCenterOfScreen()I

    move-result p2

    .line 1759
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher4/PagedView;->mFreeScroll:Z

    if-nez v2, :cond_2

    .line 1760
    invoke-virtual {p0, p2}, Lcom/android/launcher4/PagedView;->snapToPage(I)V

    .line 1771
    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/launcher4/PagedView;->setEnableOverscroll(Z)V

    .line 1772
    return-void

    .line 1762
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->updateFreescrollBounds()V

    .line 1763
    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedView;->getOverviewModePages([I)V

    .line 1764
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getCurrentPage()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_3

    .line 1765
    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedView;->setCurrentPage(I)V

    goto :goto_0

    .line 1766
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getCurrentPage()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v1

    if-le v2, v3, :cond_1

    .line 1767
    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedView;->setCurrentPage(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1771
    goto :goto_1
.end method

.method private setEnableOverscroll(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1775
    iput-boolean p1, p0, Lcom/android/launcher4/PagedView;->mAllowOverScroll:Z

    .line 1776
    return-void
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1668
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v2

    .line 1672
    .local v2, "screenSize":I
    const/high16 v3, 0x40000000    # 2.0f

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1674
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1691
    :goto_0
    return-void

    .line 1678
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1679
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1682
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1683
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1684
    iput v1, p0, Lcom/android/launcher4/PagedView;->mOverScrollX:I

    .line 1685
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1690
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->invalidate()V

    goto :goto_0

    .line 1687
    :cond_2
    iget v3, p0, Lcom/android/launcher4/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher4/PagedView;->mOverScrollX:I

    .line 1688
    iget v3, p0, Lcom/android/launcher4/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1344
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1345
    iget v0, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1348
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 1349
    iget v0, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 1350
    iget v0, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1359
    :cond_1
    :goto_0
    return-void

    .line 1353
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 1354
    iget v0, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1355
    iget v0, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public addFullScreenPage(Landroid/view/View;)V
    .locals 2
    .param p1, "page"    # Landroid/view/View;

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->generateDefaultLayoutParams()Lcom/android/launcher4/PagedView$LayoutParams;

    move-result-object v0

    .line 812
    .local v0, "lp":Lcom/android/launcher4/PagedView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher4/PagedView$LayoutParams;->isFullScreenPage:Z

    .line 813
    const/4 v1, 0x0

    invoke-super {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 814
    return-void
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 2434
    iget-boolean v0, p0, Lcom/android/launcher4/PagedView;->mAllowLongPress:Z

    return v0
.end method

.method animateDragViewToOriginalPosition()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2606
    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2607
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2608
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget v1, p0, Lcom/android/launcher4/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2609
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    .line 2610
    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 2611
    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    .line 2612
    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 2613
    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2609
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2614
    new-instance v1, Lcom/android/launcher4/PagedView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher4/PagedView$2;-><init>(Lcom/android/launcher4/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2620
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2622
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 1602
    iget-boolean v1, p0, Lcom/android/launcher4/PagedView;->mAllowLongPress:Z

    if-eqz v1, :cond_0

    .line 1607
    iget v1, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1608
    .local v0, "currentPage":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1609
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1612
    .end local v0    # "currentPage":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->computeScrollHelper()Z

    .line 784
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 738
    iget-object v6, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 740
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollX()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollY()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 742
    iget v5, p0, Lcom/android/launcher4/PagedView;->mOverScrollX:I

    iget-object v6, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 743
    :cond_0
    iget-boolean v5, p0, Lcom/android/launcher4/PagedView;->mFreeScroll:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScaleX()F

    move-result v1

    .line 744
    .local v1, "scaleX":F
    :goto_0
    iget-object v5, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v1

    mul-float/2addr v3, v5

    float-to-int v2, v3

    .line 745
    .local v2, "scrollX":I
    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher4/PagedView;->scrollTo(II)V

    .line 747
    .end local v1    # "scaleX":F
    .end local v2    # "scrollX":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->invalidate()V

    move v3, v4

    .line 778
    :goto_1
    return v3

    :cond_2
    move v1, v3

    .line 743
    goto :goto_0

    .line 749
    :cond_3
    iget v3, p0, Lcom/android/launcher4/PagedView;->mNextPage:I

    if-eq v3, v7, :cond_7

    .line 750
    invoke-direct {p0}, Lcom/android/launcher4/PagedView;->sendScrollAccessibilityEvent()V

    .line 752
    iget v3, p0, Lcom/android/launcher4/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    .line 753
    iput v7, p0, Lcom/android/launcher4/PagedView;->mNextPage:I

    .line 754
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->notifyPageSwitchListener()V

    .line 757
    iget-boolean v3, p0, Lcom/android/launcher4/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v3, :cond_4

    .line 758
    iget v3, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedView;->loadAssociatedPages(I)V

    .line 759
    iput-boolean v5, p0, Lcom/android/launcher4/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 765
    :cond_4
    iget v3, p0, Lcom/android/launcher4/PagedView;->mTouchState:I

    if-nez v3, :cond_5

    .line 766
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->pageEndMoving()V

    .line 769
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher4/PagedView;->onPostReorderingAnimationCompleted()V

    .line 770
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 771
    const-string v5, "accessibility"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 770
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 772
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 774
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_6
    move v3, v4

    .line 776
    goto :goto_1

    .end local v0    # "am":Landroid/view/accessibility/AccessibilityManager;
    :cond_7
    move v3, v5

    .line 778
    goto :goto_1
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1694
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v2

    .line 1696
    .local v2, "screenSize":I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1698
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1717
    :goto_0
    return-void

    .line 1700
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher4/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1703
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1704
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1707
    :cond_1
    const v3, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v0

    .line 1708
    int-to-float v4, v2

    .line 1707
    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1709
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1710
    iput v1, p0, Lcom/android/launcher4/PagedView;->mOverScrollX:I

    .line 1711
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1716
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->invalidate()V

    goto :goto_0

    .line 1713
    :cond_2
    iget v3, p0, Lcom/android/launcher4/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher4/PagedView;->mOverScrollX:I

    .line 1714
    iget v3, p0, Lcom/android/launcher4/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1555
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher4/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1556
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1564
    iget v10, p0, Lcom/android/launcher4/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1565
    .local v0, "pointerIndex":I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_1

    .line 1595
    :cond_0
    :goto_0
    return-void

    .line 1570
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1571
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1572
    .local v6, "y":F
    float-to-int v10, v2

    float-to-int v11, v6

    invoke-direct {p0, v10, v11}, Lcom/android/launcher4/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1575
    iget v10, p0, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 1576
    .local v3, "xDiff":I
    iget v10, p0, Lcom/android/launcher4/PagedView;->mLastMotionY:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v7, v10

    .line 1578
    .local v7, "yDiff":I
    iget v10, p0, Lcom/android/launcher4/PagedView;->mTouchSlop:I

    int-to-float v10, v10

    mul-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1579
    .local v1, "touchSlop":I
    iget v10, p0, Lcom/android/launcher4/PagedView;->mPagingTouchSlop:I

    if-le v3, v10, :cond_4

    move v5, v9

    .line 1580
    .local v5, "xPaged":Z
    :goto_1
    if-le v3, v1, :cond_5

    move v4, v9

    .line 1581
    .local v4, "xMoved":Z
    :goto_2
    if-le v7, v1, :cond_2

    move v8, v9

    .line 1583
    .local v8, "yMoved":Z
    :cond_2
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-eqz v8, :cond_0

    .line 1584
    :cond_3
    iget-boolean v10, p0, Lcom/android/launcher4/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v10, :cond_6

    if-eqz v5, :cond_0

    .line 1586
    :goto_3
    iput v9, p0, Lcom/android/launcher4/PagedView;->mTouchState:I

    .line 1587
    iget v9, p0, Lcom/android/launcher4/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher4/PagedView;->mTotalMotionX:F

    .line 1588
    iput v2, p0, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    .line 1589
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/launcher4/PagedView;->mLastMotionXRemainder:F

    .line 1590
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportOffsetX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollX()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/android/launcher4/PagedView;->mTouchX:F

    .line 1591
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    long-to-float v9, v10

    const v10, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher4/PagedView;->mSmoothingTime:F

    .line 1592
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->pageBeginMoving()V

    goto :goto_0

    .end local v4    # "xMoved":Z
    .end local v5    # "xPaged":Z
    .end local v8    # "yMoved":Z
    :cond_4
    move v5, v8

    .line 1579
    goto :goto_1

    .restart local v5    # "xPaged":Z
    :cond_5
    move v4, v8

    .line 1580
    goto :goto_2

    .line 1584
    .restart local v4    # "xMoved":Z
    .restart local v8    # "yMoved":Z
    :cond_6
    if-eqz v4, :cond_0

    goto :goto_3
.end method

.method protected disableFreeScroll(I)V
    .locals 1
    .param p1, "snapPage"    # I

    .prologue
    .line 1738
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/launcher4/PagedView;->setEnableFreeScroll(ZI)V

    .line 1739
    return-void
.end method

.method protected disablePagedViewAnimations()V
    .locals 1

    .prologue
    .line 1103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/PagedView;->mAllowPagedViewAnimations:Z

    .line 1104
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1245
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v9

    div-int/lit8 v2, v9, 0x2

    .line 1249
    .local v2, "halfScreenSize":I
    iget v9, p0, Lcom/android/launcher4/PagedView;->mOverScrollX:I

    add-int v7, v9, v2

    .line 1251
    .local v7, "screenCenter":I
    iget v9, p0, Lcom/android/launcher4/PagedView;->mLastScreenCenter:I

    if-ne v7, v9, :cond_0

    iget-boolean v9, p0, Lcom/android/launcher4/PagedView;->mForceScreenScrolled:Z

    if-eqz v9, :cond_1

    .line 1255
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher4/PagedView;->mForceScreenScrolled:Z

    .line 1256
    invoke-virtual {p0, v7}, Lcom/android/launcher4/PagedView;->screenScrolled(I)V

    .line 1257
    iput v7, p0, Lcom/android/launcher4/PagedView;->mLastScreenCenter:I

    .line 1262
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v5

    .line 1263
    .local v5, "pageCount":I
    if-lez v5, :cond_3

    .line 1264
    iget-object v9, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lcom/android/launcher4/PagedView;->getVisiblePages([I)V

    .line 1265
    iget-object v9, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 1266
    .local v4, "leftScreen":I
    iget-object v9, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 1267
    .local v6, "rightScreen":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_3

    const/4 v9, -0x1

    if-eq v6, v9, :cond_3

    .line 1268
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 1270
    .local v0, "drawingTime":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1271
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollX()I

    move-result v11

    .line 1272
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    .line 1273
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    .line 1271
    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1276
    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-gez v3, :cond_4

    .line 1286
    iget-object v9, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    if-eqz v9, :cond_2

    .line 1287
    iget-object v9, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v9, v0, v1}, Lcom/android/launcher4/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 1290
    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher4/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 1291
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1294
    .end local v0    # "drawingTime":J
    .end local v3    # "i":I
    .end local v4    # "leftScreen":I
    .end local v6    # "rightScreen":I
    :cond_3
    return-void

    .line 1277
    .restart local v0    # "drawingTime":J
    .restart local v3    # "i":I
    .restart local v4    # "leftScreen":I
    .restart local v6    # "rightScreen":I
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 1278
    .local v8, "v":Landroid/view/View;
    iget-object v9, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    if-ne v8, v9, :cond_6

    .line 1276
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1280
    :cond_6
    iget-boolean v9, p0, Lcom/android/launcher4/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v9, :cond_7

    .line 1281
    if-gt v4, v3, :cond_5

    if-gt v3, v6, :cond_5

    invoke-virtual {p0, v8}, Lcom/android/launcher4/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1282
    :cond_7
    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/android/launcher4/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 1326
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1327
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 1328
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedView;->snapToPage(I)V

    .line 1337
    :goto_0
    return v0

    .line 1331
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1332
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1333
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1337
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 2297
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 2298
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 2299
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected enableFreeScroll()V
    .locals 2

    .prologue
    .line 1734
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher4/PagedView;->setEnableFreeScroll(ZI)V

    .line 1735
    return-void
.end method

.method protected enablePagedViewAnimations()V
    .locals 1

    .prologue
    .line 1098
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/PagedView;->mAllowPagedViewAnimations:Z

    .line 1100
    return-void
.end method

.method endReordering()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2688
    iget-boolean v1, p0, Lcom/android/launcher4/PagedView;->mReorderingStarted:Z

    if-nez v1, :cond_1

    .line 2717
    :cond_0
    :goto_0
    return-void

    .line 2690
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher4/PagedView;->mReorderingStarted:Z

    .line 2695
    new-instance v0, Lcom/android/launcher4/PagedView$3;

    invoke-direct {v0, p0}, Lcom/android/launcher4/PagedView$3;-><init>(Lcom/android/launcher4/PagedView;)V

    .line 2701
    .local v0, "onCompleteRunnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/android/launcher4/PagedView;->mDeferringForDelete:Z

    if-nez v1, :cond_0

    .line 2702
    new-instance v1, Lcom/android/launcher4/PagedView$4;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher4/PagedView$4;-><init>(Lcom/android/launcher4/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/launcher4/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2709
    iget v1, p0, Lcom/android/launcher4/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    iput v1, p0, Lcom/android/launcher4/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2711
    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher4/PagedView;->snapToPage(II)V

    .line 2713
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->animateDragViewToOriginalPosition()V

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 1370
    iget v3, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1371
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 1373
    .local v2, "v":Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 1374
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1384
    :cond_0
    return-void

    .line 1377
    :cond_1
    if-eq v2, p0, :cond_0

    .line 1380
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1381
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1382
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 1383
    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->generateDefaultLayoutParams()Lcom/android/launcher4/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/launcher4/PagedView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 806
    new-instance v0, Lcom/android/launcher4/PagedView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher4/PagedView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 2526
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 2531
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v0

    .line 2533
    .local v0, "count":I
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method protected getBoundedScrollProgress(ILandroid/view/View;I)F
    .locals 2
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    .line 1615
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 1617
    .local v0, "halfScreenSize":I
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollX()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1618
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1620
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher4/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v1

    return v1
.end method

.method protected getChildOffset(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1177
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 1178
    :cond_0
    const/4 v0, 0x0

    .line 1182
    :goto_0
    return v0

    .line 1180
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportOffsetX()I

    move-result v2

    sub-int v0, v1, v2

    .line 1182
    .local v0, "offset":I
    goto :goto_0
.end method

.method protected getChildWidth(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2238
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method getCurrentPage()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3051
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3052
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getNextPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3050
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFirstChildLeft()I
    .locals 1

    .prologue
    .line 972
    iget v0, p0, Lcom/android/launcher4/PagedView;->mFirstChildLeft:I

    return v0
.end method

.method public getLayoutTransitionOffsetForPage(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 1648
    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mPageScrolls:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mPageScrolls:[I

    array-length v3, v3

    if-ge p1, v3, :cond_0

    if-gez p1, :cond_1

    .line 1649
    :cond_0
    const/4 v3, 0x0

    .line 1655
    :goto_0
    return v3

    .line 1651
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1652
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 1653
    .local v2, "scrollOffset":I
    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mPageScrolls:[I

    aget v3, v3, p1

    add-int/2addr v3, v2

    .line 1654
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportOffsetX()I

    move-result v4

    .line 1653
    add-int v0, v3, v4

    .line 1655
    .local v0, "baselineX":I
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v3

    int-to-float v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0
.end method

.method protected getMaxScrollProgress()F
    .locals 1

    .prologue
    .line 1598
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method getNearestHoverOverPageIndex()I
    .locals 9

    .prologue
    .line 1779
    iget-object v7, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    if-eqz v7, :cond_2

    .line 1780
    iget-object v7, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 1781
    iget-object v8, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    .line 1780
    add-int/2addr v7, v8

    int-to-float v7, v7

    .line 1781
    iget-object v8, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    .line 1782
    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v8

    .line 1780
    add-float/2addr v7, v8

    float-to-int v1, v7

    .line 1783
    .local v1, "dragX":I
    iget-object v7, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v7}, Lcom/android/launcher4/PagedView;->getOverviewModePages([I)V

    .line 1784
    const v3, 0x7fffffff

    .line 1785
    .local v3, "minDistance":I
    iget-object v7, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/launcher4/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 1786
    .local v4, "minIndex":I
    iget-object v7, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    const/4 v8, 0x0

    aget v2, v7, v8

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    if-le v2, v7, :cond_0

    .line 1797
    .end local v1    # "dragX":I
    .end local v2    # "i":I
    .end local v3    # "minDistance":I
    .end local v4    # "minIndex":I
    :goto_1
    return v4

    .line 1787
    .restart local v1    # "dragX":I
    .restart local v2    # "i":I
    .restart local v3    # "minDistance":I
    .restart local v4    # "minIndex":I
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    .line 1788
    .local v5, "page":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v6, v7, v8

    .line 1789
    .local v6, "pageX":I
    sub-int v7, v1, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1790
    .local v0, "d":I
    if-ge v0, v3, :cond_1

    .line 1791
    move v4, v2

    .line 1792
    move v3, v0

    .line 1786
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1797
    .end local v0    # "d":I
    .end local v1    # "dragX":I
    .end local v2    # "i":I
    .end local v3    # "minDistance":I
    .end local v4    # "minIndex":I
    .end local v5    # "page":Landroid/view/View;
    .end local v6    # "pageX":I
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method getNextPage()I
    .locals 2

    .prologue
    .line 523
    iget v0, p0, Lcom/android/launcher4/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher4/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method public getNormalChildHeight()I
    .locals 1

    .prologue
    .line 817
    iget v0, p0, Lcom/android/launcher4/PagedView;->mNormalChildHeight:I

    return v0
.end method

.method protected getOverviewModePages([I)V
    .locals 3
    .param p1, "range"    # [I

    .prologue
    const/4 v2, 0x0

    .line 1186
    aput v2, p1, v2

    .line 1187
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p1, v0

    .line 1188
    return-void
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2417
    const/4 v2, -0x1

    .line 2418
    .local v2, "result":I
    if-eqz p1, :cond_0

    .line 2419
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2420
    .local v3, "vp":Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v0

    .line 2421
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_2

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vp":Landroid/view/ViewParent;
    :cond_0
    move v1, v2

    .line 2427
    :cond_1
    return v1

    .line 2422
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "vp":Landroid/view/ViewParent;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 2421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getPageIndicator()Lcom/android/launcher4/PageIndicator;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    return-object v0
.end method

.method protected getPageIndicatorClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageIndicatorMarker(I)Lcom/android/launcher4/PageIndicator$PageMarkerResources;
    .locals 1
    .param p1, "pageIndex"    # I

    .prologue
    .line 482
    new-instance v0, Lcom/android/launcher4/PageIndicator$PageMarkerResources;

    invoke-direct {v0}, Lcom/android/launcher4/PageIndicator$PageMarkerResources;-><init>()V

    return-object v0
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 2254
    const v7, 0x7fffffff

    .line 2255
    .local v7, "minDistanceFromScreenCenter":I
    const/4 v8, -0x1

    .line 2256
    .local v8, "minDistanceFromScreenCenterIndex":I
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollX()I

    move-result v11

    add-int/2addr v10, v11

    .line 2257
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    .line 2256
    add-int v9, v10, v11

    .line 2258
    .local v9, "screenCenter":I
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v1

    .line 2259
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v1, :cond_0

    .line 2271
    return v8

    .line 2260
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 2261
    .local v6, "layout":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 2262
    .local v2, "childWidth":I
    div-int/lit8 v4, v2, 0x2

    .line 2263
    .local v4, "halfChildWidth":I
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0, v5}, Lcom/android/launcher4/PagedView;->getChildOffset(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int v0, v10, v4

    .line 2265
    .local v0, "childCenter":I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2266
    .local v3, "distanceFromScreenCenter":I
    if-ge v3, v7, :cond_1

    .line 2267
    move v7, v3

    .line 2268
    move v8, v5

    .line 2259
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method getPageNearestToPoint(F)I
    .locals 4
    .param p1, "x"    # F

    .prologue
    .line 2242
    const/4 v1, 0x0

    .line 2243
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 2250
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .end local v1    # "index":I
    :cond_0
    return v1

    .line 2244
    .restart local v1    # "index":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    .line 2247
    add-int/lit8 v1, v1, 0x1

    .line 2243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getScrollForPage(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1637
    :cond_0
    const/4 v0, 0x0

    .line 1639
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPageScrolls:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 7
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    .line 1624
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1626
    .local v1, "halfScreenSize":I
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher4/PagedView;->mPageSpacing:I

    add-int v3, v4, v5

    .line 1627
    .local v3, "totalDistance":I
    invoke-virtual {p0, p3}, Lcom/android/launcher4/PagedView;->getScrollForPage(I)I

    move-result v4

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1629
    .local v0, "delta":I
    int-to-float v4, v0

    int-to-float v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 1630
    .local v2, "scrollProgress":F
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getMaxScrollProgress()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1631
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getMaxScrollProgress()F

    move-result v4

    neg-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1632
    return v2
.end method

.method getViewportHeight()I
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .locals 2

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .locals 2

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportWidth()I
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .locals 11
    .param p1, "range"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 1191
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v4

    .line 1192
    .local v4, "pageCount":I
    iget-object v6, p0, Lcom/android/launcher4/PagedView;->mTmpIntPoint:[I

    iget-object v7, p0, Lcom/android/launcher4/PagedView;->mTmpIntPoint:[I

    aput v8, v7, v10

    aput v8, v6, v8

    .line 1194
    aput v9, p1, v8

    .line 1195
    aput v9, p1, v10

    .line 1197
    if-lez v4, :cond_5

    .line 1198
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v5

    .line 1199
    .local v5, "viewportWidth":I
    const/4 v1, 0x0

    .line 1201
    .local v1, "curScreen":I
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v0

    .line 1202
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_1

    .line 1232
    :cond_0
    aput v1, p1, v10

    .line 1237
    .end local v0    # "count":I
    .end local v1    # "curScreen":I
    .end local v3    # "i":I
    .end local v5    # "viewportWidth":I
    :goto_1
    return-void

    .line 1203
    .restart local v0    # "count":I
    .restart local v1    # "curScreen":I
    .restart local v3    # "i":I
    .restart local v5    # "viewportWidth":I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1205
    .local v2, "currPage":Landroid/view/View;
    iget-object v6, p0, Lcom/android/launcher4/PagedView;->mTmpIntPoint:[I

    aput v8, v6, v8

    .line 1207
    iget-object v6, p0, Lcom/android/launcher4/PagedView;->mTmpIntPoint:[I

    .line 1206
    invoke-static {v2, p0, v6, v8}, Lcom/android/launcher4/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 1208
    iget-object v6, p0, Lcom/android/launcher4/PagedView;->mTmpIntPoint:[I

    aget v6, v6, v8

    if-le v6, v5, :cond_3

    .line 1209
    aget v6, p1, v8

    if-ne v6, v9, :cond_0

    .line 1202
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1216
    :cond_3
    iget-object v6, p0, Lcom/android/launcher4/PagedView;->mTmpIntPoint:[I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    aput v7, v6, v8

    .line 1218
    iget-object v6, p0, Lcom/android/launcher4/PagedView;->mTmpIntPoint:[I

    .line 1217
    invoke-static {v2, p0, v6, v8}, Lcom/android/launcher4/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 1219
    iget-object v6, p0, Lcom/android/launcher4/PagedView;->mTmpIntPoint:[I

    aget v6, v6, v8

    if-gez v6, :cond_4

    .line 1220
    aget v6, p1, v8

    if-ne v6, v9, :cond_0

    goto :goto_2

    .line 1226
    :cond_4
    move v1, v3

    .line 1227
    aget v6, p1, v8

    if-gez v6, :cond_2

    .line 1228
    aput v1, p1, v8

    goto :goto_2

    .line 1234
    .end local v0    # "count":I
    .end local v1    # "curScreen":I
    .end local v2    # "currPage":Landroid/view/View;
    .end local v3    # "i":I
    .end local v5    # "viewportWidth":I
    :cond_5
    aput v9, p1, v8

    .line 1235
    aput v9, p1, v10

    goto :goto_1
.end method

.method protected hitsNextPage(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1419
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v3

    iget v4, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/launcher4/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 1420
    .local v0, "offset":I
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1421
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportOffsetX()I

    move-result v3

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher4/PagedView;->mPageSpacing:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 1423
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1421
    goto :goto_0

    .line 1423
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportOffsetX()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher4/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1408
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v3

    iget v4, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/launcher4/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 1409
    .local v0, "offset":I
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1410
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportOffsetX()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher4/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    .line 1412
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1410
    goto :goto_0

    .line 1412
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportOffsetX()I

    move-result v3

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher4/PagedView;->mPageSpacing:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 535
    return p1
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher4/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 340
    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 341
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/launcher4/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/launcher4/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 342
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    .line 343
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher4/PagedView;->mCenterPagesVertically:Z

    .line 346
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 347
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher4/PagedView;->mTouchSlop:I

    .line 348
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher4/PagedView;->mPagingTouchSlop:I

    .line 349
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/launcher4/PagedView;->mMaximumVelocity:I

    .line 350
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/launcher4/PagedView;->mDensity:F

    .line 353
    iget v1, p0, Lcom/android/launcher4/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher4/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher4/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 355
    const/high16 v1, 0x43fa0000    # 500.0f

    iget v2, p0, Lcom/android/launcher4/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher4/PagedView;->mFlingThresholdVelocity:I

    .line 356
    const/high16 v1, 0x437a0000    # 250.0f

    iget v2, p0, Lcom/android/launcher4/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher4/PagedView;->mMinFlingVelocity:I

    .line 357
    const v1, 0x44bb8000    # 1500.0f

    iget v2, p0, Lcom/android/launcher4/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher4/PagedView;->mMinSnapVelocity:I

    .line 358
    invoke-virtual {p0, p0}, Lcom/android/launcher4/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 359
    return-void
.end method

.method protected invalidatePageData()V
    .locals 2

    .prologue
    .line 2553
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/PagedView;->invalidatePageData(IZ)V

    .line 2554
    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1
    .param p1, "currentPage"    # I

    .prologue
    .line 2557
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher4/PagedView;->invalidatePageData(IZ)V

    .line 2558
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 7
    .param p1, "currentPage"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 2561
    iget-boolean v2, p0, Lcom/android/launcher4/PagedView;->mIsDataReady:Z

    if-nez v2, :cond_1

    .line 2602
    :cond_0
    :goto_0
    return-void

    .line 2565
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher4/PagedView;->mContentIsRefreshable:Z

    if-eqz v2, :cond_3

    .line 2567
    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v5}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2568
    iput v4, p0, Lcom/android/launcher4/PagedView;->mNextPage:I

    .line 2571
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->syncPages()V

    .line 2576
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2578
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getMeasuredHeight()I

    move-result v3

    .line 2577
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2576
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher4/PagedView;->measure(II)V

    .line 2581
    if-le p1, v4, :cond_2

    .line 2582
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedView;->setCurrentPage(I)V

    .line 2586
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v0

    .line 2587
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2588
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_4

    .line 2593
    iget v2, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2, p2}, Lcom/android/launcher4/PagedView;->loadAssociatedPages(IZ)V

    .line 2594
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->requestLayout()V

    .line 2596
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->isPageMoving()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2600
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->snapToDestination()V

    goto :goto_0

    .line 2589
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2588
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/android/launcher4/PagedView;->mIsDataReady:Z

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 498
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPageMoving()Z
    .locals 1

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/android/launcher4/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .locals 3
    .param p1, "testTouchState"    # Z

    .prologue
    .line 2677
    iget-boolean v0, p0, Lcom/android/launcher4/PagedView;->mIsReordering:Z

    .line 2678
    .local v0, "state":Z
    if-eqz p1, :cond_0

    .line 2679
    iget v1, p0, Lcom/android/launcher4/PagedView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 2681
    :cond_0
    return v0

    .line 2679
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected loadAssociatedPages(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 2481
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher4/PagedView;->loadAssociatedPages(IZ)V

    .line 2482
    return-void
.end method

.method protected loadAssociatedPages(IZ)V
    .locals 9
    .param p1, "page"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2491
    iget-boolean v5, p0, Lcom/android/launcher4/PagedView;->mContentIsRefreshable:Z

    if-eqz v5, :cond_0

    .line 2492
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v0

    .line 2493
    .local v0, "count":I
    if-ge p1, v0, :cond_0

    .line 2494
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->getAssociatedLowerPageBound(I)I

    move-result v3

    .line 2496
    .local v3, "lowerPageBound":I
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->getAssociatedUpperPageBound(I)I

    move-result v4

    .line 2499
    .local v4, "upperPageBound":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 2510
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_5

    .line 2523
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "lowerPageBound":I
    .end local v4    # "upperPageBound":I
    :cond_0
    return-void

    .line 2500
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "lowerPageBound":I
    .restart local v4    # "upperPageBound":I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/Page;

    .line 2501
    .local v2, "layout":Lcom/android/launcher4/Page;
    if-lt v1, v3, :cond_2

    if-le v1, v4, :cond_4

    .line 2502
    :cond_2
    invoke-interface {v2}, Lcom/android/launcher4/Page;->getPageChildCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 2503
    invoke-interface {v2}, Lcom/android/launcher4/Page;->removeAllViewsOnPage()V

    .line 2505
    :cond_3
    iget-object v5, p0, Lcom/android/launcher4/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2499
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2511
    .end local v2    # "layout":Lcom/android/launcher4/Page;
    :cond_5
    if-eq v1, p1, :cond_7

    if-eqz p2, :cond_7

    .line 2510
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2514
    :cond_7
    if-gt v3, v1, :cond_6

    if-gt v1, v4, :cond_6

    .line 2515
    iget-object v5, p0, Lcom/android/launcher4/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2516
    if-ne v1, p1, :cond_8

    if-eqz p2, :cond_8

    move v5, v6

    :goto_3
    invoke-virtual {p0, v1, v5}, Lcom/android/launcher4/PagedView;->syncPageItems(IZ)V

    .line 2517
    iget-object v5, p0, Lcom/android/launcher4/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    move v5, v7

    .line 2516
    goto :goto_3
.end method

.method mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mTmpPoint:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    .line 415
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mTmpPoint:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    .line 416
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 417
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 418
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 405
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mTmpPoint:[F

    aput p2, v0, v3

    .line 406
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mTmpPoint:[F

    aput p3, v0, v4

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 408
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 409
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 410
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method protected maxOverScroll()F
    .locals 3

    .prologue
    .line 1728
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1729
    .local v0, "f":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher4/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 1730
    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v0

    return v1
.end method

.method protected notifyPageSwitchListener()V
    .locals 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPageSwitchListener:Lcom/android/launcher4/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPageSwitchListener:Lcom/android/launcher4/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 608
    iget v2, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    .line 607
    invoke-interface {v0, v1, v2}, Lcom/android/launcher4/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/PageIndicator;->setActiveMarker(I)V

    .line 615
    :cond_1
    return-void
.end method

.method public onAddView(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 2149
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 362
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 365
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 366
    .local v3, "parent":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/launcher4/PagedView;->mPageIndicatorViewId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_1

    .line 368
    iget v4, p0, Lcom/android/launcher4/PagedView;->mPageIndicatorViewId:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/PageIndicator;

    .line 367
    iput-object v4, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    .line 369
    iget-object v4, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    iget-boolean v5, p0, Lcom/android/launcher4/PagedView;->mAllowPagedViewAnimations:Z

    invoke-virtual {v4, v5}, Lcom/android/launcher4/PageIndicator;->removeAllMarkers(Z)V

    .line 371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v2, "markers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/PageIndicator$PageMarkerResources;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 376
    iget-object v4, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    iget-boolean v5, p0, Lcom/android/launcher4/PagedView;->mAllowPagedViewAnimations:Z

    invoke-virtual {v4, v2, v5}, Lcom/android/launcher4/PageIndicator;->addMarkers(Ljava/util/ArrayList;Z)V

    .line 378
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageIndicatorClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 379
    .local v1, "listener":Landroid/view/View$OnClickListener;
    if-eqz v1, :cond_0

    .line 380
    iget-object v4, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    invoke-virtual {v4, v1}, Lcom/android/launcher4/PageIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    :cond_0
    iget-object v4, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher4/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 384
    .end local v0    # "i":I
    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    .end local v2    # "markers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/PageIndicator$PageMarkerResources;>;"
    :cond_1
    return-void

    .line 373
    .restart local v0    # "i":I
    .restart local v2    # "markers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/PageIndicator$PageMarkerResources;>;"
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher4/PageIndicator$PageMarkerResources;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 1110
    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedView;->isReordering(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1111
    invoke-virtual {p0, p2}, Lcom/android/launcher4/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1112
    .local v0, "pageIndex":I
    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    .line 1113
    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher4/PageIndicator$PageMarkerResources;

    move-result-object v2

    .line 1114
    iget-boolean v3, p0, Lcom/android/launcher4/PagedView;->mAllowPagedViewAnimations:Z

    .line 1112
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/launcher4/PageIndicator;->addMarker(ILcom/android/launcher4/PageIndicator$PageMarkerResources;Z)V

    .line 1120
    .end local v0    # "pageIndex":I
    :cond_0
    iput-boolean v4, p0, Lcom/android/launcher4/PagedView;->mForceScreenScrolled:Z

    .line 1121
    iput-boolean v4, p0, Lcom/android/launcher4/PagedView;->mRecomputePageSpacing:Z

    .line 1122
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->updateFreescrollBounds()V

    .line 1123
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->invalidate()V

    .line 1124
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 1128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/PagedView;->mForceScreenScrolled:Z

    .line 1129
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->updateFreescrollBounds()V

    .line 1130
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->invalidate()V

    .line 1131
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    .line 397
    return-void
.end method

.method protected onEndReordering()V
    .locals 1

    .prologue
    .line 2647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/PagedView;->mIsReordering:Z

    .line 2648
    return-void
.end method

.method public onFlingToDelete(Landroid/graphics/PointF;)V
    .locals 12
    .param p1, "vel"    # Landroid/graphics/PointF;

    .prologue
    .line 2884
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 2895
    .local v4, "startTime":J
    new-instance v9, Lcom/android/launcher4/PagedView$6;

    invoke-direct {v9, p0, v4, v5}, Lcom/android/launcher4/PagedView$6;-><init>(Lcom/android/launcher4/PagedView;J)V

    .line 2919
    .local v9, "tInterpolator":Landroid/animation/TimeInterpolator;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2920
    .local v3, "from":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    .line 2921
    .local v1, "dragView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 2922
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 2923
    new-instance v0, Lcom/android/launcher4/PagedView$FlingAlongVectorAnimatorUpdateListener;

    .line 2924
    iget v6, p0, Lcom/android/launcher4/PagedView;->FLING_TO_DELETE_FRICTION:F

    move-object v2, p1

    .line 2923
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher4/PagedView$FlingAlongVectorAnimatorUpdateListener;-><init>(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    .line 2926
    .local v0, "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-direct {p0, v1}, Lcom/android/launcher4/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v8

    .line 2929
    .local v8, "onAnimationEndRunnable":Ljava/lang/Runnable;
    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2930
    .local v7, "mDropAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2931
    iget v2, p0, Lcom/android/launcher4/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v10, v2

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2932
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2933
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2934
    new-instance v2, Lcom/android/launcher4/PagedView$7;

    invoke-direct {v2, p0, v8}, Lcom/android/launcher4/PagedView$7;-><init>(Lcom/android/launcher4/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2939
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 2940
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher4/PagedView;->mDeferringForDelete:Z

    .line 2941
    return-void

    .line 2932
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onFlingToDelete(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2140
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x9

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 2166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2192
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 2172
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    .line 2173
    const/4 v2, 0x0

    .line 2174
    .local v2, "vscroll":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 2179
    .local v0, "hscroll":F
    :goto_1
    cmpl-float v4, v0, v5

    if-nez v4, :cond_1

    cmpl-float v4, v2, v5

    if-eqz v4, :cond_0

    .line 2180
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_5

    cmpg-float v4, v0, v5

    if-ltz v4, :cond_4

    cmpg-float v4, v2, v5

    if-ltz v4, :cond_4

    .line 2182
    .local v1, "isForwardScroll":Z
    :cond_2
    :goto_2
    if-eqz v1, :cond_7

    .line 2183
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->scrollRight()V

    goto :goto_0

    .line 2176
    .end local v0    # "hscroll":F
    .end local v1    # "isForwardScroll":Z
    .end local v2    # "vscroll":F
    :cond_3
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    neg-float v2, v4

    .line 2177
    .restart local v2    # "vscroll":F
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "hscroll":F
    goto :goto_1

    :cond_4
    move v1, v3

    .line 2180
    goto :goto_2

    .line 2181
    :cond_5
    cmpl-float v4, v0, v5

    if-gtz v4, :cond_6

    .line 2180
    cmpl-float v4, v2, v5

    if-lez v4, :cond_2

    :cond_6
    move v1, v3

    goto :goto_2

    .line 2185
    .restart local v1    # "isForwardScroll":Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->scrollLeft()V

    goto :goto_0

    .line 2166
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3057
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3021
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3022
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 3023
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 3001
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3002
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 3003
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 3004
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3006
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 3007
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3009
    :cond_1
    return-void

    .line 3002
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1444
    invoke-direct {p0, p1}, Lcom/android/launcher4/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1447
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v8

    if-gtz v8, :cond_1

    .line 1448
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 1551
    :cond_0
    :goto_0
    return v6

    .line 1454
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1455
    .local v0, "action":I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_2

    .line 1456
    iget v8, p0, Lcom/android/launcher4/PagedView;->mTouchState:I

    if-eq v8, v6, :cond_0

    .line 1460
    :cond_2
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 1551
    :cond_3
    :goto_1
    :pswitch_0
    iget v8, p0, Lcom/android/launcher4/PagedView;->mTouchState:I

    if-nez v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 1467
    :pswitch_1
    iget v8, p0, Lcom/android/launcher4/PagedView;->mActivePointerId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 1468
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1483
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1484
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1486
    .local v5, "y":F
    iput v3, p0, Lcom/android/launcher4/PagedView;->mDownMotionX:F

    .line 1487
    iput v5, p0, Lcom/android/launcher4/PagedView;->mDownMotionY:F

    .line 1488
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    iput v8, p0, Lcom/android/launcher4/PagedView;->mDownScrollX:F

    .line 1489
    iput v3, p0, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    .line 1490
    iput v5, p0, Lcom/android/launcher4/PagedView;->mLastMotionY:F

    .line 1491
    invoke-virtual {p0, p0, v3, v5}, Lcom/android/launcher4/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v2

    .line 1492
    .local v2, "p":[F
    aget v8, v2, v7

    iput v8, p0, Lcom/android/launcher4/PagedView;->mParentDownMotionX:F

    .line 1493
    aget v8, v2, v6

    iput v8, p0, Lcom/android/launcher4/PagedView;->mParentDownMotionY:F

    .line 1494
    iput v9, p0, Lcom/android/launcher4/PagedView;->mLastMotionXRemainder:F

    .line 1495
    iput v9, p0, Lcom/android/launcher4/PagedView;->mTotalMotionX:F

    .line 1496
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher4/PagedView;->mActivePointerId:I

    .line 1503
    iget-object v8, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getFinalX()I

    move-result v8

    .line 1504
    iget-object v9, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v9

    .line 1503
    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1505
    .local v4, "xDist":I
    iget-object v8, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_4

    iget v8, p0, Lcom/android/launcher4/PagedView;->mTouchSlop:I

    if-lt v4, v8, :cond_4

    move v1, v7

    .line 1506
    .local v1, "finishedScrolling":Z
    :goto_2
    if-eqz v1, :cond_5

    .line 1507
    iput v7, p0, Lcom/android/launcher4/PagedView;->mTouchState:I

    .line 1508
    iget-object v8, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_1

    .end local v1    # "finishedScrolling":Z
    :cond_4
    move v1, v6

    .line 1505
    goto :goto_2

    .line 1510
    .restart local v1    # "finishedScrolling":Z
    :cond_5
    iget v8, p0, Lcom/android/launcher4/PagedView;->mDownMotionX:F

    float-to-int v8, v8

    .line 1511
    iget v9, p0, Lcom/android/launcher4/PagedView;->mDownMotionY:F

    float-to-int v9, v9

    .line 1510
    invoke-direct {p0, v8, v9}, Lcom/android/launcher4/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v8

    .line 1511
    if-eqz v8, :cond_6

    .line 1512
    iput v6, p0, Lcom/android/launcher4/PagedView;->mTouchState:I

    goto :goto_1

    .line 1514
    :cond_6
    iput v7, p0, Lcom/android/launcher4/PagedView;->mTouchState:I

    goto :goto_1

    .line 1538
    .end local v1    # "finishedScrolling":Z
    .end local v2    # "p":[F
    .end local v3    # "x":F
    .end local v4    # "xDist":I
    .end local v5    # "y":F
    :pswitch_3
    invoke-direct {p0}, Lcom/android/launcher4/PagedView;->resetTouchState()V

    goto :goto_1

    .line 1542
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/launcher4/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1543
    invoke-direct {p0}, Lcom/android/launcher4/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1460
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 978
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/PagedView;->mIsDataReady:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v21

    if-nez v21, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v3

    .line 986
    .local v3, "childCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v17

    .line 988
    .local v17, "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getViewportOffsetX()I

    move-result v15

    .line 989
    .local v15, "offsetX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getViewportOffsetY()I

    move-result v16

    .line 992
    .local v16, "offsetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 994
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->isLayoutRtl()Z

    move-result v12

    .line 996
    .local v12, "isRtl":Z
    if-eqz v12, :cond_6

    add-int/lit8 v19, v3, -0x1

    .line 997
    .local v19, "startIndex":I
    :goto_1
    if-eqz v12, :cond_7

    const/4 v9, -0x1

    .line 998
    .local v9, "endIndex":I
    :goto_2
    if-eqz v12, :cond_8

    const/4 v8, -0x1

    .line 1000
    .local v8, "delta":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getPaddingTop()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getPaddingBottom()I

    move-result v22

    add-int v20, v21, v22

    .line 1003
    .local v20, "verticalPadding":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher4/PagedView;->getChildWidth(I)I

    move-result v21

    sub-int v21, v17, v21

    div-int/lit8 v21, v21, 0x2

    add-int v5, v15, v21

    .line 1002
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/PagedView;->mFirstChildLeft:I

    .line 1004
    .local v5, "childLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mPageScrolls:[I

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedView;->mChildCountOnLastLayout:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1005
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher4/PagedView;->mPageScrolls:[I

    .line 1008
    :cond_3
    move/from16 v10, v19

    .local v10, "i":I
    :goto_4
    if-ne v10, v9, :cond_9

    .line 1049
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/PagedView;->mFirstLayout:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    move/from16 v21, v0

    if-ltz v21, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 1050
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher4/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 1051
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->updateCurrentPageScroll()V

    .line 1052
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher4/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 1053
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher4/PagedView;->mFirstLayout:Z

    .line 1056
    :cond_4
    if-lez v3, :cond_e

    .line 1057
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->isLayoutRtl()Z

    move-result v21

    if-eqz v21, :cond_d

    const/4 v11, 0x0

    .line 1058
    .local v11, "index":I
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher4/PagedView;->getScrollForPage(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/PagedView;->mMaxScrollX:I

    .line 1063
    .end local v11    # "index":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->isFinished()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1064
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedView;->mChildCountOnLastLayout:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 1065
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/PagedView;->mDeferringForDelete:Z

    move/from16 v21, v0

    if-nez v21, :cond_5

    .line 1066
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedView;->mRestorePage:I

    move/from16 v21, v0

    const/16 v22, -0x3e9

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 1067
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedView;->mRestorePage:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher4/PagedView;->setCurrentPage(I)V

    .line 1068
    const/16 v21, -0x3e9

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/PagedView;->mRestorePage:I

    .line 1073
    :cond_5
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/PagedView;->mChildCountOnLastLayout:I

    .line 1075
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher4/PagedView;->isReordering(Z)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1076
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->updateDragViewTranslationDuringDrag()V

    goto/16 :goto_0

    .line 996
    .end local v5    # "childLeft":I
    .end local v8    # "delta":I
    .end local v9    # "endIndex":I
    .end local v10    # "i":I
    .end local v19    # "startIndex":I
    .end local v20    # "verticalPadding":I
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_1

    .restart local v19    # "startIndex":I
    :cond_7
    move v9, v3

    .line 997
    goto/16 :goto_2

    .line 998
    .restart local v9    # "endIndex":I
    :cond_8
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 1009
    .restart local v5    # "childLeft":I
    .restart local v8    # "delta":I
    .restart local v10    # "i":I
    .restart local v20    # "verticalPadding":I
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1010
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 1011
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher4/PagedView$LayoutParams;

    .line 1013
    .local v13, "lp":Lcom/android/launcher4/PagedView$LayoutParams;
    iget-boolean v0, v13, Lcom/android/launcher4/PagedView$LayoutParams;->isFullScreenPage:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 1014
    move/from16 v6, v16

    .line 1024
    .local v6, "childTop":I
    :cond_a
    :goto_8
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1025
    .local v7, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1031
    .local v4, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v21, v21, v5

    .line 1032
    add-int v22, v6, v4

    .line 1030
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v21

    sub-int v21, v21, v7

    div-int/lit8 v18, v21, 0x2

    .line 1038
    .local v18, "scrollOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mPageScrolls:[I

    move-object/from16 v21, v0

    sub-int v22, v5, v18

    sub-int v22, v22, v15

    aput v22, v21, v10

    .line 1040
    sub-int v21, v9, v8

    move/from16 v0, v21

    if-eq v10, v0, :cond_b

    .line 1041
    add-int v21, v7, v18

    add-int v5, v5, v21

    .line 1042
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v21

    .line 1043
    add-int v22, v10, v8

    .line 1042
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher4/PagedView;->getChildWidth(I)I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v14, v21, 0x2

    .line 1044
    .local v14, "nextScrollOffset":I
    add-int/2addr v5, v14

    .line 1008
    .end local v4    # "childHeight":I
    .end local v6    # "childTop":I
    .end local v7    # "childWidth":I
    .end local v13    # "lp":Lcom/android/launcher4/PagedView$LayoutParams;
    .end local v14    # "nextScrollOffset":I
    .end local v18    # "scrollOffset":I
    :cond_b
    add-int/2addr v10, v8

    goto/16 :goto_4

    .line 1016
    .restart local v13    # "lp":Lcom/android/launcher4/PagedView$LayoutParams;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getPaddingTop()I

    move-result v21

    add-int v21, v21, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v6, v21, v22

    .line 1017
    .restart local v6    # "childTop":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/PagedView;->mCenterPagesVertically:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 1018
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getViewportHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    .line 1018
    sub-int v21, v21, v22

    sub-int v21, v21, v20

    .line 1020
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    .line 1018
    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    add-int v6, v6, v21

    goto/16 :goto_8

    .line 1057
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "childTop":I
    .end local v13    # "lp":Lcom/android/launcher4/PagedView$LayoutParams;
    :cond_d
    add-int/lit8 v11, v3, -0x1

    goto/16 :goto_5

    .line 1060
    :cond_e
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/PagedView;->mMaxScrollX:I

    goto/16 :goto_6

    .line 1070
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getNextPage()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher4/PagedView;->setCurrentPage(I)V

    goto/16 :goto_7
.end method

.method protected onMeasure(II)V
    .locals 31
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 822
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/PagedView;->mIsDataReady:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v28

    if-nez v28, :cond_2

    .line 823
    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 964
    :cond_1
    :goto_0
    return-void

    .line 830
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v26

    .line 831
    .local v26, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    .line 832
    .local v27, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 833
    .local v13, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 838
    .local v14, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 839
    .local v12, "dm":Landroid/util/DisplayMetrics;
    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    add-int v29, v29, v30

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    add-int v29, v29, v30

    .line 839
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 844
    .local v18, "maxSize":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/PagedView;->mUseMinScale:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 845
    const/high16 v28, 0x3fc00000    # 1.5f

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    .line 846
    .local v21, "parentWidthSize":I
    move/from16 v20, v18

    .line 847
    .local v20, "parentHeightSize":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedView;->mMinScale:F

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v23, v0

    .line 848
    .local v23, "scaledWidthSize":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/PagedView;->mMinScale:F

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v22, v0

    .line 853
    .end local v20    # "parentHeightSize":I
    .end local v21    # "parentWidthSize":I
    .local v22, "scaledHeightSize":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 855
    if-eqz v26, :cond_3

    .line 856
    if-nez v13, :cond_5

    .line 857
    :cond_3
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/16 :goto_0

    .line 850
    .end local v22    # "scaledHeightSize":I
    .end local v23    # "scaledWidthSize":I
    :cond_4
    move/from16 v23, v27

    .line 851
    .restart local v23    # "scaledWidthSize":I
    move/from16 v22, v14

    .restart local v22    # "scaledHeightSize":I
    goto :goto_1

    .line 862
    :cond_5
    if-lez v27, :cond_6

    if-gtz v14, :cond_7

    .line 863
    :cond_6
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/16 :goto_0

    .line 874
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getPaddingTop()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getPaddingBottom()I

    move-result v29

    add-int v25, v28, v29

    .line 875
    .local v25, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getPaddingLeft()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getPaddingRight()I

    move-result v29

    add-int v15, v28, v29

    .line 892
    .local v15, "horizontalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v5

    .line 893
    .local v5, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    if-lt v0, v5, :cond_8

    .line 944
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/PagedView;->setMeasuredDimension(II)V

    .line 946
    if-lez v5, :cond_1

    .line 948
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/PagedView;->mAutoComputePageSpacing:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/PagedView;->mRecomputePageSpacing:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 957
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher4/PagedView;->getChildWidth(I)I

    move-result v29

    sub-int v28, v28, v29

    div-int/lit8 v19, v28, 0x2

    .line 959
    .local v19, "offset":I
    sub-int v28, v27, v19

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher4/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    sub-int v28, v28, v29

    .line 958
    move/from16 v0, v19

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 960
    .local v24, "spacing":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher4/PagedView;->setPageSpacing(I)V

    .line 961
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher4/PagedView;->mRecomputePageSpacing:Z

    goto/16 :goto_0

    .line 895
    .end local v19    # "offset":I
    .end local v24    # "spacing":I
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 896
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    .line 897
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/launcher4/PagedView$LayoutParams;

    .line 904
    .local v17, "lp":Lcom/android/launcher4/PagedView$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/launcher4/PagedView$LayoutParams;->isFullScreenPage:Z

    move/from16 v28, v0

    if-nez v28, :cond_c

    .line 905
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher4/PagedView$LayoutParams;->width:I

    move/from16 v28, v0

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 906
    const/high16 v11, -0x80000000

    .line 911
    .local v11, "childWidthMode":I
    :goto_3
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher4/PagedView$LayoutParams;->height:I

    move/from16 v28, v0

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 912
    const/high16 v8, -0x80000000

    .line 917
    .local v8, "childHeightMode":I
    :goto_4
    sub-int v9, v27, v15

    .line 918
    .local v9, "childWidth":I
    sub-int v28, v14, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    .line 918
    sub-int v6, v28, v29

    .line 920
    .local v6, "childHeight":I
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher4/PagedView;->mNormalChildHeight:I

    .line 937
    :goto_5
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 939
    .local v10, "childWidthMeasureSpec":I
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 941
    .local v7, "childHeightMeasureSpec":I
    invoke-virtual {v4, v10, v7}, Landroid/view/View;->measure(II)V

    .line 893
    .end local v6    # "childHeight":I
    .end local v7    # "childHeightMeasureSpec":I
    .end local v8    # "childHeightMode":I
    .end local v9    # "childWidth":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v11    # "childWidthMode":I
    .end local v17    # "lp":Lcom/android/launcher4/PagedView$LayoutParams;
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 908
    .restart local v17    # "lp":Lcom/android/launcher4/PagedView$LayoutParams;
    :cond_a
    const/high16 v11, 0x40000000    # 2.0f

    .restart local v11    # "childWidthMode":I
    goto :goto_3

    .line 914
    :cond_b
    const/high16 v8, 0x40000000    # 2.0f

    .restart local v8    # "childHeightMode":I
    goto :goto_4

    .line 923
    .end local v8    # "childHeightMode":I
    .end local v11    # "childWidthMode":I
    :cond_c
    const/high16 v11, 0x40000000    # 2.0f

    .line 924
    .restart local v11    # "childWidthMode":I
    const/high16 v8, 0x40000000    # 2.0f

    .line 926
    .restart local v8    # "childHeightMode":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/PagedView;->mUseMinScale:Z

    move/from16 v28, v0

    if-eqz v28, :cond_d

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v9

    .line 928
    .restart local v9    # "childWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getViewportHeight()I

    move-result v6

    .line 929
    .restart local v6    # "childHeight":I
    goto :goto_5

    .line 930
    .end local v6    # "childHeight":I
    .end local v9    # "childWidth":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getPaddingLeft()I

    move-result v28

    sub-int v28, v27, v28

    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getPaddingRight()I

    move-result v29

    .line 930
    sub-int v9, v28, v29

    .line 932
    .restart local v9    # "childWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getPaddingTop()I

    move-result v28

    sub-int v28, v14, v28

    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getPaddingBottom()I

    move-result v29

    .line 932
    sub-int v6, v28, v29

    .restart local v6    # "childHeight":I
    goto :goto_5
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "deletePermanently"    # Z

    .prologue
    .line 2143
    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .locals 0

    .prologue
    .line 2146
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1311
    iget v2, p0, Lcom/android/launcher4/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1312
    iget v0, p0, Lcom/android/launcher4/PagedView;->mNextPage:I

    .line 1316
    .local v0, "focusablePage":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 1317
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1318
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 1320
    :goto_1
    return v2

    .line 1314
    .end local v0    # "focusablePage":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    .restart local v0    # "focusablePage":I
    goto :goto_0

    .line 1320
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onStartReordering()V
    .locals 1

    .prologue
    .line 2627
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher4/PagedView;->mTouchState:I

    .line 2628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/PagedView;->mIsReordering:Z

    .line 2633
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->invalidate()V

    .line 2634
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1806
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1809
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1810
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 2136
    :goto_0
    return v2

    .line 1812
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher4/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1814
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 1816
    .local v11, "action":I
    and-int/lit16 v2, v11, 0xff

    packed-switch v2, :pswitch_data_0

    .line 2136
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 1822
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1827
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mDownMotionX:F

    .line 1828
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mLastMotionY:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mDownMotionY:F

    .line 1829
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mDownScrollX:F

    .line 1830
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    .line 1831
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/PagedView;->mLastMotionY:F

    .line 1830
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher4/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v24

    .line 1832
    .local v24, "p":[F
    const/4 v2, 0x0

    aget v2, v24, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mParentDownMotionX:F

    .line 1833
    const/4 v2, 0x1

    aget v2, v24, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mParentDownMotionY:F

    .line 1834
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mLastMotionXRemainder:F

    .line 1835
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mTotalMotionX:F

    .line 1836
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mActivePointerId:I

    .line 1838
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mTouchState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 1839
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->pageBeginMoving()V

    goto :goto_1

    .line 1844
    .end local v24    # "p":[F
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mTouchState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    .line 1846
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v27

    .line 1848
    .local v27, "pointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_3

    .line 1849
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1851
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v33

    .line 1852
    .local v33, "x":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v2, v4

    sub-float v13, v2, v33

    .line 1854
    .local v13, "deltaX":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mTotalMotionX:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mTotalMotionX:F

    .line 1861
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_5

    .line 1862
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mTouchX:F

    add-float/2addr v2, v13

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mTouchX:F

    .line 1863
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    long-to-float v2, v6

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mSmoothingTime:F

    .line 1864
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher4/PagedView;->mDeferScrollUpdate:Z

    if-nez v2, :cond_4

    .line 1865
    float-to-int v2, v13

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher4/PagedView;->scrollBy(II)V

    .line 1871
    :goto_2
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    .line 1872
    float-to-int v2, v13

    int-to-float v2, v2

    sub-float v2, v13, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_1

    .line 1869
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->invalidate()V

    goto :goto_2

    .line 1874
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1876
    .end local v13    # "deltaX":F
    .end local v27    # "pointerIndex":I
    .end local v33    # "x":F
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mTouchState:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    .line 1878
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    .line 1879
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mLastMotionY:F

    .line 1884
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    .line 1885
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/PagedView;->mLastMotionY:F

    .line 1884
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher4/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v28

    .line 1886
    .local v28, "pt":[F
    const/4 v2, 0x0

    aget v2, v28, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mParentDownMotionX:F

    .line 1887
    const/4 v2, 0x1

    aget v2, v28, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mParentDownMotionY:F

    .line 1888
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher4/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v14

    .line 1895
    .local v14, "dragViewIndex":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mParentDownMotionX:F

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/PagedView;->mParentDownMotionY:F

    float-to-int v4, v4

    .line 1894
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/launcher4/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v19

    .line 1896
    .local v19, "isHoveringOverDelete":Z
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/launcher4/PagedView;->setPageHoveringOverDeleteDropTarget(IZ)V

    .line 1908
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getNearestHoverOverPageIndex()I

    move-result v25

    .line 1909
    .local v25, "pageUnderPointIndex":I
    const/4 v2, -0x1

    move/from16 v0, v25

    if-le v0, v2, :cond_7

    .line 1910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher4/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    move/from16 v0, v25

    if-eq v0, v2, :cond_7

    .line 1911
    if-nez v19, :cond_7

    .line 1912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    const/4 v4, 0x0

    const/4 v6, 0x0

    aput v6, v2, v4

    .line 1913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getPageCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aput v6, v2, v4

    .line 1914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher4/PagedView;->getOverviewModePages([I)V

    .line 1915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    move/from16 v0, v25

    if-gt v2, v0, :cond_1

    .line 1916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    move/from16 v0, v25

    if-gt v0, v2, :cond_1

    .line 1917
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mSidePageHoverIndex:I

    move/from16 v0, v25

    if-eq v0, v2, :cond_1

    .line 1918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1919
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/PagedView;->mSidePageHoverIndex:I

    .line 1920
    new-instance v2, Lcom/android/launcher4/PagedView$1;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v2, v0, v1, v14}, Lcom/android/launcher4/PagedView$1;-><init>(Lcom/android/launcher4/PagedView;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher4/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1978
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    int-to-long v6, v4

    .line 1977
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/launcher4/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1981
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher4/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1982
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_1

    .line 1985
    .end local v14    # "dragViewIndex":I
    .end local v19    # "isHoveringOverDelete":Z
    .end local v25    # "pageUnderPointIndex":I
    .end local v28    # "pt":[F
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher4/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1990
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mTouchState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1f

    .line 1991
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher4/PagedView;->mActivePointerId:I

    .line 1992
    .local v12, "activePointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v27

    .line 1993
    .restart local v27    # "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v33

    .line 1994
    .restart local v33    # "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v31, v0

    .line 1995
    .local v31, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/PagedView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1997
    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v32, v0

    .line 1998
    .local v32, "velocityX":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mDownMotionX:F

    sub-float v2, v33, v2

    float-to-int v13, v2

    .line 1999
    .local v13, "deltaX":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 2000
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .line 2001
    .local v26, "pageWidth":I
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v26

    int-to-float v4, v0

    .line 2002
    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v6

    .line 2001
    cmpl-float v2, v2, v4

    if-lez v2, :cond_d

    const/16 v21, 0x1

    .line 2004
    .local v21, "isSignificantMove":Z
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mTotalMotionX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v4, v6

    sub-float v4, v4, v33

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mTotalMotionX:F

    .line 2007
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mTotalMotionX:F

    const/high16 v4, 0x41c80000    # 25.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_e

    .line 2008
    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/PagedView;->mFlingThresholdVelocity:I

    .line 2007
    if-le v2, v4, :cond_e

    const/16 v18, 0x1

    .line 2010
    .local v18, "isFling":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher4/PagedView;->mFreeScroll:Z

    if-nez v2, :cond_1b

    .line 2017
    const/16 v29, 0x0

    .line 2018
    .local v29, "returnToOriginalPage":Z
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v26

    int-to-float v4, v0

    .line 2019
    const v6, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v4, v6

    cmpl-float v2, v2, v4

    if-lez v2, :cond_9

    .line 2020
    move/from16 v0, v32

    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v4, v13

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_9

    .line 2021
    if-eqz v18, :cond_9

    .line 2022
    const/16 v29, 0x1

    .line 2032
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->isLayoutRtl()Z

    move-result v20

    .line 2033
    .local v20, "isRtl":Z
    if-eqz v20, :cond_10

    if-lez v13, :cond_f

    const/16 v17, 0x1

    .line 2034
    .local v17, "isDeltaXLeft":Z
    :goto_5
    if-eqz v20, :cond_13

    if-lez v32, :cond_12

    const/16 v22, 0x1

    .line 2036
    .local v22, "isVelocityXLeft":Z
    :goto_6
    if-eqz v21, :cond_a

    if-nez v17, :cond_a

    if-eqz v18, :cond_b

    :cond_a
    if-eqz v18, :cond_16

    if-nez v22, :cond_16

    .line 2037
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    if-lez v2, :cond_16

    .line 2038
    if-eqz v29, :cond_15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    .line 2040
    .local v15, "finalPage":I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v15, v1}, Lcom/android/launcher4/PagedView;->snapToPageWithVelocity(II)V

    .line 2118
    .end local v12    # "activePointerId":I
    .end local v13    # "deltaX":I
    .end local v15    # "finalPage":I
    .end local v17    # "isDeltaXLeft":Z
    .end local v18    # "isFling":Z
    .end local v20    # "isRtl":Z
    .end local v21    # "isSignificantMove":Z
    .end local v22    # "isVelocityXLeft":Z
    .end local v26    # "pageWidth":I
    .end local v27    # "pointerIndex":I
    .end local v29    # "returnToOriginalPage":Z
    .end local v31    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v32    # "velocityX":I
    .end local v33    # "x":F
    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher4/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2120
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 2001
    .restart local v12    # "activePointerId":I
    .restart local v13    # "deltaX":I
    .restart local v26    # "pageWidth":I
    .restart local v27    # "pointerIndex":I
    .restart local v31    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v32    # "velocityX":I
    .restart local v33    # "x":F
    :cond_d
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 2007
    .restart local v21    # "isSignificantMove":Z
    :cond_e
    const/16 v18, 0x0

    goto :goto_4

    .line 2033
    .restart local v18    # "isFling":Z
    .restart local v20    # "isRtl":Z
    .restart local v29    # "returnToOriginalPage":Z
    :cond_f
    const/16 v17, 0x0

    goto :goto_5

    :cond_10
    if-gez v13, :cond_11

    const/16 v17, 0x1

    goto :goto_5

    :cond_11
    const/16 v17, 0x0

    goto :goto_5

    .line 2034
    .restart local v17    # "isDeltaXLeft":Z
    :cond_12
    const/16 v22, 0x0

    goto :goto_6

    .line 2035
    :cond_13
    if-gez v32, :cond_14

    const/16 v22, 0x1

    goto :goto_6

    :cond_14
    const/16 v22, 0x0

    goto :goto_6

    .line 2039
    .restart local v22    # "isVelocityXLeft":Z
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    add-int/lit8 v15, v2, -0x1

    goto :goto_7

    .line 2041
    :cond_16
    if-eqz v21, :cond_17

    if-eqz v17, :cond_17

    if-eqz v18, :cond_18

    :cond_17
    if-eqz v18, :cond_1a

    if-eqz v22, :cond_1a

    .line 2042
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1a

    .line 2043
    if-eqz v29, :cond_19

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    .line 2045
    .restart local v15    # "finalPage":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v15, v1}, Lcom/android/launcher4/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_8

    .line 2044
    .end local v15    # "finalPage":I
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    add-int/lit8 v15, v2, 0x1

    goto :goto_9

    .line 2047
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->snapToDestination()V

    goto :goto_8

    .line 2049
    .end local v17    # "isDeltaXLeft":Z
    .end local v20    # "isRtl":Z
    .end local v22    # "isVelocityXLeft":Z
    .end local v29    # "returnToOriginalPage":Z
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mTouchState:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1d

    .line 2054
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 2055
    .local v23, "nextPage":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    move/from16 v0, v23

    if-eq v0, v2, :cond_1c

    .line 2056
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher4/PagedView;->snapToPage(I)V

    goto/16 :goto_8

    .line 2058
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->snapToDestination()V

    goto/16 :goto_8

    .line 2061
    .end local v23    # "nextPage":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2065
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getScaleX()F

    move-result v30

    .line 2066
    .local v30, "scaleX":F
    move/from16 v0, v32

    neg-int v2, v0

    int-to-float v2, v2

    mul-float v2, v2, v30

    float-to-int v5, v2

    .line 2067
    .local v5, "vX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v30

    float-to-int v3, v2

    .line 2069
    .local v3, "initialScrollX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getScrollY()I

    move-result v4

    const/4 v6, 0x0

    .line 2070
    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2069
    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2071
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->invalidate()V

    goto/16 :goto_8

    .line 2073
    .end local v3    # "initialScrollX":I
    .end local v5    # "vX":I
    .end local v12    # "activePointerId":I
    .end local v13    # "deltaX":I
    .end local v18    # "isFling":Z
    .end local v21    # "isSignificantMove":Z
    .end local v26    # "pageWidth":I
    .end local v27    # "pointerIndex":I
    .end local v30    # "scaleX":F
    .end local v31    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v32    # "velocityX":I
    .end local v33    # "x":F
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mTouchState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_21

    .line 2077
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 2078
    .restart local v23    # "nextPage":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    move/from16 v0, v23

    if-eq v0, v2, :cond_20

    .line 2079
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher4/PagedView;->snapToPage(I)V

    goto/16 :goto_8

    .line 2081
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->snapToDestination()V

    goto/16 :goto_8

    .line 2083
    .end local v23    # "nextPage":I
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mTouchState:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_22

    .line 2085
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    .line 2086
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mLastMotionY:F

    .line 2091
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    .line 2092
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/PagedView;->mLastMotionY:F

    .line 2091
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher4/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v28

    .line 2093
    .restart local v28    # "pt":[F
    const/4 v2, 0x0

    aget v2, v28, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mParentDownMotionX:F

    .line 2094
    const/4 v2, 0x1

    aget v2, v28, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/PagedView;->mParentDownMotionY:F

    .line 2095
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 2096
    const/16 v16, 0x0

    .line 2105
    .local v16, "handledFling":Z
    if-nez v16, :cond_c

    .line 2107
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mParentDownMotionX:F

    float-to-int v2, v2

    .line 2108
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/PagedView;->mParentDownMotionY:F

    float-to-int v4, v4

    .line 2106
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/launcher4/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v2

    .line 2108
    if-eqz v2, :cond_c

    .line 2109
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->onDropToDelete()V

    goto/16 :goto_8

    .line 2112
    .end local v16    # "handledFling":Z
    .end local v28    # "pt":[F
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher4/PagedView;->mCancelTap:Z

    if-nez v2, :cond_c

    .line 2113
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher4/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    .line 2124
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/PagedView;->mTouchState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_23

    .line 2125
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->snapToDestination()V

    .line 2127
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->resetTouchState()V

    goto/16 :goto_1

    .line 2131
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher4/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2132
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1816
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2160
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher4/Launcher;->onClick(Landroid/view/View;)V

    .line 2161
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 1720
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->dampedOverScroll(F)V

    .line 1721
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/android/launcher4/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/PagedView;->mIsPageMoving:Z

    .line 620
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->onPageBeginMoving()V

    .line 622
    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/android/launcher4/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/PagedView;->mIsPageMoving:Z

    .line 627
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->onPageEndMoving()V

    .line 629
    :cond_0
    return-void
.end method

.method pauseScrolling()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 563
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 3027
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3046
    :goto_0
    return v0

    .line 3030
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 3046
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3032
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 3033
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->scrollRight()V

    goto :goto_0

    .line 3039
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 3040
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->scrollLeft()V

    goto :goto_0

    .line 3030
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 2439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/PagedView;->mCancelTap:Z

    .line 2440
    invoke-super {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public removeAllViewsInLayout()V
    .locals 2

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPageIndicator:Lcom/android/launcher4/PageIndicator;

    iget-boolean v1, p0, Lcom/android/launcher4/PagedView;->mAllowPagedViewAnimations:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher4/PageIndicator;->removeAllMarkers(Z)V

    .line 1173
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1174
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1145
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher4/PagedView;->removeMarkerForView(I)V

    .line 1146
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1147
    return-void
.end method

.method public removeViewAt(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1161
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->removeViewAt(I)V

    .line 1162
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1163
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1153
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher4/PagedView;->removeMarkerForView(I)V

    .line 1154
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1155
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 2230
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2231
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedView;->indexToPage(I)I

    move-result v0

    .line 2232
    .local v0, "page":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2233
    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->snapToPage(I)V

    .line 2235
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1299
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedView;->indexToPage(I)I

    move-result v0

    .line 1300
    .local v0, "page":I
    iget v1, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1301
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->snapToPage(I)V

    .line 1302
    const/4 v1, 0x1

    .line 1304
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1394
    if-eqz p1, :cond_0

    .line 1397
    iget v1, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1398
    .local v0, "currentPage":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1400
    .end local v0    # "currentPage":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1401
    return-void
.end method

.method resumeScrolling()V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 7
    .param p1, "screenCenter"    # I

    .prologue
    .line 1081
    iget v5, p0, Lcom/android/launcher4/PagedView;->mOverScrollX:I

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/android/launcher4/PagedView;->mOverScrollX:I

    iget v6, p0, Lcom/android/launcher4/PagedView;->mMaxScrollX:I

    if-gt v5, v6, :cond_1

    const/4 v3, 0x0

    .line 1083
    .local v3, "isInOverscroll":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher4/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    .line 1084
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 1093
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->invalidate()V

    .line 1095
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 1081
    .end local v3    # "isInOverscroll":Z
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 1085
    .restart local v2    # "i":I
    .restart local v3    # "isInOverscroll":Z
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1086
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 1087
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher4/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1089
    .local v4, "scrollProgress":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v0, v5, v6

    .line 1090
    .local v0, "alpha":F
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1084
    .end local v0    # "alpha":F
    .end local v4    # "scrollProgress":F
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public scrollBy(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 662
    iget v0, p0, Lcom/android/launcher4/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/PagedView;->scrollTo(II)V

    .line 663
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 2407
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_0

    .line 2408
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->snapToPage(I)V

    .line 2409
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 2412
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2413
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->snapToPage(I)V

    .line 2414
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 668
    iget-boolean v6, p0, Lcom/android/launcher4/PagedView;->mFreeScroll:Z

    if-eqz v6, :cond_0

    .line 669
    iget v6, p0, Lcom/android/launcher4/PagedView;->mFreeScrollMaxScrollX:I

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 670
    iget v6, p0, Lcom/android/launcher4/PagedView;->mFreeScrollMinScrollX:I

    invoke-static {p1, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->isLayoutRtl()Z

    move-result v0

    .line 674
    .local v0, "isRtl":Z
    iput p1, p0, Lcom/android/launcher4/PagedView;->mUnboundedScrollX:I

    .line 676
    if-eqz v0, :cond_4

    iget v6, p0, Lcom/android/launcher4/PagedView;->mMaxScrollX:I

    if-le p1, v6, :cond_3

    move v2, v4

    .line 677
    .local v2, "isXBeforeFirstPage":Z
    :goto_0
    if-eqz v0, :cond_7

    if-gez p1, :cond_6

    move v1, v4

    .line 678
    .local v1, "isXAfterLastPage":Z
    :goto_1
    if-eqz v2, :cond_a

    .line 679
    invoke-super {p0, v5, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 680
    iget-boolean v6, p0, Lcom/android/launcher4/PagedView;->mAllowOverScroll:Z

    if-eqz v6, :cond_1

    .line 681
    if-eqz v0, :cond_9

    .line 682
    iget v6, p0, Lcom/android/launcher4/PagedView;->mMaxScrollX:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    invoke-virtual {p0, v6}, Lcom/android/launcher4/PagedView;->overScroll(F)V

    .line 701
    :cond_1
    :goto_2
    int-to-float v6, p1

    iput v6, p0, Lcom/android/launcher4/PagedView;->mTouchX:F

    .line 702
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    long-to-float v6, v6

    const v7, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/launcher4/PagedView;->mSmoothingTime:F

    .line 705
    invoke-virtual {p0, v4}, Lcom/android/launcher4/PagedView;->isReordering(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 706
    iget v6, p0, Lcom/android/launcher4/PagedView;->mParentDownMotionX:F

    .line 707
    iget v7, p0, Lcom/android/launcher4/PagedView;->mParentDownMotionY:F

    .line 706
    invoke-virtual {p0, p0, v6, v7}, Lcom/android/launcher4/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v3

    .line 708
    .local v3, "p":[F
    aget v5, v3, v5

    iput v5, p0, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    .line 709
    aget v4, v3, v4

    iput v4, p0, Lcom/android/launcher4/PagedView;->mLastMotionY:F

    .line 710
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 712
    .end local v3    # "p":[F
    :cond_2
    return-void

    .end local v1    # "isXAfterLastPage":Z
    .end local v2    # "isXBeforeFirstPage":Z
    :cond_3
    move v2, v5

    .line 676
    goto :goto_0

    :cond_4
    if-gez p1, :cond_5

    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_0

    .restart local v2    # "isXBeforeFirstPage":Z
    :cond_6
    move v1, v5

    .line 677
    goto :goto_1

    :cond_7
    iget v6, p0, Lcom/android/launcher4/PagedView;->mMaxScrollX:I

    if-le p1, v6, :cond_8

    move v1, v4

    goto :goto_1

    :cond_8
    move v1, v5

    goto :goto_1

    .line 684
    .restart local v1    # "isXAfterLastPage":Z
    :cond_9
    int-to-float v6, p1

    invoke-virtual {p0, v6}, Lcom/android/launcher4/PagedView;->overScroll(F)V

    goto :goto_2

    .line 687
    :cond_a
    if-eqz v1, :cond_c

    .line 688
    iget v6, p0, Lcom/android/launcher4/PagedView;->mMaxScrollX:I

    invoke-super {p0, v6, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 689
    iget-boolean v6, p0, Lcom/android/launcher4/PagedView;->mAllowOverScroll:Z

    if-eqz v6, :cond_1

    .line 690
    if-eqz v0, :cond_b

    .line 691
    int-to-float v6, p1

    invoke-virtual {p0, v6}, Lcom/android/launcher4/PagedView;->overScroll(F)V

    goto :goto_2

    .line 693
    :cond_b
    iget v6, p0, Lcom/android/launcher4/PagedView;->mMaxScrollX:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    invoke-virtual {p0, v6}, Lcom/android/launcher4/PagedView;->overScroll(F)V

    goto :goto_2

    .line 697
    :cond_c
    iput p1, p0, Lcom/android/launcher4/PagedView;->mOverScrollX:I

    .line 698
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_2
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 3014
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    .line 3015
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 3017
    :cond_0
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .param p1, "allowLongPress"    # Z

    .prologue
    .line 2448
    iput-boolean p1, p0, Lcom/android/launcher4/PagedView;->mAllowLongPress:Z

    .line 2449
    return-void
.end method

.method setCurrentPage(I)V
    .locals 2
    .param p1, "currentPage"    # I

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 582
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher4/PagedView;->mNextPage:I

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 595
    :goto_0
    return-void

    .line 590
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/PagedView;->mForceScreenScrolled:Z

    .line 591
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    .line 592
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->updateCurrentPageScroll()V

    .line 593
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->notifyPageSwitchListener()V

    .line 594
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->invalidate()V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/PagedView;->mIsDataReady:Z

    .line 507
    return-void
.end method

.method setDeleteDropTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/launcher4/PagedView;->mDeleteDropTarget:Landroid/view/View;

    .line 401
    return-void
.end method

.method public setMinScale(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 437
    iput p1, p0, Lcom/android/launcher4/PagedView;->mMinScale:F

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/PagedView;->mUseMinScale:Z

    .line 439
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->requestLayout()V

    .line 440
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/launcher4/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 653
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageCount()I

    move-result v0

    .line 654
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 657
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 658
    return-void

    .line 655
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .locals 0
    .param p1, "viewIndex"    # I
    .param p2, "isHovering"    # Z

    .prologue
    .line 2960
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .param p1, "pageSpacing"    # I

    .prologue
    .line 967
    iput p1, p0, Lcom/android/launcher4/PagedView;->mPageSpacing:I

    .line 968
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->requestLayout()V

    .line 969
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/launcher4/PagedView$PageSwitchListener;)V
    .locals 3
    .param p1, "pageSwitchListener"    # Lcom/android/launcher4/PagedView$PageSwitchListener;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/launcher4/PagedView;->mPageSwitchListener:Lcom/android/launcher4/PagedView$PageSwitchListener;

    .line 487
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPageSwitchListener:Lcom/android/launcher4/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mPageSwitchListener:Lcom/android/launcher4/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 489
    iget v2, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    .line 488
    invoke-interface {v0, v1, v2}, Lcom/android/launcher4/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 491
    :cond_0
    return-void
.end method

.method setRestorePage(I)V
    .locals 0
    .param p1, "restorePage"    # I

    .prologue
    .line 602
    iput p1, p0, Lcom/android/launcher4/PagedView;->mRestorePage:I

    .line 603
    return-void
.end method

.method public setScaleX(F)V
    .locals 4
    .param p1, "scaleX"    # F

    .prologue
    const/4 v3, 0x1

    .line 444
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 445
    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    iget v1, p0, Lcom/android/launcher4/PagedView;->mParentDownMotionX:F

    .line 447
    iget v2, p0, Lcom/android/launcher4/PagedView;->mParentDownMotionY:F

    .line 446
    invoke-virtual {p0, p0, v1, v2}, Lcom/android/launcher4/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 448
    .local v0, "p":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    .line 449
    aget v1, v0, v3

    iput v1, p0, Lcom/android/launcher4/PagedView;->mLastMotionY:F

    .line 450
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 452
    .end local v0    # "p":[F
    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1240
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/android/launcher4/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    return v0
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 2275
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 2276
    const/16 v1, 0x2ee

    .line 2275
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/PagedView;->snapToPage(II)V

    .line 2277
    return-void
.end method

.method protected snapToPage(I)V
    .locals 1
    .param p1, "whichPage"    # I

    .prologue
    .line 2344
    const/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher4/PagedView;->snapToPage(II)V

    .line 2345
    return-void
.end method

.method protected snapToPage(II)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2352
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher4/PagedView;->snapToPage(IIZ)V

    .line 2353
    return-void
.end method

.method protected snapToPage(III)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    .line 2365
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher4/PagedView;->snapToPage(IIIZ)V

    .line 2366
    return-void
.end method

.method protected snapToPage(IIIZ)V
    .locals 8
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I
    .param p4, "immediate"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 2370
    iput p1, p0, Lcom/android/launcher4/PagedView;->mNextPage:I

    .line 2371
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 2372
    .local v6, "focusedChild":Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    .line 2373
    iget v0, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 2374
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 2377
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher4/PagedView;->sendScrollAccessibilityEvent()V

    .line 2379
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->pageBeginMoving()V

    .line 2380
    invoke-virtual {p0, p3}, Lcom/android/launcher4/PagedView;->awakenScrollBars(I)Z

    .line 2381
    if-eqz p4, :cond_4

    .line 2382
    const/4 p3, 0x0

    .line 2387
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2388
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2390
    :cond_2
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/launcher4/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2392
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->notifyPageSwitchListener()V

    .line 2395
    if-eqz p4, :cond_3

    .line 2396
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->computeScroll()V

    .line 2400
    :cond_3
    iput-boolean v7, p0, Lcom/android/launcher4/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 2402
    iput-boolean v7, p0, Lcom/android/launcher4/PagedView;->mForceScreenScrolled:Z

    .line 2403
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->invalidate()V

    .line 2404
    return-void

    .line 2383
    :cond_4
    if-nez p3, :cond_1

    .line 2384
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    goto :goto_0
.end method

.method protected snapToPage(IIZ)V
    .locals 5
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "immediate"    # Z

    .prologue
    .line 2356
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2358
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->getScrollForPage(I)I

    move-result v1

    .line 2359
    .local v1, "newX":I
    iget v2, p0, Lcom/android/launcher4/PagedView;->mUnboundedScrollX:I

    .line 2360
    .local v2, "sX":I
    sub-int v0, v1, v2

    .line 2361
    .local v0, "delta":I
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/launcher4/PagedView;->snapToPage(IIIZ)V

    .line 2362
    return-void
.end method

.method protected snapToPageImmediately(I)V
    .locals 2
    .param p1, "whichPage"    # I

    .prologue
    .line 2348
    const/16 v0, 0x2ee

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher4/PagedView;->snapToPage(IIZ)V

    .line 2349
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 9
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 2303
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2304
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getViewportWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 2306
    .local v4, "halfScreenSize":I
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->getScrollForPage(I)I

    move-result v5

    .line 2307
    .local v5, "newX":I
    iget v6, p0, Lcom/android/launcher4/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 2308
    .local v0, "delta":I
    const/4 v3, 0x0

    .line 2310
    .local v3, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/launcher4/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_0

    .line 2314
    const/16 v6, 0x2ee

    invoke-virtual {p0, p1, v6}, Lcom/android/launcher4/PagedView;->snapToPage(II)V

    .line 2341
    :goto_0
    return-void

    .line 2325
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    .line 2326
    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 2325
    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2327
    .local v2, "distanceRatio":F
    int-to-float v6, v4

    int-to-float v7, v4

    .line 2328
    invoke-virtual {p0, v2}, Lcom/android/launcher4/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    .line 2327
    add-float v1, v6, v7

    .line 2330
    .local v1, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 2331
    iget v6, p0, Lcom/android/launcher4/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2338
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 2340
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/launcher4/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public startReordering(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x3f933333    # 1.15f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2651
    invoke-virtual {p0, p1}, Lcom/android/launcher4/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2653
    .local v0, "dragViewIndex":I
    iget v3, p0, Lcom/android/launcher4/PagedView;->mTouchState:I

    if-eqz v3, :cond_1

    .line 2673
    :cond_0
    :goto_0
    return v1

    .line 2656
    :cond_1
    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    aput v1, v3, v1

    .line 2657
    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v2

    .line 2658
    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v3}, Lcom/android/launcher4/PagedView;->getOverviewModePages([I)V

    .line 2659
    iput-boolean v2, p0, Lcom/android/launcher4/PagedView;->mReorderingStarted:Z

    .line 2662
    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v1

    if-gt v3, v0, :cond_0

    .line 2663
    iget-object v3, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v2

    if-gt v0, v3, :cond_0

    .line 2665
    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    .line 2666
    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 2667
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2668
    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher4/PagedView;->mDragViewBaselineLeft:F

    .line 2669
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedView;->disableFreeScroll(I)V

    .line 2670
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->onStartReordering()V

    move v1, v2

    .line 2671
    goto :goto_0
.end method

.method public abstract syncPageItems(IZ)V
.end method

.method public abstract syncPages()V
.end method

.method protected updateCurrentPageScroll()V
    .locals 3

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "newX":I
    iget v1, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getPageCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 548
    iget v1, p0, Lcom/android/launcher4/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher4/PagedView;->getScrollForPage(I)I

    move-result v0

    .line 550
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/PagedView;->scrollTo(II)V

    .line 551
    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 552
    iget-object v1, p0, Lcom/android/launcher4/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 553
    return-void
.end method

.method updateDragViewTranslationDuringDrag()V
    .locals 5

    .prologue
    .line 422
    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 423
    iget v2, p0, Lcom/android/launcher4/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/android/launcher4/PagedView;->mDownMotionX:F

    sub-float/2addr v2, v3

    .line 424
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher4/PagedView;->mDownScrollX:F

    sub-float/2addr v3, v4

    .line 423
    add-float/2addr v2, v3

    .line 425
    iget v3, p0, Lcom/android/launcher4/PagedView;->mDragViewBaselineLeft:F

    iget-object v4, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 423
    add-float v0, v2, v3

    .line 426
    .local v0, "x":F
    iget v2, p0, Lcom/android/launcher4/PagedView;->mLastMotionY:F

    iget v3, p0, Lcom/android/launcher4/PagedView;->mDownMotionY:F

    sub-float v1, v2, v3

    .line 427
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 428
    iget-object v2, p0, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 434
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    return-void
.end method

.method updateFreescrollBounds()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1742
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->getOverviewModePages([I)V

    .line 1743
    invoke-virtual {p0}, Lcom/android/launcher4/PagedView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/PagedView;->mFreeScrollMinScrollX:I

    .line 1745
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/PagedView;->mFreeScrollMaxScrollX:I

    .line 1750
    :goto_0
    return-void

    .line 1747
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/PagedView;->mFreeScrollMinScrollX:I

    .line 1748
    iget-object v0, p0, Lcom/android/launcher4/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher4/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/PagedView;->mFreeScrollMaxScrollX:I

    goto :goto_0
.end method
