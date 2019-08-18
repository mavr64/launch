.class public Lcom/android/launcher4/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/DragController$DragListener;,
        Lcom/android/launcher4/DragController$ScrollRunnable;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I = 0x0

.field public static DRAG_ACTION_MOVE:I = 0x0

.field private static final MAX_FLING_DEGREES:F = 35.0f

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field private static final RESCROLL_DELAY:I = 0x384

.field private static final SCROLL_DELAY:I = 0x1f4

.field static final SCROLL_LEFT:I = 0x0

.field static final SCROLL_NONE:I = -0x1

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Launcher.DragController"


# instance fields
.field private final mCoordinatesTemp:[I

.field private mDistanceSinceScroll:I

.field private mDragLayerRect:Landroid/graphics/Rect;

.field private mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

.field private mDragScroller:Lcom/android/launcher4/DragScroller;

.field private mDragging:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mFlingToDeleteDropTarget:Lcom/android/launcher4/DropTarget;

.field protected mFlingToDeleteThresholdVelocity:I

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/android/launcher4/DropTarget;

.field private mLastTouch:[I

.field private mLastTouchUpTime:J

.field private mLauncher:Lcom/android/launcher4/Launcher;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveTarget:Landroid/view/View;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/android/launcher4/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mTmpPoint:[I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher4/DragController;->DRAG_ACTION_MOVE:I

    .line 50
    const/4 v0, 0x1

    sput v0, Lcom/android/launcher4/DragController;->DRAG_ACTION_COPY:I

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher4/Launcher;)V
    .locals 6
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 71
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/android/launcher4/DragController;->mCoordinatesTemp:[I

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/DragController;->mListeners:Ljava/util/ArrayList;

    .line 107
    iput v5, p0, Lcom/android/launcher4/DragController;->mScrollState:I

    .line 108
    new-instance v2, Lcom/android/launcher4/DragController$ScrollRunnable;

    invoke-direct {v2, p0}, Lcom/android/launcher4/DragController$ScrollRunnable;-><init>(Lcom/android/launcher4/DragController;)V

    iput-object v2, p0, Lcom/android/launcher4/DragController;->mScrollRunnable:Lcom/android/launcher4/DragController$ScrollRunnable;

    .line 114
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/android/launcher4/DragController;->mLastTouch:[I

    .line 115
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher4/DragController;->mLastTouchUpTime:J

    .line 116
    iput v5, p0, Lcom/android/launcher4/DragController;->mDistanceSinceScroll:I

    .line 118
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/android/launcher4/DragController;->mTmpPoint:[I

    .line 119
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    .line 155
    invoke-virtual {p1}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 156
    .local v1, "r":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/launcher4/DragController;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 157
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/DragController;->mHandler:Landroid/os/Handler;

    .line 158
    const v2, 0x7f0d001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher4/DragController;->mScrollZone:I

    .line 159
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher4/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 161
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 163
    .local v0, "density":F
    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 162
    iput v2, p0, Lcom/android/launcher4/DragController;->mFlingToDeleteThresholdVelocity:I

    .line 164
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/DragController;)Lcom/android/launcher4/DragScroller;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mDragScroller:Lcom/android/launcher4/DragScroller;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher4/DragController;I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/android/launcher4/DragController;->mScrollState:I

    return-void
.end method

.method static synthetic access$2(Lcom/android/launcher4/DragController;I)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/android/launcher4/DragController;->mDistanceSinceScroll:I

    return-void
.end method

.method static synthetic access$3(Lcom/android/launcher4/DragController;)Lcom/android/launcher4/Launcher;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mLauncher:Lcom/android/launcher4/Launcher;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/launcher4/DragController;)[I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mLastTouch:[I

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/launcher4/DragController;II)V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/DragController;->checkScrollState(II)V

    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 819
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 822
    return-void
.end method

.method private checkScrollState(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 570
    iget-object v7, p0, Lcom/android/launcher4/DragController;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 571
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v5

    .line 572
    .local v5, "slop":I
    iget v7, p0, Lcom/android/launcher4/DragController;->mDistanceSinceScroll:I

    if-ge v7, v5, :cond_1

    const/16 v1, 0x384

    .line 574
    .local v1, "delay":I
    :goto_0
    iget-object v7, p0, Lcom/android/launcher4/DragController;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v2

    .line 575
    .local v2, "dragLayer":Lcom/android/launcher4/DragLayer;
    invoke-virtual {v2}, Lcom/android/launcher4/DragLayer;->getLayoutDirection()I

    move-result v7

    if-ne v7, v6, :cond_2

    move v4, v6

    .line 576
    .local v4, "isRtl":Z
    :goto_1
    if-eqz v4, :cond_3

    move v3, v6

    .line 577
    .local v3, "forwardDirection":I
    :goto_2
    if-eqz v4, :cond_4

    .line 579
    .local v0, "backwardsDirection":I
    :goto_3
    iget v7, p0, Lcom/android/launcher4/DragController;->mScrollZone:I

    if-ge p1, v7, :cond_5

    .line 580
    iget v7, p0, Lcom/android/launcher4/DragController;->mScrollState:I

    if-nez v7, :cond_0

    .line 581
    iput v6, p0, Lcom/android/launcher4/DragController;->mScrollState:I

    .line 582
    iget-object v6, p0, Lcom/android/launcher4/DragController;->mDragScroller:Lcom/android/launcher4/DragScroller;

    invoke-interface {v6, p1, p2, v3}, Lcom/android/launcher4/DragScroller;->onEnterScrollArea(III)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 583
    invoke-virtual {v2, v3}, Lcom/android/launcher4/DragLayer;->onEnterScrollArea(I)V

    .line 584
    iget-object v6, p0, Lcom/android/launcher4/DragController;->mScrollRunnable:Lcom/android/launcher4/DragController$ScrollRunnable;

    invoke-virtual {v6, v3}, Lcom/android/launcher4/DragController$ScrollRunnable;->setDirection(I)V

    .line 585
    iget-object v6, p0, Lcom/android/launcher4/DragController;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/launcher4/DragController;->mScrollRunnable:Lcom/android/launcher4/DragController$ScrollRunnable;

    int-to-long v8, v1

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 600
    :cond_0
    :goto_4
    return-void

    .line 573
    .end local v0    # "backwardsDirection":I
    .end local v1    # "delay":I
    .end local v2    # "dragLayer":Lcom/android/launcher4/DragLayer;
    .end local v3    # "forwardDirection":I
    .end local v4    # "isRtl":Z
    :cond_1
    const/16 v1, 0x1f4

    goto :goto_0

    .restart local v1    # "delay":I
    .restart local v2    # "dragLayer":Lcom/android/launcher4/DragLayer;
    :cond_2
    move v4, v0

    .line 575
    goto :goto_1

    .restart local v4    # "isRtl":Z
    :cond_3
    move v3, v0

    .line 576
    goto :goto_2

    .restart local v3    # "forwardDirection":I
    :cond_4
    move v0, v6

    .line 577
    goto :goto_3

    .line 588
    .restart local v0    # "backwardsDirection":I
    :cond_5
    iget-object v7, p0, Lcom/android/launcher4/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/android/launcher4/DragController;->mScrollZone:I

    sub-int/2addr v7, v8

    if-le p1, v7, :cond_6

    .line 589
    iget v7, p0, Lcom/android/launcher4/DragController;->mScrollState:I

    if-nez v7, :cond_0

    .line 590
    iput v6, p0, Lcom/android/launcher4/DragController;->mScrollState:I

    .line 591
    iget-object v6, p0, Lcom/android/launcher4/DragController;->mDragScroller:Lcom/android/launcher4/DragScroller;

    invoke-interface {v6, p1, p2, v0}, Lcom/android/launcher4/DragScroller;->onEnterScrollArea(III)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 592
    invoke-virtual {v2, v0}, Lcom/android/launcher4/DragLayer;->onEnterScrollArea(I)V

    .line 593
    iget-object v6, p0, Lcom/android/launcher4/DragController;->mScrollRunnable:Lcom/android/launcher4/DragController$ScrollRunnable;

    invoke-virtual {v6, v0}, Lcom/android/launcher4/DragController$ScrollRunnable;->setDirection(I)V

    .line 594
    iget-object v6, p0, Lcom/android/launcher4/DragController;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/launcher4/DragController;->mScrollRunnable:Lcom/android/launcher4/DragController$ScrollRunnable;

    int-to-long v8, v1

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 598
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher4/DragController;->clearScrollRunnable()V

    goto :goto_4
.end method

.method private checkTouchMove(Lcom/android/launcher4/DropTarget;)V
    .locals 2
    .param p1, "dropTarget"    # Lcom/android/launcher4/DropTarget;

    .prologue
    .line 553
    if-eqz p1, :cond_3

    .line 554
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mLastDropTarget:Lcom/android/launcher4/DropTarget;

    if-eq v0, p1, :cond_1

    .line 555
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mLastDropTarget:Lcom/android/launcher4/DropTarget;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mLastDropTarget:Lcom/android/launcher4/DropTarget;

    iget-object v1, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher4/DropTarget;->onDragExit(Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/android/launcher4/DropTarget;->onDragEnter(Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/android/launcher4/DropTarget;->onDragOver(Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 566
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/launcher4/DragController;->mLastDropTarget:Lcom/android/launcher4/DropTarget;

    .line 567
    return-void

    .line 562
    :cond_3
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mLastDropTarget:Lcom/android/launcher4/DropTarget;

    if-eqz v0, :cond_2

    .line 563
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mLastDropTarget:Lcom/android/launcher4/DropTarget;

    iget-object v1, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher4/DropTarget;->onDragExit(Lcom/android/launcher4/DropTarget$DragObject;)V

    goto :goto_0
.end method

.method private clearScrollRunnable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 516
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher4/DragController;->mScrollRunnable:Lcom/android/launcher4/DragController$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 517
    iget v0, p0, Lcom/android/launcher4/DragController;->mScrollState:I

    if-ne v0, v2, :cond_0

    .line 518
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/DragController;->mScrollState:I

    .line 519
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mScrollRunnable:Lcom/android/launcher4/DragController$ScrollRunnable;

    invoke-virtual {v0, v2}, Lcom/android/launcher4/DragController$ScrollRunnable;->setDirection(I)V

    .line 520
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mDragScroller:Lcom/android/launcher4/DragScroller;

    invoke-interface {v0}, Lcom/android/launcher4/DragScroller;->onExitScrollArea()Z

    .line 521
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/DragLayer;->onExitScrollArea()V

    .line 523
    :cond_0
    return-void
.end method

.method private drop(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 728
    iget-object v1, p0, Lcom/android/launcher4/DragController;->mCoordinatesTemp:[I

    .line 729
    .local v1, "coordinates":[I
    float-to-int v3, p1

    float-to-int v4, p2

    invoke-direct {p0, v3, v4, v1}, Lcom/android/launcher4/DragController;->findDropTarget(II[I)Lcom/android/launcher4/DropTarget;

    move-result-object v2

    .line 732
    .local v2, "dropTarget":Lcom/android/launcher4/DropTarget;
    iget-object v3, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    aget v4, v1, v5

    iput v4, v3, Lcom/android/launcher4/DropTarget$DragObject;->x:I

    .line 733
    iget-object v3, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    aget v4, v1, v6

    iput v4, v3, Lcom/android/launcher4/DropTarget$DragObject;->y:I

    .line 734
    const/4 v0, 0x0

    .line 735
    .local v0, "accepted":Z
    if-eqz v2, :cond_0

    .line 736
    iget-object v3, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iput-boolean v6, v3, Lcom/android/launcher4/DropTarget$DragObject;->dragComplete:Z

    .line 737
    iget-object v3, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher4/DropTarget;->onDragExit(Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 738
    iget-object v3, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher4/DropTarget;->acceptDrop(Lcom/android/launcher4/DropTarget$DragObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 739
    iget-object v3, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher4/DropTarget;->onDrop(Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 740
    const/4 v0, 0x1

    .line 743
    :cond_0
    iget-object v3, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    check-cast v2, Landroid/view/View;

    .end local v2    # "dropTarget":Lcom/android/launcher4/DropTarget;
    iget-object v4, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-interface {v3, v2, v4, v5, v0}, Lcom/android/launcher4/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher4/DropTarget$DragObject;ZZ)V

    .line 745
    return-void
.end method

.method private dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "vel"    # Landroid/graphics/PointF;

    .prologue
    const/4 v6, 0x1

    .line 697
    iget-object v1, p0, Lcom/android/launcher4/DragController;->mCoordinatesTemp:[I

    .line 699
    .local v1, "coordinates":[I
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    const/4 v3, 0x0

    aget v3, v1, v3

    iput v3, v2, Lcom/android/launcher4/DropTarget$DragObject;->x:I

    .line 700
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    aget v3, v1, v6

    iput v3, v2, Lcom/android/launcher4/DropTarget$DragObject;->y:I

    .line 705
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mLastDropTarget:Lcom/android/launcher4/DropTarget;

    if-eqz v2, :cond_0

    .line 706
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher4/DropTarget;

    iget-object v3, p0, Lcom/android/launcher4/DragController;->mLastDropTarget:Lcom/android/launcher4/DropTarget;

    if-eq v2, v3, :cond_0

    .line 707
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mLastDropTarget:Lcom/android/launcher4/DropTarget;

    iget-object v3, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher4/DropTarget;->onDragExit(Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 711
    :cond_0
    const/4 v0, 0x0

    .line 712
    .local v0, "accepted":Z
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher4/DropTarget;

    iget-object v3, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher4/DropTarget;->onDragEnter(Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 716
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iput-boolean v6, v2, Lcom/android/launcher4/DropTarget$DragObject;->dragComplete:Z

    .line 717
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher4/DropTarget;

    iget-object v3, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher4/DropTarget;->onDragExit(Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 718
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher4/DropTarget;

    iget-object v3, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-interface {v2, v3}, Lcom/android/launcher4/DropTarget;->acceptDrop(Lcom/android/launcher4/DropTarget$DragObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 719
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher4/DropTarget;

    iget-object v3, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    .line 720
    iget-object v4, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iget v4, v4, Lcom/android/launcher4/DropTarget$DragObject;->x:I

    iget-object v5, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iget v5, v5, Lcom/android/launcher4/DropTarget$DragObject;->y:I

    .line 719
    invoke-interface {v2, v3, v4, v5, p3}, Lcom/android/launcher4/DropTarget;->onFlingToDelete(Lcom/android/launcher4/DropTarget$DragObject;IILandroid/graphics/PointF;)V

    .line 721
    const/4 v0, 0x1

    .line 723
    :cond_1
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iget-object v3, v2, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    iget-object v2, p0, Lcom/android/launcher4/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher4/DropTarget;

    check-cast v2, Landroid/view/View;

    .line 724
    iget-object v4, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    .line 723
    invoke-interface {v3, v2, v4, v6, v0}, Lcom/android/launcher4/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher4/DropTarget$DragObject;ZZ)V

    .line 725
    return-void
.end method

.method private endDrag()V
    .locals 4

    .prologue
    .line 385
    iget-boolean v2, p0, Lcom/android/launcher4/DragController;->mDragging:Z

    if-eqz v2, :cond_2

    .line 386
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher4/DragController;->mDragging:Z

    .line 387
    invoke-direct {p0}, Lcom/android/launcher4/DragController;->clearScrollRunnable()V

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "isDeferred":Z
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    if-eqz v2, :cond_1

    .line 390
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iget-boolean v0, v2, Lcom/android/launcher4/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 391
    if-nez v0, :cond_0

    .line 392
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    invoke-virtual {v2}, Lcom/android/launcher4/DragView;->remove()V

    .line 394
    :cond_0
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    .line 398
    :cond_1
    if-nez v0, :cond_2

    .line 399
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 405
    .end local v0    # "isDeferred":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher4/DragController;->releaseVelocityTracker()V

    .line 406
    return-void

    .line 399
    .restart local v0    # "isDeferred":Z
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/DragController$DragListener;

    .line 400
    .local v1, "listener":Lcom/android/launcher4/DragController$DragListener;
    invoke-interface {v1}, Lcom/android/launcher4/DragController$DragListener;->onDragEnd()V

    goto :goto_0
.end method

.method private findDropTarget(II[I)Lcom/android/launcher4/DropTarget;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "dropCoordinates"    # [I

    .prologue
    .line 748
    iget-object v3, p0, Lcom/android/launcher4/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 750
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher4/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 751
    .local v1, "dropTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/DropTarget;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 752
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_0

    .line 771
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 753
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/DropTarget;

    .line 754
    .local v4, "target":Lcom/android/launcher4/DropTarget;
    invoke-interface {v4}, Lcom/android/launcher4/DropTarget;->isDropEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 752
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 757
    :cond_2
    invoke-interface {v4, v3}, Lcom/android/launcher4/DropTarget;->getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 759
    iget-object v5, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iput p1, v5, Lcom/android/launcher4/DropTarget$DragObject;->x:I

    .line 760
    iget-object v5, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iput p2, v5, Lcom/android/launcher4/DropTarget$DragObject;->y:I

    .line 761
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 763
    const/4 v5, 0x0

    aput p1, p3, v5

    .line 764
    const/4 v5, 0x1

    aput p2, p3, v5

    .line 765
    iget-object v5, p0, Lcom/android/launcher4/DragController;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v6

    move-object v5, v4

    .line 766
    check-cast v5, Landroid/view/View;

    .line 765
    invoke-virtual {v6, v5, p3}, Lcom/android/launcher4/DragLayer;->mapCoordInSelfToDescendent(Landroid/view/View;[I)F

    goto :goto_1
.end method

.method private getClampedDragLayerPos(FF)[I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/DragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 432
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mTmpPoint:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher4/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 433
    iget-object v3, p0, Lcom/android/launcher4/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 432
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 434
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mTmpPoint:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher4/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 435
    iget-object v3, p0, Lcom/android/launcher4/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 434
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 436
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mTmpPoint:[I

    return-object v0
.end method

.method private handleMoveEvent(II)V
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 526
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher4/DragView;->move(II)V

    .line 529
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mCoordinatesTemp:[I

    .line 530
    .local v0, "coordinates":[I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/DragController;->findDropTarget(II[I)Lcom/android/launcher4/DropTarget;

    move-result-object v1

    .line 531
    .local v1, "dropTarget":Lcom/android/launcher4/DropTarget;
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    aget v3, v0, v8

    iput v3, v2, Lcom/android/launcher4/DropTarget$DragObject;->x:I

    .line 532
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    aget v3, v0, v9

    iput v3, v2, Lcom/android/launcher4/DropTarget$DragObject;->y:I

    .line 533
    invoke-direct {p0, v1}, Lcom/android/launcher4/DragController;->checkTouchMove(Lcom/android/launcher4/DropTarget;)V

    .line 536
    iget v2, p0, Lcom/android/launcher4/DragController;->mDistanceSinceScroll:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/launcher4/DragController;->mLastTouch:[I

    aget v4, v4, v8

    sub-int/2addr v4, p1

    int-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 537
    iget-object v6, p0, Lcom/android/launcher4/DragController;->mLastTouch:[I

    aget v6, v6, v9

    sub-int/2addr v6, p2

    int-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 536
    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/launcher4/DragController;->mDistanceSinceScroll:I

    .line 538
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mLastTouch:[I

    aput p1, v2, v8

    .line 539
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mLastTouch:[I

    aput p2, v2, v9

    .line 540
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/DragController;->checkScrollState(II)V

    .line 541
    return-void
.end method

.method private isFlingingToDelete(Lcom/android/launcher4/DragSource;)Landroid/graphics/PointF;
    .locals 10
    .param p1, "source"    # Lcom/android/launcher4/DragSource;

    .prologue
    const/4 v4, 0x0

    .line 671
    iget-object v5, p0, Lcom/android/launcher4/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher4/DropTarget;

    if-nez v5, :cond_1

    move-object v3, v4

    .line 693
    :cond_0
    :goto_0
    return-object v3

    .line 673
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher4/DragSource;->supportsFlingToDelete()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v3, v4

    .line 674
    goto :goto_0

    .line 676
    :cond_2
    iget-object v5, p0, Lcom/android/launcher4/DragController;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 677
    .local v0, "config":Landroid/view/ViewConfiguration;
    iget-object v5, p0, Lcom/android/launcher4/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    .line 678
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    .line 677
    invoke-virtual {v5, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 680
    iget-object v5, p0, Lcom/android/launcher4/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    iget v6, p0, Lcom/android/launcher4/DragController;->mFlingToDeleteThresholdVelocity:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 683
    new-instance v3, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/launcher4/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    .line 684
    iget-object v6, p0, Lcom/android/launcher4/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    .line 683
    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 685
    .local v3, "vel":Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 687
    .local v2, "upVec":Landroid/graphics/PointF;
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 688
    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v7

    mul-float/2addr v6, v7

    .line 687
    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 689
    .local v1, "theta":F
    float-to-double v6, v1

    const-wide v8, 0x4041800000000000L    # 35.0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    cmpg-double v5, v6, v8

    if-lez v5, :cond_0

    .end local v1    # "theta":F
    .end local v2    # "upVec":Landroid/graphics/PointF;
    .end local v3    # "vel":Landroid/graphics/PointF;
    :cond_3
    move-object v3, v4

    .line 693
    goto :goto_0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 829
    :cond_0
    return-void
.end method


# virtual methods
.method public addDragListener(Lcom/android/launcher4/DragController$DragListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher4/DragController$DragListener;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    return-void
.end method

.method public addDropTarget(Lcom/android/launcher4/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/launcher4/DropTarget;

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    return-void
.end method

.method public cancelDrag()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 349
    iget-boolean v0, p0, Lcom/android/launcher4/DragController;->mDragging:Z

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mLastDropTarget:Lcom/android/launcher4/DropTarget;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mLastDropTarget:Lcom/android/launcher4/DropTarget;

    iget-object v1, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher4/DropTarget;->onDragExit(Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iput-boolean v3, v0, Lcom/android/launcher4/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 354
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/android/launcher4/DropTarget$DragObject;->cancelled:Z

    .line 355
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragComplete:Z

    .line 356
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/android/launcher4/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher4/DropTarget$DragObject;ZZ)V

    .line 359
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher4/DragController;->endDrag()V

    .line 360
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/launcher4/DragController;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dragging()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/launcher4/DragController;->mDragging:Z

    return v0
.end method

.method public forceTouchMove()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 544
    iget-object v1, p0, Lcom/android/launcher4/DragController;->mCoordinatesTemp:[I

    .line 545
    .local v1, "dummyCoordinates":[I
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mLastTouch:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/launcher4/DragController;->mLastTouch:[I

    aget v3, v3, v5

    invoke-direct {p0, v2, v3, v1}, Lcom/android/launcher4/DragController;->findDropTarget(II[I)Lcom/android/launcher4/DropTarget;

    move-result-object v0

    .line 547
    .local v0, "dropTarget":Lcom/android/launcher4/DropTarget;
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    aget v3, v1, v4

    iput v3, v2, Lcom/android/launcher4/DropTarget$DragObject;->x:I

    .line 548
    iget-object v2, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    aget v3, v1, v5

    iput v3, v2, Lcom/android/launcher4/DropTarget$DragObject;->y:I

    .line 549
    invoke-direct {p0, v0}, Lcom/android/launcher4/DragController;->checkTouchMove(Lcom/android/launcher4/DropTarget;)V

    .line 550
    return-void
.end method

.method getDragView()Lcom/android/launcher4/DragView;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    return-object v0
.end method

.method getLastGestureUpTime()J
    .locals 2

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/launcher4/DragController;->mDragging:Z

    if-eqz v0, :cond_0

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 443
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/launcher4/DragController;->mLastTouchUpTime:J

    goto :goto_0
.end method

.method getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 293
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v4

    .line 296
    .local v4, "willNotCache":Z
    invoke-virtual {p1, v5}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v3

    .line 301
    .local v3, "color":I
    invoke-virtual {p1, v5}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 303
    .local v0, "alpha":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 305
    if-eqz v3, :cond_0

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 308
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 310
    .local v2, "cacheBitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 311
    const-string v5, "Launcher.DragController"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "failed getViewBitmap("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 312
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    .line 311
    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    const/4 v1, 0x0

    .line 324
    :goto_0
    return-object v1

    .line 316
    :cond_1
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 319
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 320
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 321
    invoke-virtual {p1, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 322
    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/launcher4/DragController;->mDragging:Z

    return v0
.end method

.method public onAppsRemoved(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    iget-object v4, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    if-eqz v4, :cond_1

    .line 366
    iget-object v4, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iget-object v3, v4, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 367
    .local v3, "rawDragInfo":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/launcher4/ShortcutInfo;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 368
    check-cast v0, Lcom/android/launcher4/ShortcutInfo;

    .line 369
    .local v0, "dragInfo":Lcom/android/launcher4/ShortcutInfo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 382
    .end local v0    # "dragInfo":Lcom/android/launcher4/ShortcutInfo;
    .end local v3    # "rawDragInfo":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 369
    .restart local v0    # "dragInfo":Lcom/android/launcher4/ShortcutInfo;
    .restart local v3    # "rawDragInfo":Ljava/lang/Object;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/AppInfo;

    .line 371
    .local v1, "info":Lcom/android/launcher4/AppInfo;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_0

    .line 372
    iget-object v5, v0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 373
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, v1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 374
    .local v2, "isSameComponent":Z
    if-eqz v2, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/android/launcher4/DragController;->cancelDrag()V

    goto :goto_0
.end method

.method onDeferredEndDrag(Lcom/android/launcher4/DragView;)V
    .locals 3
    .param p1, "dragView"    # Lcom/android/launcher4/DragView;

    .prologue
    .line 413
    invoke-virtual {p1}, Lcom/android/launcher4/DragView;->remove()V

    .line 415
    iget-object v1, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iget-boolean v1, v1, Lcom/android/launcher4/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/launcher4/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 421
    :cond_0
    return-void

    .line 417
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/DragController$DragListener;

    .line 418
    .local v0, "listener":Lcom/android/launcher4/DragController$DragListener;
    invoke-interface {v0}, Lcom/android/launcher4/DragController$DragListener;->onDragEnd()V

    goto :goto_0
.end method

.method onDeferredEndFling(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 424
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    invoke-interface {v0}, Lcom/android/launcher4/DragSource;->onFlingToDeleteCompleted()V

    .line 425
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 457
    const/4 v1, 0x0

    .line 464
    .local v1, "debug":Z
    invoke-direct {p0, p1}, Lcom/android/launcher4/DragController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 467
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/launcher4/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v2

    .line 468
    .local v2, "dragLayerPos":[I
    const/4 v6, 0x0

    aget v3, v2, v6

    .line 469
    .local v3, "dragLayerX":I
    const/4 v6, 0x1

    aget v4, v2, v6

    .line 471
    .local v4, "dragLayerY":I
    packed-switch v0, :pswitch_data_0

    .line 500
    :goto_0
    :pswitch_0
    iget-boolean v6, p0, Lcom/android/launcher4/DragController;->mDragging:Z

    return v6

    .line 476
    :pswitch_1
    iput v3, p0, Lcom/android/launcher4/DragController;->mMotionDownX:I

    .line 477
    iput v4, p0, Lcom/android/launcher4/DragController;->mMotionDownY:I

    .line 478
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher4/DragController;->mLastDropTarget:Lcom/android/launcher4/DropTarget;

    goto :goto_0

    .line 481
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher4/DragController;->mLastTouchUpTime:J

    .line 482
    iget-boolean v6, p0, Lcom/android/launcher4/DragController;->mDragging:Z

    if-eqz v6, :cond_1

    .line 483
    iget-object v6, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iget-object v6, v6, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    invoke-direct {p0, v6}, Lcom/android/launcher4/DragController;->isFlingingToDelete(Lcom/android/launcher4/DragSource;)Landroid/graphics/PointF;

    move-result-object v5

    .line 484
    .local v5, "vec":Landroid/graphics/PointF;
    iget-object v6, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iget-object v6, v6, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-static {v6}, Lcom/android/launcher4/DeleteDropTarget;->willAcceptDrop(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 485
    const/4 v5, 0x0

    .line 487
    :cond_0
    if-eqz v5, :cond_2

    .line 488
    int-to-float v6, v3

    int-to-float v7, v4

    invoke-direct {p0, v6, v7, v5}, Lcom/android/launcher4/DragController;->dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V

    .line 493
    .end local v5    # "vec":Landroid/graphics/PointF;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher4/DragController;->endDrag()V

    goto :goto_0

    .line 490
    .restart local v5    # "vec":Landroid/graphics/PointF;
    :cond_2
    int-to-float v6, v3

    int-to-float v7, v4

    invoke-direct {p0, v6, v7}, Lcom/android/launcher4/DragController;->drop(FF)V

    goto :goto_1

    .line 496
    .end local v5    # "vec":Landroid/graphics/PointF;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher4/DragController;->cancelDrag()V

    goto :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 606
    iget-boolean v7, p0, Lcom/android/launcher4/DragController;->mDragging:Z

    if-nez v7, :cond_0

    .line 661
    :goto_0
    return v5

    .line 611
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher4/DragController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 614
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/launcher4/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v1

    .line 615
    .local v1, "dragLayerPos":[I
    aget v2, v1, v5

    .line 616
    .local v2, "dragLayerX":I
    aget v3, v1, v6

    .line 618
    .local v3, "dragLayerY":I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v5, v6

    .line 661
    goto :goto_0

    .line 621
    :pswitch_0
    iput v2, p0, Lcom/android/launcher4/DragController;->mMotionDownX:I

    .line 622
    iput v3, p0, Lcom/android/launcher4/DragController;->mMotionDownY:I

    .line 624
    iget v7, p0, Lcom/android/launcher4/DragController;->mScrollZone:I

    if-lt v2, v7, :cond_1

    .line 625
    iget-object v7, p0, Lcom/android/launcher4/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/android/launcher4/DragController;->mScrollZone:I

    sub-int/2addr v7, v8

    if-le v2, v7, :cond_2

    .line 626
    :cond_1
    iput v6, p0, Lcom/android/launcher4/DragController;->mScrollState:I

    .line 627
    iget-object v5, p0, Lcom/android/launcher4/DragController;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/launcher4/DragController;->mScrollRunnable:Lcom/android/launcher4/DragController$ScrollRunnable;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 631
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/android/launcher4/DragController;->handleMoveEvent(II)V

    goto :goto_1

    .line 629
    :cond_2
    iput v5, p0, Lcom/android/launcher4/DragController;->mScrollState:I

    goto :goto_2

    .line 634
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/launcher4/DragController;->handleMoveEvent(II)V

    goto :goto_1

    .line 639
    :pswitch_2
    invoke-direct {p0, v2, v3}, Lcom/android/launcher4/DragController;->handleMoveEvent(II)V

    .line 640
    iget-object v5, p0, Lcom/android/launcher4/DragController;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/launcher4/DragController;->mScrollRunnable:Lcom/android/launcher4/DragController$ScrollRunnable;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 642
    iget-boolean v5, p0, Lcom/android/launcher4/DragController;->mDragging:Z

    if-eqz v5, :cond_4

    .line 643
    iget-object v5, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    invoke-direct {p0, v5}, Lcom/android/launcher4/DragController;->isFlingingToDelete(Lcom/android/launcher4/DragSource;)Landroid/graphics/PointF;

    move-result-object v4

    .line 644
    .local v4, "vec":Landroid/graphics/PointF;
    iget-object v5, p0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-static {v5}, Lcom/android/launcher4/DeleteDropTarget;->willAcceptDrop(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 645
    const/4 v4, 0x0

    .line 647
    :cond_3
    if-eqz v4, :cond_5

    .line 648
    int-to-float v5, v2

    int-to-float v7, v3

    invoke-direct {p0, v5, v7, v4}, Lcom/android/launcher4/DragController;->dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V

    .line 653
    .end local v4    # "vec":Landroid/graphics/PointF;
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/android/launcher4/DragController;->endDrag()V

    goto :goto_1

    .line 650
    .restart local v4    # "vec":Landroid/graphics/PointF;
    :cond_5
    int-to-float v5, v2

    int-to-float v7, v3

    invoke-direct {p0, v5, v7}, Lcom/android/launcher4/DragController;->drop(FF)V

    goto :goto_3

    .line 656
    .end local v4    # "vec":Landroid/graphics/PointF;
    :pswitch_3
    iget-object v5, p0, Lcom/android/launcher4/DragController;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/launcher4/DragController;->mScrollRunnable:Lcom/android/launcher4/DragController$ScrollRunnable;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 657
    invoke-virtual {p0}, Lcom/android/launcher4/DragController;->cancelDrag()V

    goto :goto_1

    .line 618
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeDragListener(Lcom/android/launcher4/DragController$DragListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher4/DragController$DragListener;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 794
    return-void
.end method

.method public removeDropTarget(Lcom/android/launcher4/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/launcher4/DropTarget;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/launcher4/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 808
    return-void
.end method

.method resetLastGestureUpTime()V
    .locals 2

    .prologue
    .line 448
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher4/DragController;->mLastTouchUpTime:J

    .line 449
    return-void
.end method

.method public setDragScoller(Lcom/android/launcher4/DragScroller;)V
    .locals 0
    .param p1, "scroller"    # Lcom/android/launcher4/DragScroller;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/launcher4/DragController;->mDragScroller:Lcom/android/launcher4/DragScroller;

    .line 776
    return-void
.end method

.method public setFlingToDeleteDropTarget(Lcom/android/launcher4/DropTarget;)V
    .locals 0
    .param p1, "target"    # Lcom/android/launcher4/DropTarget;

    .prologue
    .line 814
    iput-object p1, p0, Lcom/android/launcher4/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher4/DropTarget;

    .line 815
    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/launcher4/DragController;->mMoveTarget:Landroid/view/View;

    .line 508
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 835
    iput-object p1, p0, Lcom/android/launcher4/DragController;->mScrollView:Landroid/view/View;

    .line 836
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/android/launcher4/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 780
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher4/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)V
    .locals 17
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "dragLayerX"    # I
    .param p3, "dragLayerY"    # I
    .param p4, "source"    # Lcom/android/launcher4/DragSource;
    .param p5, "dragInfo"    # Ljava/lang/Object;
    .param p6, "dragAction"    # I
    .param p7, "dragOffset"    # Landroid/graphics/Point;
    .param p8, "dragRegion"    # Landroid/graphics/Rect;
    .param p9, "initialDragViewScale"    # F

    .prologue
    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v4, :cond_0

    .line 246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DragController;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 247
    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/android/launcher4/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 246
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher4/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 249
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/DragController;->mWindowToken:Landroid/os/IBinder;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 255
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DragController;->mMotionDownX:I

    sub-int v6, v4, p2

    .line 256
    .local v6, "registrationX":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DragController;->mMotionDownY:I

    sub-int v7, v4, p3

    .line 258
    .local v7, "registrationY":I
    if-nez p8, :cond_4

    const/4 v13, 0x0

    .line 259
    .local v13, "dragRegionLeft":I
    :goto_1
    if-nez p8, :cond_5

    const/4 v14, 0x0

    .line 261
    .local v14, "dragRegionTop":I
    :goto_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher4/DragController;->mDragging:Z

    .line 263
    new-instance v4, Lcom/android/launcher4/DropTarget$DragObject;

    invoke-direct {v4}, Lcom/android/launcher4/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/launcher4/DropTarget$DragObject;->dragComplete:Z

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/DragController;->mMotionDownX:I

    add-int v8, p2, v13

    sub-int/2addr v5, v8

    iput v5, v4, Lcom/android/launcher4/DropTarget$DragObject;->xOffset:I

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/DragController;->mMotionDownY:I

    add-int v8, p3, v14

    sub-int/2addr v5, v8

    iput v5, v4, Lcom/android/launcher4/DropTarget$DragObject;->yOffset:I

    .line 268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    move-object/from16 v0, p4

    iput-object v0, v4, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    move-object/from16 v0, p5

    iput-object v0, v4, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/DragController;->mDragObject:Lcom/android/launcher4/DropTarget$DragObject;

    move-object/from16 v16, v0

    new-instance v3, Lcom/android/launcher4/DragView;

    .line 272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DragController;->mLauncher:Lcom/android/launcher4/Launcher;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v5, p1

    move/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Lcom/android/launcher4/DragView;-><init>(Lcom/android/launcher4/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V

    .line 271
    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    .line 275
    .local v3, "dragView":Lcom/android/launcher4/DragView;
    if-eqz p7, :cond_1

    .line 276
    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher4/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    .line 278
    :cond_1
    if-eqz p8, :cond_2

    .line 279
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p8

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher4/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 282
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DragController;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v4

    .line 283
    const/4 v5, 0x0

    .line 282
    invoke-virtual {v4, v5}, Lcom/android/launcher4/DragLayer;->performHapticFeedback(I)Z

    .line 284
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DragController;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/DragController;->mMotionDownY:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher4/DragView;->show(II)V

    .line 285
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DragController;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/DragController;->mMotionDownY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/launcher4/DragController;->handleMoveEvent(II)V

    .line 286
    return-void

    .line 251
    .end local v3    # "dragView":Lcom/android/launcher4/DragView;
    .end local v6    # "registrationX":I
    .end local v7    # "registrationY":I
    .end local v13    # "dragRegionLeft":I
    .end local v14    # "dragRegionTop":I
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher4/DragController$DragListener;

    .line 252
    .local v15, "listener":Lcom/android/launcher4/DragController$DragListener;
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-interface {v15, v0, v1, v2}, Lcom/android/launcher4/DragController$DragListener;->onDragStart(Lcom/android/launcher4/DragSource;Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 258
    .end local v15    # "listener":Lcom/android/launcher4/DragController$DragListener;
    .restart local v6    # "registrationX":I
    .restart local v7    # "registrationY":I
    :cond_4
    move-object/from16 v0, p8

    iget v13, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 259
    .restart local v13    # "dragRegionLeft":I
    :cond_5
    move-object/from16 v0, p8

    iget v14, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher4/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;F)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;
    .param p3, "source"    # Lcom/android/launcher4/DragSource;
    .param p4, "dragInfo"    # Ljava/lang/Object;
    .param p5, "dragAction"    # I
    .param p6, "extraPadding"    # Landroid/graphics/Point;
    .param p7, "initialDragViewScale"    # F

    .prologue
    .line 192
    iget-object v11, p0, Lcom/android/launcher4/DragController;->mCoordinatesTemp:[I

    .line 193
    .local v11, "loc":[I
    iget-object v1, p0, Lcom/android/launcher4/DragController;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p1, v11}, Lcom/android/launcher4/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 194
    if-eqz p6, :cond_1

    move-object/from16 v0, p6

    iget v12, v0, Landroid/graphics/Point;->x:I

    .line 195
    .local v12, "viewExtraPaddingLeft":I
    :goto_0
    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    iget v13, v0, Landroid/graphics/Point;->y:I

    .line 196
    .local v13, "viewExtraPaddingTop":I
    :goto_1
    const/4 v1, 0x0

    aget v1, v11, v1

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 196
    add-int/2addr v1, v2

    add-int/2addr v1, v12

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p7

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 199
    sub-float/2addr v2, v5

    .line 200
    const/high16 v5, 0x40000000    # 2.0f

    .line 199
    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 196
    add-int v3, v1, v2

    .line 201
    .local v3, "dragLayerX":I
    const/4 v1, 0x1

    aget v1, v11, v1

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 201
    add-int/2addr v1, v2

    add-int/2addr v1, v13

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p7

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 204
    sub-float/2addr v2, v5

    .line 205
    const/high16 v5, 0x40000000    # 2.0f

    .line 204
    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 201
    add-int v4, v1, v2

    .line 208
    .local v4, "dragLayerY":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v10, p7

    .line 207
    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher4/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher4/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)V

    .line 210
    sget v1, Lcom/android/launcher4/DragController;->DRAG_ACTION_MOVE:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_0

    .line 211
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :cond_0
    return-void

    .line 194
    .end local v3    # "dragLayerX":I
    .end local v4    # "dragLayerY":I
    .end local v12    # "viewExtraPaddingLeft":I
    .end local v13    # "viewExtraPaddingTop":I
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 195
    .restart local v12    # "viewExtraPaddingLeft":I
    :cond_2
    const/4 v13, 0x0

    goto :goto_1
.end method
