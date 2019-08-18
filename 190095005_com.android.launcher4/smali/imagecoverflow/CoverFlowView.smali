.class public Limagecoverflow/CoverFlowView;
.super Landroid/view/View;
.source "CoverFlowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Limagecoverflow/CoverFlowView$CoverFlowGravity;,
        Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;,
        Limagecoverflow/CoverFlowView$CoverFlowListener;,
        Limagecoverflow/CoverFlowView$LongClickRunnable;,
        Limagecoverflow/CoverFlowView$RecycleBin;,
        Limagecoverflow/CoverFlowView$TopImageLongClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Limagecoverflow/CoverFlowAdapter;",
        ">",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field public static ActionState:I = 0x0

.field private static final CARD_SCALE:F = 0.25f

.field protected static final DEFAULT_VISIBLE_IMAGES:I = 0x3

.field private static final DURATION:I = 0xc8

.field private static final FRICTION:F = 10.0f

.field private static final LONG_CLICK_DELAY:I

.field private static final MAX_SPEED:F = 6.0f

.field private static MOVE_POS_MULTIPLE:F = 0.0f

.field private static final MOVE_SPEED_MULTIPLE:F = 1.0f

.field static final NO_POSITION:I = -0x1

.field private static final TOUCH_MINIMUM_MOVE:I = 0x5

.field private static final VIEW_LOG_TAG:Ljava/lang/String; = "CoverFlowView"


# instance fields
.field private final ALPHA_DATUM:I

.field protected final CHILD_SPACING:I

.field protected final INVALID_POSITION:I

.field private STANDARD_ALPHA:I

.field private mAdapter:Limagecoverflow/CoverFlowAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mChildHeight:I

.field private mChildTransformer:Landroid/graphics/Matrix;

.field private mChildTranslateY:I

.field protected mCoverFlowCenter:I

.field private mCoverFlowListener:Limagecoverflow/CoverFlowView$CoverFlowListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Limagecoverflow/CoverFlowView$CoverFlowListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mCoverFlowPadding:Landroid/graphics/Rect;

.field mDataSetChanged:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDrawChildPaint:Landroid/graphics/Paint;

.field private mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mDuration:F

.field protected mGravity:Limagecoverflow/CoverFlowView$CoverFlowGravity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Limagecoverflow/CoverFlowView$CoverFlowGravity;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mImageRecorder:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private mItemCount:I

.field protected mLayoutMode:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;"
        }
    .end annotation
.end field

.field private mLongClickListener:Limagecoverflow/CoverFlowView$TopImageLongClickListener;

.field private mLongClickPosted:Z

.field private mLongClickRunnable:Limagecoverflow/CoverFlowView$LongClickRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Limagecoverflow/CoverFlowView",
            "<TT;>.",
            "LongClickRunnable;"
        }
    .end annotation
.end field

.field private mLongClickTriggled:Z

.field private mOffset:F

.field private mRecycler:Limagecoverflow/CoverFlowView$RecycleBin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Limagecoverflow/CoverFlowView",
            "<TT;>.RecycleBin;"
        }
    .end annotation
.end field

.field private mReflectionTransformer:Landroid/graphics/Matrix;

.field private mReflectionTranslateY:I

.field mRunnableSetSelection:Ljava/lang/Runnable;

.field private mScroller:Landroid/widget/Scroller;

.field private mStartOffset:F

.field private mStartSpeed:F

.field private mStartTime:J

.field private mTopImageIndex:I

.field private mTouchMoved:Z

.field private mTouchRect:Landroid/graphics/RectF;

.field private mTouchStartPos:F

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private mVelocity:Landroid/view/VelocityTracker;

.field private mVisibleChildCount:I

.field protected mVisibleImages:I

.field private mWidth:I

.field private reflectGap:I

.field private reflectHeightFraction:F

.field temp:I

.field temps:Ljava/lang/String;

.field private topImageBkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private topImageClickEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/high16 v0, 0x41a00000    # 20.0f

    sput v0, Limagecoverflow/CoverFlowView;->MOVE_POS_MULTIPLE:F

    .line 98
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    .line 97
    sput v0, Limagecoverflow/CoverFlowView;->LONG_CLICK_DELAY:I

    .line 165
    const/4 v0, 0x0

    sput v0, Limagecoverflow/CoverFlowView;->ActionState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Limagecoverflow/CoverFlowView;->INVALID_POSITION:I

    .line 81
    const/4 v0, 0x3

    iput v0, p0, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    .line 84
    const/16 v0, -0xc8

    iput v0, p0, Limagecoverflow/CoverFlowView;->CHILD_SPACING:I

    .line 87
    const/16 v0, 0x4c

    iput v0, p0, Limagecoverflow/CoverFlowView;->ALPHA_DATUM:I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Limagecoverflow/CoverFlowView;->topImageClickEnable:Z

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mHandler:Landroid/os/Handler;

    .line 176
    new-instance v0, Limagecoverflow/CoverFlowView$1;

    invoke-direct {v0, p0}, Limagecoverflow/CoverFlowView$1;-><init>(Limagecoverflow/CoverFlowView;)V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 783
    new-instance v0, Limagecoverflow/CoverFlowView$2;

    invoke-direct {v0, p0}, Limagecoverflow/CoverFlowView$2;-><init>(Limagecoverflow/CoverFlowView;)V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mRunnableSetSelection:Ljava/lang/Runnable;

    .line 218
    invoke-direct {p0}, Limagecoverflow/CoverFlowView;->init()V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 222
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Limagecoverflow/CoverFlowView;->INVALID_POSITION:I

    .line 81
    const/4 v0, 0x3

    iput v0, p0, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    .line 84
    const/16 v0, -0xc8

    iput v0, p0, Limagecoverflow/CoverFlowView;->CHILD_SPACING:I

    .line 87
    const/16 v0, 0x4c

    iput v0, p0, Limagecoverflow/CoverFlowView;->ALPHA_DATUM:I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Limagecoverflow/CoverFlowView;->topImageClickEnable:Z

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mHandler:Landroid/os/Handler;

    .line 176
    new-instance v0, Limagecoverflow/CoverFlowView$1;

    invoke-direct {v0, p0}, Limagecoverflow/CoverFlowView$1;-><init>(Limagecoverflow/CoverFlowView;)V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 783
    new-instance v0, Limagecoverflow/CoverFlowView$2;

    invoke-direct {v0, p0}, Limagecoverflow/CoverFlowView$2;-><init>(Limagecoverflow/CoverFlowView;)V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mRunnableSetSelection:Ljava/lang/Runnable;

    .line 223
    invoke-direct {p0, p1, p2}, Limagecoverflow/CoverFlowView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 224
    invoke-direct {p0}, Limagecoverflow/CoverFlowView;->init()V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 228
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Limagecoverflow/CoverFlowView;->INVALID_POSITION:I

    .line 81
    const/4 v0, 0x3

    iput v0, p0, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    .line 84
    const/16 v0, -0xc8

    iput v0, p0, Limagecoverflow/CoverFlowView;->CHILD_SPACING:I

    .line 87
    const/16 v0, 0x4c

    iput v0, p0, Limagecoverflow/CoverFlowView;->ALPHA_DATUM:I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Limagecoverflow/CoverFlowView;->topImageClickEnable:Z

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mHandler:Landroid/os/Handler;

    .line 176
    new-instance v0, Limagecoverflow/CoverFlowView$1;

    invoke-direct {v0, p0}, Limagecoverflow/CoverFlowView$1;-><init>(Limagecoverflow/CoverFlowView;)V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 783
    new-instance v0, Limagecoverflow/CoverFlowView$2;

    invoke-direct {v0, p0}, Limagecoverflow/CoverFlowView$2;-><init>(Limagecoverflow/CoverFlowView;)V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mRunnableSetSelection:Ljava/lang/Runnable;

    .line 229
    invoke-direct {p0, p1, p2}, Limagecoverflow/CoverFlowView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 230
    invoke-direct {p0}, Limagecoverflow/CoverFlowView;->init()V

    .line 231
    return-void
.end method

.method static synthetic access$0(Limagecoverflow/CoverFlowView;)Limagecoverflow/CoverFlowAdapter;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    return-object v0
.end method

.method static synthetic access$1(Limagecoverflow/CoverFlowView;)I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Limagecoverflow/CoverFlowView;->mTopImageIndex:I

    return v0
.end method

.method static synthetic access$10(Limagecoverflow/CoverFlowView;)V
    .locals 0

    .prologue
    .line 968
    invoke-direct {p0}, Limagecoverflow/CoverFlowView;->driveAnimation()V

    return-void
.end method

.method static synthetic access$11(Limagecoverflow/CoverFlowView;)Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$2(Limagecoverflow/CoverFlowView;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Limagecoverflow/CoverFlowView;->mItemCount:I

    return v0
.end method

.method static synthetic access$3(Limagecoverflow/CoverFlowView;F)V
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Limagecoverflow/CoverFlowView;->mOffset:F

    return-void
.end method

.method static synthetic access$4(Limagecoverflow/CoverFlowView;)F
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Limagecoverflow/CoverFlowView;->mOffset:F

    return v0
.end method

.method static synthetic access$5(Limagecoverflow/CoverFlowView;I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Limagecoverflow/CoverFlowView;->mItemCount:I

    return-void
.end method

.method static synthetic access$6(Limagecoverflow/CoverFlowView;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Limagecoverflow/CoverFlowView;->resetCoverFlow()V

    return-void
.end method

.method static synthetic access$7(Limagecoverflow/CoverFlowView;)Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Limagecoverflow/CoverFlowView;->mTouchMoved:Z

    return v0
.end method

.method static synthetic access$8(Limagecoverflow/CoverFlowView;)Limagecoverflow/CoverFlowView$TopImageLongClickListener;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mLongClickListener:Limagecoverflow/CoverFlowView$TopImageLongClickListener;

    return-object v0
.end method

.method static synthetic access$9(Limagecoverflow/CoverFlowView;Z)V
    .locals 0

    .prologue
    .line 160
    iput-boolean p1, p0, Limagecoverflow/CoverFlowView;->mLongClickTriggled:Z

    return-void
.end method

.method private driveAnimation()V
    .locals 6

    .prologue
    .line 969
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Limagecoverflow/CoverFlowView;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v0, v1, v2

    .line 970
    .local v0, "elapsed":F
    iget v1, p0, Limagecoverflow/CoverFlowView;->mDuration:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 971
    invoke-direct {p0}, Limagecoverflow/CoverFlowView;->endAnimation()V

    .line 976
    :goto_0
    return-void

    .line 973
    :cond_0
    invoke-direct {p0, v0}, Limagecoverflow/CoverFlowView;->updateAnimationAtElapsed(F)V

    .line 974
    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Limagecoverflow/CoverFlowView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private endAnimation()V
    .locals 4

    .prologue
    .line 979
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 980
    iget v0, p0, Limagecoverflow/CoverFlowView;->mOffset:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Limagecoverflow/CoverFlowView;->mOffset:F

    .line 982
    invoke-virtual {p0}, Limagecoverflow/CoverFlowView;->invalidate()V

    .line 984
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Limagecoverflow/CoverFlowView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 985
    const/4 v0, 0x0

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 987
    :cond_0
    return-void
.end method

.method private getActuallyPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1010
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    if-nez v1, :cond_0

    .line 1011
    const/4 v1, -0x1

    .line 1025
    :goto_0
    return v1

    .line 1014
    :cond_0
    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    invoke-virtual {v1}, Limagecoverflow/CoverFlowAdapter;->getCount()I

    move-result v0

    .line 1015
    .local v0, "max":I
    iget v1, p0, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    add-int/2addr p1, v1

    .line 1017
    :cond_1
    :goto_1
    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    move v1, p1

    .line 1025
    goto :goto_0

    .line 1018
    :cond_2
    if-gez p1, :cond_3

    .line 1019
    add-int/2addr p1, v0

    .line 1020
    goto :goto_1

    :cond_3
    if-lt p1, v0, :cond_1

    .line 1021
    sub-int/2addr p1, v0

    goto :goto_1
.end method

.method private imageOnTop(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    .line 650
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    iput p1, p0, Limagecoverflow/CoverFlowView;->mTopImageIndex:I

    .line 653
    sget-object v0, Lcom/android/launcher4/Launcher;->coverFlowText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 655
    iget v0, p0, Limagecoverflow/CoverFlowView;->mTopImageIndex:I

    packed-switch v0, :pswitch_data_0

    .line 695
    :cond_0
    :goto_0
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mImageRecorder:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 697
    .local v9, "wAndh":[I
    iget v0, p0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    int-to-float v0, v0

    iget v1, p0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    int-to-float v1, v1

    .line 698
    iget v2, p0, Limagecoverflow/CoverFlowView;->reflectHeightFraction:F

    mul-float/2addr v1, v2

    .line 697
    sub-float/2addr v0, v1

    .line 698
    iget v1, p0, Limagecoverflow/CoverFlowView;->reflectGap:I

    int-to-float v1, v1

    .line 697
    sub-float/2addr v0, v1

    float-to-int v7, v0

    .line 699
    .local v7, "heightInView":I
    int-to-float v0, v7

    const/4 v1, 0x1

    aget v1, v9, v1

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 700
    .local v8, "scale":F
    const/4 v0, 0x0

    aget v0, v9, v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v10, v0

    .line 702
    .local v10, "widthInView":I
    const-string v0, "CoverFlowView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "height ==>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width ==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 703
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "scale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 702
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mTouchRect:Landroid/graphics/RectF;

    iget v1, p0, Limagecoverflow/CoverFlowView;->mWidth:I

    shr-int/lit8 v1, v1, 0x1

    shr-int/lit8 v2, v10, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 706
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mTouchRect:Landroid/graphics/RectF;

    iget v1, p0, Limagecoverflow/CoverFlowView;->mChildTranslateY:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 707
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mTouchRect:Landroid/graphics/RectF;

    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mTouchRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, v10

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 708
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mTouchRect:Landroid/graphics/RectF;

    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mTouchRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, v7

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 710
    const-string v0, "CoverFlowView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rect==>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Limagecoverflow/CoverFlowView;->mTouchRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mCoverFlowListener:Limagecoverflow/CoverFlowView$CoverFlowListener;

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mCoverFlowListener:Limagecoverflow/CoverFlowView$CoverFlowListener;

    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mTouchRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 714
    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mTouchRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mTouchRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mTouchRect:Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move v2, p1

    .line 713
    invoke-interface/range {v0 .. v6}, Limagecoverflow/CoverFlowView$CoverFlowListener;->imageOnTop(Limagecoverflow/CoverFlowView;IFFFF)V

    .line 716
    :cond_1
    return-void

    .line 658
    .end local v7    # "heightInView":I
    .end local v8    # "scale":F
    .end local v9    # "wAndh":[I
    .end local v10    # "widthInView":I
    :pswitch_0
    sget-object v0, Lcom/android/launcher4/Launcher;->coverFlowText:Landroid/widget/TextView;

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 661
    :pswitch_1
    sget-object v0, Lcom/android/launcher4/Launcher;->coverFlowText:Landroid/widget/TextView;

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 664
    :pswitch_2
    sget-object v0, Lcom/android/launcher4/Launcher;->coverFlowText:Landroid/widget/TextView;

    const v1, 0x7f0c008b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 667
    :pswitch_3
    sget-object v0, Lcom/android/launcher4/Launcher;->coverFlowText:Landroid/widget/TextView;

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 670
    :pswitch_4
    sget-object v0, Lcom/android/launcher4/Launcher;->coverFlowText:Landroid/widget/TextView;

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 673
    :pswitch_5
    sget-object v0, Lcom/android/launcher4/Launcher;->coverFlowText:Landroid/widget/TextView;

    const v1, 0x7f0c0074

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 676
    :pswitch_6
    sget-object v0, Lcom/android/launcher4/Launcher;->coverFlowText:Landroid/widget/TextView;

    const v1, 0x7f0c0095

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 679
    :pswitch_7
    sget-object v0, Lcom/android/launcher4/Launcher;->coverFlowText:Landroid/widget/TextView;

    const v1, 0x7f0c006b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 682
    :pswitch_8
    sget-object v0, Lcom/android/launcher4/Launcher;->coverFlowText:Landroid/widget/TextView;

    const v1, 0x7f0c0093

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 685
    :pswitch_9
    sget-object v0, Lcom/android/launcher4/Launcher;->coverFlowText:Landroid/widget/TextView;

    const v1, 0x7f0c0096

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private init()V
    .locals 3

    .prologue
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 262
    invoke-virtual {p0, v2}, Limagecoverflow/CoverFlowView;->setWillNotDraw(Z)V

    .line 263
    invoke-virtual {p0, v1}, Limagecoverflow/CoverFlowView;->setClickable(Z)V

    .line 265
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mChildTransformer:Landroid/graphics/Matrix;

    .line 266
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mReflectionTransformer:Landroid/graphics/Matrix;

    .line 268
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mTouchRect:Landroid/graphics/RectF;

    .line 270
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mImageRecorder:Landroid/util/SparseArray;

    .line 272
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mDrawChildPaint:Landroid/graphics/Paint;

    .line 273
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mDrawChildPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 274
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mDrawChildPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 276
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    .line 278
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 281
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Limagecoverflow/CoverFlowView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 282
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 281
    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mScroller:Landroid/widget/Scroller;

    .line 286
    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    const/4 v6, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    .line 234
    .line 235
    sget-object v2, Lcom/android/launcher4/R$styleable;->ImageCoverFlowView:[I

    .line 234
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 238
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    .line 237
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 239
    .local v1, "totalVisibleChildren":I
    invoke-virtual {p0, v1}, Limagecoverflow/CoverFlowView;->setVisibleImage(I)V

    .line 242
    const/4 v2, 0x1

    const/16 v3, 0x64

    const/4 v4, 0x0

    .line 241
    invoke-virtual {v0, v2, v3, v6, v4}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v2

    iput v2, p0, Limagecoverflow/CoverFlowView;->reflectHeightFraction:F

    .line 243
    iget v2, p0, Limagecoverflow/CoverFlowView;->reflectHeightFraction:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 244
    iput v5, p0, Limagecoverflow/CoverFlowView;->reflectHeightFraction:F

    .line 246
    :cond_0
    iget v2, p0, Limagecoverflow/CoverFlowView;->reflectHeightFraction:F

    div-float/2addr v2, v5

    iput v2, p0, Limagecoverflow/CoverFlowView;->reflectHeightFraction:F

    .line 248
    const/4 v2, 0x2

    .line 247
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Limagecoverflow/CoverFlowView;->reflectGap:I

    .line 250
    invoke-static {}, Limagecoverflow/CoverFlowView$CoverFlowGravity;->values()[Limagecoverflow/CoverFlowView$CoverFlowGravity;

    move-result-object v2

    .line 251
    const/4 v3, 0x4

    .line 252
    sget-object v4, Limagecoverflow/CoverFlowView$CoverFlowGravity;->CENTER_VERTICAL:Limagecoverflow/CoverFlowView$CoverFlowGravity;

    invoke-virtual {v4}, Limagecoverflow/CoverFlowView$CoverFlowGravity;->ordinal()I

    move-result v4

    .line 250
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Limagecoverflow/CoverFlowView;->mGravity:Limagecoverflow/CoverFlowView$CoverFlowGravity;

    .line 254
    invoke-static {}, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;->values()[Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    move-result-object v2

    .line 255
    const/4 v3, 0x5

    .line 256
    sget-object v4, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;->WRAP_CONTENT:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    invoke-virtual {v4}, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;->ordinal()I

    move-result v4

    .line 254
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Limagecoverflow/CoverFlowView;->mLayoutMode:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    .line 258
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    return-void
.end method

.method private makeChildTransformer(Landroid/graphics/Bitmap;IIF)V
    .locals 17
    .param p1, "child"    # Landroid/graphics/Bitmap;
    .param p2, "mid"    # I
    .param p3, "position"    # I
    .param p4, "offset"    # F

    .prologue
    .line 562
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Limagecoverflow/CoverFlowView;->mChildTransformer:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Limagecoverflow/CoverFlowView;->mReflectionTransformer:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 565
    const/high16 v15, 0x3f800000    # 1.0f

    .line 567
    .local v15, "scale":F
    move/from16 v0, p3

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 568
    const v15, 0x3fa66666    # 1.3f

    .line 572
    :cond_0
    const/16 v16, 0x0

    .line 574
    .local v16, "translateX":F
    move-object/from16 v0, p0

    iget v2, v0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    int-to-float v3, v3

    .line 575
    move-object/from16 v0, p0

    iget v4, v0, Limagecoverflow/CoverFlowView;->reflectHeightFraction:F

    mul-float/2addr v3, v4

    .line 574
    sub-float/2addr v2, v3

    .line 575
    move-object/from16 v0, p0

    iget v3, v0, Limagecoverflow/CoverFlowView;->reflectGap:I

    int-to-float v3, v3

    .line 574
    sub-float/2addr v2, v3

    float-to-int v13, v2

    .line 576
    .local v13, "originalChildHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 577
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Limagecoverflow/CoverFlowView;->reflectHeightFraction:F

    mul-float/2addr v3, v4

    .line 576
    add-float/2addr v2, v3

    .line 577
    move-object/from16 v0, p0

    iget v3, v0, Limagecoverflow/CoverFlowView;->reflectGap:I

    int-to-float v3, v3

    .line 576
    add-float/2addr v2, v3

    float-to-int v10, v2

    .line 579
    .local v10, "childTotalHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v15

    float-to-int v11, v2

    .line 580
    .local v11, "childWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v15

    float-to-int v9, v2

    .line 581
    .local v9, "centerChildWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Limagecoverflow/CoverFlowView;->mWidth:I

    shr-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 582
    shr-int/lit8 v3, v9, 0x1

    .line 581
    sub-int v12, v2, v3

    .line 583
    .local v12, "leftSpace":I
    move-object/from16 v0, p0

    iget v2, v0, Limagecoverflow/CoverFlowView;->mWidth:I

    shr-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    shr-int/lit8 v3, v9, 0x1

    sub-int v14, v2, v3

    .line 585
    .local v14, "rightSpace":I
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_2

    .line 586
    int-to-float v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 587
    move-object/from16 v0, p0

    iget v3, v0, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    int-to-float v3, v3

    add-float v3, v3, p4

    .line 586
    mul-float/2addr v2, v3

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 586
    add-float v16, v2, v3

    .line 597
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Limagecoverflow/CoverFlowView;->mChildTransformer:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    shr-int/lit8 v4, v10, 0x1

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Limagecoverflow/CoverFlowView;->mChildTransformer:Landroid/graphics/Matrix;

    invoke-virtual {v2, v15, v15}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 600
    const/4 v8, 0x0

    .line 601
    .local v8, "adjustedChildTranslateY":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v15, v2

    if-eqz v2, :cond_1

    .line 602
    move-object/from16 v0, p0

    iget v2, v0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    sub-int/2addr v2, v10

    shr-int/lit8 v2, v2, 0x1

    int-to-float v8, v2

    .line 604
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Limagecoverflow/CoverFlowView;->mChildTransformer:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Limagecoverflow/CoverFlowView;->mChildTranslateY:I

    int-to-float v3, v3

    .line 605
    add-float/2addr v3, v8

    .line 604
    move/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 607
    move-object/from16 v0, p0

    iget-object v3, v0, Limagecoverflow/CoverFlowView;->mChildTransformer:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v4, v0, Limagecoverflow/CoverFlowView;->mDrawChildPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Limagecoverflow/CoverFlowView;->getCustomTransformMatrix(Landroid/graphics/Matrix;Landroid/graphics/Paint;Landroid/graphics/Bitmap;IF)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Limagecoverflow/CoverFlowView;->mChildTransformer:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    shr-int/lit8 v4, v10, 0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Limagecoverflow/CoverFlowView;->mReflectionTransformer:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    shr-int/lit8 v4, v10, 0x1

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Limagecoverflow/CoverFlowView;->mReflectionTransformer:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Limagecoverflow/CoverFlowView;->mReflectionTranslateY:I

    int-to-float v3, v3

    .line 614
    mul-float/2addr v3, v15

    add-float/2addr v3, v8

    .line 613
    move/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Limagecoverflow/CoverFlowView;->mReflectionTransformer:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v4, v0, Limagecoverflow/CoverFlowView;->mDrawChildPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Limagecoverflow/CoverFlowView;->getCustomTransformMatrix(Landroid/graphics/Matrix;Landroid/graphics/Paint;Landroid/graphics/Bitmap;IF)V

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Limagecoverflow/CoverFlowView;->mReflectionTransformer:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    shr-int/lit8 v4, v10, 0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 618
    return-void

    .line 590
    .end local v8    # "adjustedChildTranslateY":F
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Limagecoverflow/CoverFlowView;->mWidth:I

    int-to-float v2, v2

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 591
    move-object/from16 v0, p0

    iget v4, v0, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    int-to-float v4, v4

    sub-float v4, v4, p4

    mul-float/2addr v3, v4

    .line 590
    sub-float/2addr v2, v3

    .line 591
    int-to-float v3, v11

    .line 590
    sub-float/2addr v2, v3

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    .line 590
    sub-float v16, v2, v3

    goto/16 :goto_0
.end method

.method private obtainReflection(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1029
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    iget v1, p0, Limagecoverflow/CoverFlowView;->reflectHeightFraction:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 1030
    const/4 v0, 0x0

    .line 1048
    :cond_0
    :goto_0
    return-object v0

    .line 1033
    :cond_1
    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mRecycler:Limagecoverflow/CoverFlowView$RecycleBin;

    invoke-virtual {v1, p1}, Limagecoverflow/CoverFlowView$RecycleBin;->getCachedReflectiuon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1035
    .local v0, "reflection":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1036
    :cond_2
    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mRecycler:Limagecoverflow/CoverFlowView$RecycleBin;

    invoke-virtual {v1, p1}, Limagecoverflow/CoverFlowView$RecycleBin;->removeReflectionCache(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1039
    iget v1, p0, Limagecoverflow/CoverFlowView;->reflectHeightFraction:F

    .line 1038
    invoke-static {p1, v1}, Limagecoverflow/BitmapUtils;->createReflectedBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1041
    if-eqz v0, :cond_0

    .line 1042
    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mRecycler:Limagecoverflow/CoverFlowView$RecycleBin;

    invoke-virtual {v1, p1, v0}, Limagecoverflow/CoverFlowView$RecycleBin;->buildReflectionCache(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private resetCoverFlow()V
    .locals 3

    .prologue
    .line 331
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    iget v1, p0, Limagecoverflow/CoverFlowView;->mItemCount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 332
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 333
    const-string v2, "total count in adapter must larger than 3!"

    .line 332
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_0
    iget v1, p0, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x1

    .line 337
    .local v0, "totalVisible":I
    iget v1, p0, Limagecoverflow/CoverFlowView;->mItemCount:I

    if-ge v1, v0, :cond_1

    .line 338
    iget v1, p0, Limagecoverflow/CoverFlowView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    .line 341
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    .line 343
    const/16 v1, 0xb3

    iget v2, p0, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    div-int/2addr v1, v2

    iput v1, p0, Limagecoverflow/CoverFlowView;->STANDARD_ALPHA:I

    .line 345
    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mGravity:Limagecoverflow/CoverFlowView$CoverFlowGravity;

    if-nez v1, :cond_2

    .line 346
    sget-object v1, Limagecoverflow/CoverFlowView$CoverFlowGravity;->CENTER_VERTICAL:Limagecoverflow/CoverFlowView$CoverFlowGravity;

    iput-object v1, p0, Limagecoverflow/CoverFlowView;->mGravity:Limagecoverflow/CoverFlowView$CoverFlowGravity;

    .line 349
    :cond_2
    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mLayoutMode:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    if-nez v1, :cond_3

    .line 350
    sget-object v1, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;->WRAP_CONTENT:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    iput-object v1, p0, Limagecoverflow/CoverFlowView;->mLayoutMode:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    .line 353
    :cond_3
    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mImageRecorder:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 355
    const/4 v1, -0x1

    iput v1, p0, Limagecoverflow/CoverFlowView;->mTopImageIndex:I

    .line 356
    const/4 v1, 0x1

    iput-boolean v1, p0, Limagecoverflow/CoverFlowView;->mDataSetChanged:Z

    .line 357
    return-void
.end method

.method private startAnimation(D)V
    .locals 9
    .param p1, "speed"    # D

    .prologue
    .line 941
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 966
    :goto_0
    return-void

    .line 944
    :cond_0
    mul-double v4, p1, p1

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    div-double v0, v4, v6

    .line 945
    .local v0, "delta":D
    const-wide/16 v4, 0x0

    cmpg-double v4, p1, v4

    if-gez v4, :cond_1

    .line 946
    neg-double v0, v0

    .line 948
    :cond_1
    iget v4, p0, Limagecoverflow/CoverFlowView;->mStartOffset:F

    float-to-double v4, v4

    add-double v2, v4, v0

    .line 949
    .local v2, "nearest":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 951
    iget v4, p0, Limagecoverflow/CoverFlowView;->mStartOffset:F

    float-to-double v4, v4

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 952
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    .line 951
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Limagecoverflow/CoverFlowView;->mStartSpeed:F

    .line 953
    iget v4, p0, Limagecoverflow/CoverFlowView;->mStartOffset:F

    float-to-double v4, v4

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    .line 954
    iget v4, p0, Limagecoverflow/CoverFlowView;->mStartSpeed:F

    neg-float v4, v4

    iput v4, p0, Limagecoverflow/CoverFlowView;->mStartSpeed:F

    .line 956
    :cond_2
    iget v4, p0, Limagecoverflow/CoverFlowView;->mStartSpeed:F

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Limagecoverflow/CoverFlowView;->mDuration:F

    .line 957
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Limagecoverflow/CoverFlowView;->mStartTime:J

    .line 959
    new-instance v4, Limagecoverflow/CoverFlowView$3;

    invoke-direct {v4, p0}, Limagecoverflow/CoverFlowView$3;-><init>(Limagecoverflow/CoverFlowView;)V

    iput-object v4, p0, Limagecoverflow/CoverFlowView;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 965
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Limagecoverflow/CoverFlowView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private stopLongClick()V
    .locals 2

    .prologue
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    const/4 v1, 0x0

    .line 807
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mLongClickRunnable:Limagecoverflow/CoverFlowView$LongClickRunnable;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mLongClickRunnable:Limagecoverflow/CoverFlowView$LongClickRunnable;

    invoke-virtual {p0, v0}, Limagecoverflow/CoverFlowView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 809
    iput-boolean v1, p0, Limagecoverflow/CoverFlowView;->mLongClickPosted:Z

    .line 810
    iput-boolean v1, p0, Limagecoverflow/CoverFlowView;->mLongClickTriggled:Z

    .line 812
    :cond_0
    return-void
.end method

.method private touchBegan(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 815
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    invoke-direct {p0}, Limagecoverflow/CoverFlowView;->endAnimation()V

    .line 817
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 818
    .local v0, "x":F
    iput v0, p0, Limagecoverflow/CoverFlowView;->mTouchStartX:F

    .line 819
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Limagecoverflow/CoverFlowView;->mTouchStartY:F

    .line 820
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Limagecoverflow/CoverFlowView;->mStartTime:J

    .line 821
    iget v1, p0, Limagecoverflow/CoverFlowView;->mOffset:F

    iput v1, p0, Limagecoverflow/CoverFlowView;->mStartOffset:F

    .line 823
    const/4 v1, 0x0

    iput-boolean v1, p0, Limagecoverflow/CoverFlowView;->mTouchMoved:Z

    .line 825
    iget v1, p0, Limagecoverflow/CoverFlowView;->mWidth:I

    int-to-float v1, v1

    div-float v1, v0, v1

    sget v2, Limagecoverflow/CoverFlowView;->MOVE_POS_MULTIPLE:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float/2addr v1, v2

    iput v1, p0, Limagecoverflow/CoverFlowView;->mTouchStartPos:F

    .line 826
    iget v1, p0, Limagecoverflow/CoverFlowView;->mTouchStartPos:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Limagecoverflow/CoverFlowView;->mTouchStartPos:F

    .line 828
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Limagecoverflow/CoverFlowView;->mVelocity:Landroid/view/VelocityTracker;

    .line 829
    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 830
    return-void
.end method

.method private touchEnded(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    const v8, 0x40b28f5c    # 5.58f

    const v7, -0x40e66666    # -0.6f

    const v6, 0x4069999a    # 3.65f

    .line 856
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Limagecoverflow/CoverFlowView;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sget v5, Limagecoverflow/CoverFlowView;->MOVE_POS_MULTIPLE:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40a00000    # 5.0f

    sub-float v1, v4, v5

    .line 857
    .local v1, "pos":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    .line 860
    iget-boolean v4, p0, Limagecoverflow/CoverFlowView;->mTouchMoved:Z

    if-nez v4, :cond_1

    .line 861
    cmpg-float v4, v1, v6

    if-gez v4, :cond_5

    const v4, 0x3fae147b    # 1.36f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_5

    .line 862
    iget v4, p0, Limagecoverflow/CoverFlowView;->mTopImageIndex:I

    iput v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    .line 863
    iget v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    if-gez v4, :cond_0

    .line 865
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    invoke-virtual {v4}, Limagecoverflow/CoverFlowAdapter;->getCount()I

    move-result v4

    iget v5, p0, Limagecoverflow/CoverFlowView;->temp:I

    add-int/2addr v4, v5

    iput v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    .line 867
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Limagecoverflow/CoverFlowView;->temp:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Limagecoverflow/CoverFlowView;->temps:Ljava/lang/String;

    .line 868
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mCoverFlowListener:Limagecoverflow/CoverFlowView$CoverFlowListener;

    iget v5, p0, Limagecoverflow/CoverFlowView;->temp:I

    invoke-interface {v4, p0, v5}, Limagecoverflow/CoverFlowView$CoverFlowListener;->topImageClicked(Limagecoverflow/CoverFlowView;I)V

    .line 906
    :cond_1
    :goto_0
    iget-boolean v4, p0, Limagecoverflow/CoverFlowView;->mTouchMoved:Z

    if-nez v4, :cond_2

    iget v4, p0, Limagecoverflow/CoverFlowView;->mOffset:F

    float-to-double v4, v4

    iget v6, p0, Limagecoverflow/CoverFlowView;->mOffset:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_f

    .line 907
    :cond_2
    iget v4, p0, Limagecoverflow/CoverFlowView;->mStartOffset:F

    iget v5, p0, Limagecoverflow/CoverFlowView;->mTouchStartPos:F

    sub-float/2addr v5, v1

    add-float/2addr v4, v5

    iput v4, p0, Limagecoverflow/CoverFlowView;->mStartOffset:F

    .line 908
    iget v4, p0, Limagecoverflow/CoverFlowView;->mStartOffset:F

    iput v4, p0, Limagecoverflow/CoverFlowView;->mOffset:F

    .line 909
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 911
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mVelocity:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 912
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    float-to-double v2, v4

    .line 916
    .local v2, "speed":D
    iget v4, p0, Limagecoverflow/CoverFlowView;->mWidth:I

    int-to-double v4, v4

    div-double v4, v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double v2, v4, v6

    .line 917
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_e

    .line 918
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    .line 921
    :cond_3
    :goto_1
    neg-double v4, v2

    invoke-direct {p0, v4, v5}, Limagecoverflow/CoverFlowView;->startAnimation(D)V

    .line 936
    .end local v2    # "speed":D
    :cond_4
    :goto_2
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    .line 937
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 938
    return-void

    .line 869
    :cond_5
    cmpg-float v4, v1, v8

    if-gez v4, :cond_8

    cmpl-float v4, v1, v6

    if-lez v4, :cond_8

    .line 870
    iget v4, p0, Limagecoverflow/CoverFlowView;->mTopImageIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    .line 871
    iget v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    if-gez v4, :cond_7

    .line 872
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    invoke-virtual {v4}, Limagecoverflow/CoverFlowAdapter;->getCount()I

    move-result v4

    iget v5, p0, Limagecoverflow/CoverFlowView;->temp:I

    add-int/2addr v4, v5

    iput v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    .line 878
    :cond_6
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Limagecoverflow/CoverFlowView;->temp:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Limagecoverflow/CoverFlowView;->temps:Ljava/lang/String;

    .line 879
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mCoverFlowListener:Limagecoverflow/CoverFlowView$CoverFlowListener;

    iget v5, p0, Limagecoverflow/CoverFlowView;->temp:I

    invoke-interface {v4, p0, v5}, Limagecoverflow/CoverFlowView$CoverFlowListener;->topImageClicked(Limagecoverflow/CoverFlowView;I)V

    goto/16 :goto_0

    .line 873
    :cond_7
    iget v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    iget-object v5, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    invoke-virtual {v5}, Limagecoverflow/CoverFlowAdapter;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 874
    const/4 v4, 0x0

    iput v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    goto :goto_3

    .line 881
    :cond_8
    cmpl-float v4, v1, v8

    if-lez v4, :cond_a

    const/high16 v4, 0x40f00000    # 7.5f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_a

    .line 882
    iget v4, p0, Limagecoverflow/CoverFlowView;->mTopImageIndex:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    .line 883
    iget v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    iget-object v5, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    invoke-virtual {v5}, Limagecoverflow/CoverFlowAdapter;->getCount()I

    move-result v5

    if-lt v4, v5, :cond_9

    .line 884
    iget v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    iget-object v5, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    invoke-virtual {v5}, Limagecoverflow/CoverFlowAdapter;->getCount()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    .line 886
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Limagecoverflow/CoverFlowView;->temp:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Limagecoverflow/CoverFlowView;->temps:Ljava/lang/String;

    .line 887
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mCoverFlowListener:Limagecoverflow/CoverFlowView$CoverFlowListener;

    iget v5, p0, Limagecoverflow/CoverFlowView;->temp:I

    invoke-interface {v4, p0, v5}, Limagecoverflow/CoverFlowView$CoverFlowListener;->topImageClicked(Limagecoverflow/CoverFlowView;I)V

    goto/16 :goto_0

    .line 888
    :cond_a
    cmpl-float v4, v1, v7

    if-lez v4, :cond_c

    cmpg-float v4, v1, v6

    if-gez v4, :cond_c

    .line 889
    iget v4, p0, Limagecoverflow/CoverFlowView;->mTopImageIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    .line 890
    iget v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    if-gez v4, :cond_b

    .line 891
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    invoke-virtual {v4}, Limagecoverflow/CoverFlowAdapter;->getCount()I

    move-result v4

    iget v5, p0, Limagecoverflow/CoverFlowView;->temp:I

    add-int/2addr v4, v5

    iput v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    .line 893
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Limagecoverflow/CoverFlowView;->temp:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Limagecoverflow/CoverFlowView;->temps:Ljava/lang/String;

    .line 894
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mCoverFlowListener:Limagecoverflow/CoverFlowView$CoverFlowListener;

    iget v5, p0, Limagecoverflow/CoverFlowView;->temp:I

    invoke-interface {v4, p0, v5}, Limagecoverflow/CoverFlowView$CoverFlowListener;->topImageClicked(Limagecoverflow/CoverFlowView;I)V

    goto/16 :goto_0

    .line 895
    :cond_c
    const/high16 v4, -0x3fe00000    # -2.5f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    cmpg-float v4, v1, v7

    if-gez v4, :cond_1

    .line 896
    iget v4, p0, Limagecoverflow/CoverFlowView;->mTopImageIndex:I

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    .line 897
    iget v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    if-gez v4, :cond_d

    .line 898
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    invoke-virtual {v4}, Limagecoverflow/CoverFlowAdapter;->getCount()I

    move-result v4

    iget v5, p0, Limagecoverflow/CoverFlowView;->temp:I

    add-int/2addr v4, v5

    iput v4, p0, Limagecoverflow/CoverFlowView;->temp:I

    .line 901
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Limagecoverflow/CoverFlowView;->temp:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Limagecoverflow/CoverFlowView;->temps:Ljava/lang/String;

    .line 902
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mCoverFlowListener:Limagecoverflow/CoverFlowView$CoverFlowListener;

    iget v5, p0, Limagecoverflow/CoverFlowView;->temp:I

    invoke-interface {v4, p0, v5}, Limagecoverflow/CoverFlowView$CoverFlowListener;->topImageClicked(Limagecoverflow/CoverFlowView;I)V

    goto/16 :goto_0

    .line 919
    .restart local v2    # "speed":D
    :cond_e
    const-wide/high16 v4, -0x3fe8000000000000L    # -6.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_3

    .line 920
    const-wide/high16 v2, -0x3fe8000000000000L    # -6.0

    goto/16 :goto_1

    .line 923
    .end local v2    # "speed":D
    :cond_f
    const-string v4, "CoverFlowView"

    .line 924
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " touch ==>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 923
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mTouchRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_4

    .line 926
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mTouchRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 927
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mCoverFlowListener:Limagecoverflow/CoverFlowView$CoverFlowListener;

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Limagecoverflow/CoverFlowView;->topImageClickEnable:Z

    if-eqz v4, :cond_4

    .line 928
    iget-boolean v4, p0, Limagecoverflow/CoverFlowView;->mLongClickTriggled:Z

    if-nez v4, :cond_4

    .line 929
    iget v0, p0, Limagecoverflow/CoverFlowView;->mTopImageIndex:I

    .line 931
    .local v0, "actuallyPosition":I
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mCoverFlowListener:Limagecoverflow/CoverFlowView$CoverFlowListener;

    invoke-interface {v4, p0, v0}, Limagecoverflow/CoverFlowView$CoverFlowListener;->topImageClicked(Limagecoverflow/CoverFlowView;I)V

    goto/16 :goto_2
.end method

.method private touchMoved(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    const/high16 v5, 0x40a00000    # 5.0f

    .line 833
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Limagecoverflow/CoverFlowView;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sget v4, Limagecoverflow/CoverFlowView;->MOVE_POS_MULTIPLE:F

    mul-float/2addr v3, v4

    sub-float v2, v3, v5

    .line 834
    .local v2, "pos":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 836
    iget-boolean v3, p0, Limagecoverflow/CoverFlowView;->mTouchMoved:Z

    if-nez v3, :cond_1

    .line 837
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Limagecoverflow/CoverFlowView;->mTouchStartX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 838
    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Limagecoverflow/CoverFlowView;->mTouchStartY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 840
    .local v1, "dy":F
    cmpg-float v3, v0, v5

    if-gez v3, :cond_0

    cmpg-float v3, v1, v5

    if-gez v3, :cond_0

    .line 851
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :goto_0
    return-void

    .line 843
    .restart local v0    # "dx":F
    .restart local v1    # "dy":F
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Limagecoverflow/CoverFlowView;->mTouchMoved:Z

    .line 845
    invoke-direct {p0}, Limagecoverflow/CoverFlowView;->stopLongClick()V

    .line 847
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    :cond_1
    iget v3, p0, Limagecoverflow/CoverFlowView;->mStartOffset:F

    iget v4, p0, Limagecoverflow/CoverFlowView;->mTouchStartPos:F

    add-float/2addr v3, v4

    sub-float/2addr v3, v2

    iput v3, p0, Limagecoverflow/CoverFlowView;->mOffset:F

    .line 849
    invoke-virtual {p0}, Limagecoverflow/CoverFlowView;->invalidate()V

    .line 850
    iget-object v3, p0, Limagecoverflow/CoverFlowView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private triggleLongClick(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 797
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mTouchRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mLongClickListener:Limagecoverflow/CoverFlowView$TopImageLongClickListener;

    if-eqz v1, :cond_0

    .line 798
    iget-boolean v1, p0, Limagecoverflow/CoverFlowView;->topImageClickEnable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Limagecoverflow/CoverFlowView;->mLongClickPosted:Z

    if-nez v1, :cond_0

    .line 799
    iget v0, p0, Limagecoverflow/CoverFlowView;->mTopImageIndex:I

    .line 801
    .local v0, "actuallyPosition":I
    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mLongClickRunnable:Limagecoverflow/CoverFlowView$LongClickRunnable;

    invoke-virtual {v1, v0}, Limagecoverflow/CoverFlowView$LongClickRunnable;->setPosition(I)V

    .line 802
    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mLongClickRunnable:Limagecoverflow/CoverFlowView$LongClickRunnable;

    sget v2, Limagecoverflow/CoverFlowView;->LONG_CLICK_DELAY:I

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Limagecoverflow/CoverFlowView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 804
    .end local v0    # "actuallyPosition":I
    :cond_0
    return-void
.end method

.method private updateAnimationAtElapsed(F)V
    .locals 4
    .param p1, "elapsed"    # F

    .prologue
    .line 990
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    iget v1, p0, Limagecoverflow/CoverFlowView;->mDuration:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 991
    iget p1, p0, Limagecoverflow/CoverFlowView;->mDuration:F

    .line 993
    :cond_0
    iget v1, p0, Limagecoverflow/CoverFlowView;->mStartSpeed:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, p1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, p1

    .line 994
    mul-float/2addr v2, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 993
    sub-float v0, v1, v2

    .line 995
    .local v0, "delta":F
    iget v1, p0, Limagecoverflow/CoverFlowView;->mStartSpeed:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 996
    neg-float v0, v0

    .line 998
    :cond_1
    iget v1, p0, Limagecoverflow/CoverFlowView;->mStartOffset:F

    add-float/2addr v1, v0

    iput v1, p0, Limagecoverflow/CoverFlowView;->mOffset:F

    .line 999
    invoke-virtual {p0}, Limagecoverflow/CoverFlowView;->invalidate()V

    .line 1000
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .prologue
    .line 1138
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 1140
    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1141
    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 1143
    .local v0, "currX":I
    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, p0, Limagecoverflow/CoverFlowView;->mOffset:F

    .line 1145
    invoke-virtual {p0}, Limagecoverflow/CoverFlowView;->invalidate()V

    .line 1147
    .end local v0    # "currX":I
    :cond_0
    return-void
.end method

.method public disableTopImageClick()V
    .locals 1

    .prologue
    .line 1091
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Limagecoverflow/CoverFlowView;->topImageClickEnable:Z

    .line 1092
    return-void
.end method

.method protected final drawChild(Landroid/graphics/Canvas;IIF)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mid"    # I
    .param p3, "position"    # I
    .param p4, "offset"    # F

    .prologue
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 526
    invoke-direct {p0, p3}, Limagecoverflow/CoverFlowView;->getActuallyPosition(I)I

    move-result v0

    .line 528
    .local v0, "actuallyPosition":I
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    invoke-virtual {v4, v0}, Limagecoverflow/CoverFlowAdapter;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 529
    .local v1, "child":Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Limagecoverflow/CoverFlowView;->obtainReflection(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 531
    .local v2, "reflection":Landroid/graphics/Bitmap;
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mImageRecorder:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 532
    .local v3, "wAndh":[I
    if-nez v3, :cond_1

    .line 533
    const/4 v4, 0x2

    new-array v3, v4, [I

    .end local v3    # "wAndh":[I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    aput v4, v3, v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    aput v4, v3, v6

    .line 534
    .restart local v3    # "wAndh":[I
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mImageRecorder:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 540
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p1, :cond_0

    .line 541
    invoke-direct {p0, v1, p2, p3, p4}, Limagecoverflow/CoverFlowView;->makeChildTransformer(Landroid/graphics/Bitmap;IIF)V

    .line 542
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mChildTransformer:Landroid/graphics/Matrix;

    iget-object v5, p0, Limagecoverflow/CoverFlowView;->mDrawChildPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 543
    if-eqz v2, :cond_0

    .line 545
    iget-object v4, p0, Limagecoverflow/CoverFlowView;->mReflectionTransformer:Landroid/graphics/Matrix;

    .line 546
    iget-object v5, p0, Limagecoverflow/CoverFlowView;->mDrawChildPaint:Landroid/graphics/Paint;

    .line 545
    invoke-virtual {p1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 549
    :cond_0
    return-void

    .line 536
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    aput v4, v3, v5

    .line 537
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    aput v4, v3, v6

    goto :goto_0
.end method

.method public enableTopImageClick()V
    .locals 1

    .prologue
    .line 1095
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Limagecoverflow/CoverFlowView;->topImageClickEnable:Z

    .line 1096
    return-void
.end method

.method public getAdapter()Limagecoverflow/CoverFlowAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    return-object v0
.end method

.method protected getCustomTransformMatrix(Landroid/graphics/Matrix;Landroid/graphics/Paint;Landroid/graphics/Bitmap;IF)V
    .locals 0
    .param p1, "transfromer"    # Landroid/graphics/Matrix;
    .param p2, "mDrawChildPaint"    # Landroid/graphics/Paint;
    .param p3, "child"    # Landroid/graphics/Bitmap;
    .param p4, "position"    # I
    .param p5, "offset"    # F

    .prologue
    .line 647
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    return-void
.end method

.method public getTopImageIndex()I
    .locals 2

    .prologue
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    const/4 v0, -0x1

    .line 1163
    iget v1, p0, Limagecoverflow/CoverFlowView;->mTopImageIndex:I

    if-ne v1, v0, :cond_0

    .line 1167
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Limagecoverflow/CoverFlowView;->mTopImageIndex:I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 486
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    iget-object v7, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    if-nez v7, :cond_0

    .line 487
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 521
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v7, p0, Limagecoverflow/CoverFlowView;->mDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 493
    iget v4, p0, Limagecoverflow/CoverFlowView;->mOffset:F

    .line 494
    .local v4, "offset":F
    const/4 v1, 0x0

    .line 495
    .local v1, "i":I
    float-to-double v8, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v3, v8

    .line 497
    .local v3, "mid":I
    iget v7, p0, Limagecoverflow/CoverFlowView;->mVisibleChildCount:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_2

    iget v7, p0, Limagecoverflow/CoverFlowView;->mVisibleChildCount:I

    shr-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v7, -0x1

    .line 499
    .local v5, "rightChild":I
    :goto_1
    iget v7, p0, Limagecoverflow/CoverFlowView;->mVisibleChildCount:I

    shr-int/lit8 v2, v7, 0x1

    .line 502
    .local v2, "leftChild":I
    sub-int v6, v3, v2

    .line 503
    .local v6, "startPos":I
    move v1, v6

    :goto_2
    if-lt v1, v3, :cond_3

    .line 508
    add-int v0, v3, v5

    .line 509
    .local v0, "endPos":I
    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_4

    .line 513
    float-to-int v7, v4

    int-to-float v7, v7

    sub-float v7, v4, v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    .line 514
    float-to-int v7, v4

    invoke-direct {p0, v7}, Limagecoverflow/CoverFlowView;->getActuallyPosition(I)I

    move-result v7

    invoke-direct {p0, v7}, Limagecoverflow/CoverFlowView;->imageOnTop(I)V

    .line 518
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 520
    iget-object v7, p0, Limagecoverflow/CoverFlowView;->mCoverFlowListener:Limagecoverflow/CoverFlowView$CoverFlowListener;

    invoke-interface {v7}, Limagecoverflow/CoverFlowView$CoverFlowListener;->invalidationCompleted()V

    goto :goto_0

    .line 498
    .end local v0    # "endPos":I
    .end local v2    # "leftChild":I
    .end local v5    # "rightChild":I
    .end local v6    # "startPos":I
    :cond_2
    iget v7, p0, Limagecoverflow/CoverFlowView;->mVisibleChildCount:I

    shr-int/lit8 v5, v7, 0x1

    goto :goto_1

    .line 504
    .restart local v2    # "leftChild":I
    .restart local v5    # "rightChild":I
    .restart local v6    # "startPos":I
    :cond_3
    int-to-float v7, v1

    sub-float/2addr v7, v4

    invoke-virtual {p0, p1, v3, v1, v7}, Limagecoverflow/CoverFlowView;->drawChild(Landroid/graphics/Canvas;IIF)V

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 510
    .restart local v0    # "endPos":I
    :cond_4
    int-to-float v7, v1

    sub-float/2addr v7, v4

    invoke-virtual {p0, p1, v3, v1, v7}, Limagecoverflow/CoverFlowView;->drawChild(Landroid/graphics/Canvas;IIF)V

    .line 509
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 480
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 369
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    .line 371
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    if-nez v15, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Limagecoverflow/CoverFlowView;->mDataSetChanged:Z

    if-eqz v15, :cond_0

    .line 379
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Limagecoverflow/CoverFlowView;->getPaddingLeft()I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->left:I

    .line 380
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Limagecoverflow/CoverFlowView;->getPaddingRight()I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->right:I

    .line 381
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Limagecoverflow/CoverFlowView;->getPaddingTop()I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->top:I

    .line 382
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Limagecoverflow/CoverFlowView;->getPaddingBottom()I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    .line 384
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 385
    .local v6, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 386
    .local v14, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 388
    .local v7, "heightSize":I
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    sub-int v15, v7, v15

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .line 388
    sub-int v2, v15, v16

    .line 391
    .local v2, "availableHeight":I
    const/4 v10, 0x0

    .line 393
    .local v10, "maxChildTotalHeight":I
    move-object/from16 v0, p0

    iget v15, v0, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    shl-int/lit8 v15, v15, 0x1

    add-int/lit8 v13, v15, 0x1

    .line 394
    .local v13, "visibleCount":I
    move-object/from16 v0, p0

    iget v15, v0, Limagecoverflow/CoverFlowView;->mOffset:F

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v11, v0

    .line 395
    .local v11, "mid":I
    shr-int/lit8 v9, v13, 0x1

    .line 396
    .local v9, "leftChild":I
    sub-int v15, v11, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Limagecoverflow/CoverFlowView;->getActuallyPosition(I)I

    move-result v12

    .line 398
    .local v12, "startPos":I
    move v8, v12

    .local v8, "i":I
    :goto_1
    add-int v15, v13, v12

    if-lt v8, v15, :cond_5

    .line 420
    const/high16 v15, 0x40000000    # 2.0f

    if-eq v6, v15, :cond_2

    .line 421
    const/high16 v15, -0x80000000

    if-ne v6, v15, :cond_b

    .line 424
    :cond_2
    if-ge v2, v10, :cond_9

    .line 425
    move-object/from16 v0, p0

    iput v2, v0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    .line 457
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mGravity:Limagecoverflow/CoverFlowView$CoverFlowGravity;

    sget-object v16, Limagecoverflow/CoverFlowView$CoverFlowGravity;->CENTER_VERTICAL:Limagecoverflow/CoverFlowView$CoverFlowGravity;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 458
    shr-int/lit8 v15, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    move/from16 v16, v0

    shr-int/lit8 v16, v16, 0x1

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Limagecoverflow/CoverFlowView;->mChildTranslateY:I

    .line 465
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v15, v0, Limagecoverflow/CoverFlowView;->mChildTranslateY:I

    move-object/from16 v0, p0

    iget v0, v0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    move/from16 v16, v0

    add-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    .line 466
    move-object/from16 v0, p0

    iget v0, v0, Limagecoverflow/CoverFlowView;->reflectHeightFraction:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    float-to-int v15, v15

    .line 465
    move-object/from16 v0, p0

    iput v15, v0, Limagecoverflow/CoverFlowView;->mReflectionTranslateY:I

    .line 468
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Limagecoverflow/CoverFlowView;->setMeasuredDimension(II)V

    .line 469
    move-object/from16 v0, p0

    iput v13, v0, Limagecoverflow/CoverFlowView;->mVisibleChildCount:I

    .line 470
    move-object/from16 v0, p0

    iput v14, v0, Limagecoverflow/CoverFlowView;->mWidth:I

    goto/16 :goto_0

    .line 404
    :cond_5
    const/16 v15, 0xa

    if-ne v8, v15, :cond_7

    .line 405
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Limagecoverflow/CoverFlowAdapter;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 411
    .local v3, "child":Landroid/graphics/Bitmap;
    :goto_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 412
    .local v4, "childHeight":I
    int-to-float v15, v4

    int-to-float v0, v4

    move/from16 v16, v0

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Limagecoverflow/CoverFlowView;->reflectHeightFraction:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    .line 412
    add-float v15, v15, v16

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Limagecoverflow/CoverFlowView;->reflectGap:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    .line 412
    add-float v15, v15, v16

    float-to-int v5, v15

    .line 414
    .local v5, "childTotalHeight":I
    if-ge v10, v5, :cond_6

    move v10, v5

    .line 398
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 406
    .end local v3    # "child":Landroid/graphics/Bitmap;
    .end local v4    # "childHeight":I
    .end local v5    # "childTotalHeight":I
    :cond_7
    const/16 v15, 0xb

    if-ne v8, v15, :cond_8

    .line 407
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Limagecoverflow/CoverFlowAdapter;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 408
    .restart local v3    # "child":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 409
    .end local v3    # "child":Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    invoke-virtual {v15, v8}, Limagecoverflow/CoverFlowAdapter;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3    # "child":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 430
    .end local v3    # "child":Landroid/graphics/Bitmap;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mLayoutMode:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    sget-object v16, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;->MATCH_PARENT:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 431
    move-object/from16 v0, p0

    iput v2, v0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    goto/16 :goto_2

    .line 434
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mLayoutMode:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    sget-object v16, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;->WRAP_CONTENT:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 435
    move-object/from16 v0, p0

    iput v10, v0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    .line 437
    const/high16 v15, -0x80000000

    if-ne v6, v15, :cond_3

    .line 438
    move-object/from16 v0, p0

    iget v15, v0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v15, v15, v16

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .line 438
    add-int v7, v15, v16

    .line 443
    goto/16 :goto_2

    .line 445
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mLayoutMode:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    sget-object v16, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;->MATCH_PARENT:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 446
    move-object/from16 v0, p0

    iput v2, v0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    goto/16 :goto_2

    .line 447
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mLayoutMode:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    sget-object v16, Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;->WRAP_CONTENT:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 448
    move-object/from16 v0, p0

    iput v10, v0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    .line 451
    move-object/from16 v0, p0

    iget v15, v0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v15, v15, v16

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .line 451
    add-int v7, v15, v16

    goto/16 :goto_2

    .line 459
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mGravity:Limagecoverflow/CoverFlowView$CoverFlowGravity;

    sget-object v16, Limagecoverflow/CoverFlowView$CoverFlowGravity;->TOP:Limagecoverflow/CoverFlowView$CoverFlowGravity;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 460
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v15, v0, Limagecoverflow/CoverFlowView;->mChildTranslateY:I

    goto/16 :goto_3

    .line 461
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mGravity:Limagecoverflow/CoverFlowView$CoverFlowGravity;

    sget-object v16, Limagecoverflow/CoverFlowView$CoverFlowGravity;->BOTTOM:Limagecoverflow/CoverFlowView$CoverFlowGravity;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 462
    move-object/from16 v0, p0

    iget-object v15, v0, Limagecoverflow/CoverFlowView;->mCoverFlowPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v7, v15

    .line 463
    move-object/from16 v0, p0

    iget v0, v0, Limagecoverflow/CoverFlowView;->mChildHeight:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    .line 462
    move-object/from16 v0, p0

    iput v15, v0, Limagecoverflow/CoverFlowView;->mChildTranslateY:I

    goto/16 :goto_3
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 361
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 362
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 751
    invoke-virtual {p0}, Limagecoverflow/CoverFlowView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 752
    invoke-virtual {p0}, Limagecoverflow/CoverFlowView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 755
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 756
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 780
    :goto_0
    return v1

    .line 758
    :pswitch_0
    iget-object v3, p0, Limagecoverflow/CoverFlowView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 759
    iget-object v3, p0, Limagecoverflow/CoverFlowView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 760
    invoke-virtual {p0}, Limagecoverflow/CoverFlowView;->invalidate()V

    .line 762
    :cond_1
    invoke-direct {p0}, Limagecoverflow/CoverFlowView;->stopLongClick()V

    .line 763
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Limagecoverflow/CoverFlowView;->triggleLongClick(FF)V

    .line 764
    invoke-direct {p0, p1}, Limagecoverflow/CoverFlowView;->touchBegan(Landroid/view/MotionEvent;)V

    .line 765
    sput v2, Limagecoverflow/CoverFlowView;->ActionState:I

    .line 766
    iget-object v2, p0, Limagecoverflow/CoverFlowView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Limagecoverflow/CoverFlowView;->mRunnableSetSelection:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 769
    :pswitch_1
    invoke-direct {p0, p1}, Limagecoverflow/CoverFlowView;->touchMoved(Landroid/view/MotionEvent;)V

    .line 770
    const/4 v2, 0x2

    sput v2, Limagecoverflow/CoverFlowView;->ActionState:I

    goto :goto_0

    .line 773
    :pswitch_2
    invoke-direct {p0, p1}, Limagecoverflow/CoverFlowView;->touchEnded(Landroid/view/MotionEvent;)V

    .line 774
    invoke-direct {p0}, Limagecoverflow/CoverFlowView;->stopLongClick()V

    .line 775
    sput v1, Limagecoverflow/CoverFlowView;->ActionState:I

    .line 776
    iget-object v2, p0, Limagecoverflow/CoverFlowView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Limagecoverflow/CoverFlowView;->mRunnableSetSelection:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 756
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAdapter(Limagecoverflow/CoverFlowAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    .local p1, "adapter":Limagecoverflow/CoverFlowAdapter;, "TT;"
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Limagecoverflow/CoverFlowAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 300
    :cond_0
    iput-object p1, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    .line 302
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    iget-object v1, p0, Limagecoverflow/CoverFlowView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Limagecoverflow/CoverFlowAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 305
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    invoke-virtual {v0}, Limagecoverflow/CoverFlowAdapter;->getCount()I

    move-result v0

    iput v0, p0, Limagecoverflow/CoverFlowView;->mItemCount:I

    .line 307
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mRecycler:Limagecoverflow/CoverFlowView$RecycleBin;

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mRecycler:Limagecoverflow/CoverFlowView$RecycleBin;

    invoke-virtual {v0}, Limagecoverflow/CoverFlowView$RecycleBin;->clear()V

    .line 314
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Limagecoverflow/CoverFlowView;->mOffset:F

    .line 316
    invoke-direct {p0}, Limagecoverflow/CoverFlowView;->resetCoverFlow()V

    .line 318
    invoke-virtual {p0}, Limagecoverflow/CoverFlowView;->requestLayout()V

    .line 319
    return-void

    .line 310
    :cond_2
    new-instance v0, Limagecoverflow/CoverFlowView$RecycleBin;

    invoke-direct {v0, p0}, Limagecoverflow/CoverFlowView$RecycleBin;-><init>(Limagecoverflow/CoverFlowView;)V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mRecycler:Limagecoverflow/CoverFlowView$RecycleBin;

    goto :goto_0
.end method

.method public setCoverFlowGravity(Limagecoverflow/CoverFlowView$CoverFlowGravity;)V
    .locals 0
    .param p1, "gravity"    # Limagecoverflow/CoverFlowView$CoverFlowGravity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Limagecoverflow/CoverFlowView$CoverFlowGravity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1067
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    iput-object p1, p0, Limagecoverflow/CoverFlowView;->mGravity:Limagecoverflow/CoverFlowView$CoverFlowGravity;

    .line 1068
    return-void
.end method

.method public setCoverFlowLayoutMode(Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;)V
    .locals 0
    .param p1, "mode"    # Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1071
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    iput-object p1, p0, Limagecoverflow/CoverFlowView;->mLayoutMode:Limagecoverflow/CoverFlowView$CoverFlowLayoutMode;

    .line 1072
    return-void
.end method

.method public setCoverFlowListener(Limagecoverflow/CoverFlowView$CoverFlowListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Limagecoverflow/CoverFlowView$CoverFlowListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    .local p1, "l":Limagecoverflow/CoverFlowView$CoverFlowListener;, "Limagecoverflow/CoverFlowView$CoverFlowListener<TT;>;"
    iput-object p1, p0, Limagecoverflow/CoverFlowView;->mCoverFlowListener:Limagecoverflow/CoverFlowView$CoverFlowListener;

    .line 327
    return-void
.end method

.method public setReflectionGap(I)V
    .locals 0
    .param p1, "gap"    # I

    .prologue
    .line 1084
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    if-gez p1, :cond_0

    .line 1085
    const/4 p1, 0x0

    .line 1087
    :cond_0
    iput p1, p0, Limagecoverflow/CoverFlowView;->reflectGap:I

    .line 1088
    return-void
.end method

.method public setReflectionHeight(I)V
    .locals 1
    .param p1, "fraction"    # I

    .prologue
    .line 1075
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    if-gez p1, :cond_1

    .line 1076
    const/4 p1, 0x0

    .line 1080
    :cond_0
    :goto_0
    int-to-float v0, p1

    iput v0, p0, Limagecoverflow/CoverFlowView;->reflectHeightFraction:F

    .line 1081
    return-void

    .line 1077
    :cond_1
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 1078
    const/16 p1, 0x64

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1100
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    iget-object v2, p0, Limagecoverflow/CoverFlowView;->mAdapter:Limagecoverflow/CoverFlowAdapter;

    invoke-virtual {v2}, Limagecoverflow/CoverFlowAdapter;->getCount()I

    move-result v0

    .line 1101
    .local v0, "max":I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_3

    .line 1105
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1106
    const-string v3, "Position want to select can not less than 0 or larger than max of adapter provide!"

    .line 1105
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1109
    :cond_3
    move v1, p1

    .line 1110
    .local v1, "myPosition":I
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Limagecoverflow/CoverFlowView$4;

    invoke-direct {v3, p0, v1, v0}, Limagecoverflow/CoverFlowView$4;-><init>(Limagecoverflow/CoverFlowView;II)V

    .line 1132
    const-wide/16 v4, 0x0

    .line 1110
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setTopImageLongClickListener(Limagecoverflow/CoverFlowView$TopImageLongClickListener;)V
    .locals 2
    .param p1, "listener"    # Limagecoverflow/CoverFlowView$TopImageLongClickListener;

    .prologue
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    const/4 v1, 0x0

    .line 1151
    iput-object p1, p0, Limagecoverflow/CoverFlowView;->mLongClickListener:Limagecoverflow/CoverFlowView$TopImageLongClickListener;

    .line 1153
    if-nez p1, :cond_1

    .line 1154
    iput-object v1, p0, Limagecoverflow/CoverFlowView;->mLongClickRunnable:Limagecoverflow/CoverFlowView$LongClickRunnable;

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1156
    :cond_1
    iget-object v0, p0, Limagecoverflow/CoverFlowView;->mLongClickRunnable:Limagecoverflow/CoverFlowView$LongClickRunnable;

    if-nez v0, :cond_0

    .line 1157
    new-instance v0, Limagecoverflow/CoverFlowView$LongClickRunnable;

    invoke-direct {v0, p0, v1}, Limagecoverflow/CoverFlowView$LongClickRunnable;-><init>(Limagecoverflow/CoverFlowView;Limagecoverflow/CoverFlowView$LongClickRunnable;)V

    iput-object v0, p0, Limagecoverflow/CoverFlowView;->mLongClickRunnable:Limagecoverflow/CoverFlowView$LongClickRunnable;

    goto :goto_0
.end method

.method public setVisibleImage(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 1052
    .local p0, "this":Limagecoverflow/CoverFlowView;, "Limagecoverflow/CoverFlowView<TT;>;"
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 1053
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1054
    const-string v1, "visible image must be an odd number"

    .line 1053
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_0
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 1058
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1059
    const-string v1, "visible image must larger than 3"

    .line 1058
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1062
    :cond_1
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    .line 1063
    const/16 v0, 0xb3

    iget v1, p0, Limagecoverflow/CoverFlowView;->mVisibleImages:I

    div-int/2addr v0, v1

    iput v0, p0, Limagecoverflow/CoverFlowView;->STANDARD_ALPHA:I

    .line 1064
    return-void
.end method
