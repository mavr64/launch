.class public Lcom/android/launcher4/Workspace;
.super Lcom/android/launcher4/SmoothPagedView;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher4/DropTarget;
.implements Lcom/android/launcher4/DragSource;
.implements Lcom/android/launcher4/DragScroller;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher4/DragController$DragListener;
.implements Lcom/android/launcher4/LauncherTransitionable;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/android/launcher4/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/Workspace$AlphaUpdateListener;,
        Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;,
        Lcom/android/launcher4/Workspace$InverseZInterpolator;,
        Lcom/android/launcher4/Workspace$ReorderAlarmListener;,
        Lcom/android/launcher4/Workspace$State;,
        Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;,
        Lcom/android/launcher4/Workspace$ZInterpolator;,
        Lcom/android/launcher4/Workspace$ZoomInInterpolator;,
        Lcom/android/launcher4/Workspace$ZoomOutInterpolator;
    }
.end annotation


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final ALPHA_CUTOFF_THRESHOLD:F = 0.01f

.field public static final ANIMATE_INTO_POSITION_AND_DISAPPEAR:I = 0x0

.field public static final ANIMATE_INTO_POSITION_AND_REMAIN:I = 0x1

.field public static final ANIMATE_INTO_POSITION_AND_RESIZE:I = 0x2

.field private static final BACKGROUND_FADE_OUT_DURATION:I = 0x15e

.field public static final CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x4

.field private static final CHILDREN_OUTLINE_FADE_IN_DURATION:I = 0x64

.field private static final CHILDREN_OUTLINE_FADE_OUT_DELAY:I = 0x0

.field private static final CHILDREN_OUTLINE_FADE_OUT_DURATION:I = 0x177

.field public static final COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x3

.field private static final CUSTOM_CONTENT_GESTURE_DELAY:J = 0xc8L

.field private static final CUSTOM_CONTENT_SCREEN_ID:J = -0x12dL

.field private static final CUSTOM_CONTENT_SCREEN_ID1:J = -0x12eL

.field private static final CUSTOM_CONTENT_SCREEN_ID2:J = -0x12fL

.field private static final CUSTOM_CONTENT_SCREEN_ID3:J = -0x130L

.field private static final CUSTOM_CONTENT_SCREEN_ID4:J = -0x131L

.field public static final DRAG_BITMAP_PADDING:I = 0x2

.field private static final DRAG_MODE_ADD_TO_FOLDER:I = 0x2

.field private static final DRAG_MODE_CREATE_FOLDER:I = 0x1

.field private static final DRAG_MODE_NONE:I = 0x0

.field private static final DRAG_MODE_REORDER:I = 0x3

.field private static final EXTRA_EMPTY_SCREEN_ID:J = -0xc9L

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field private static final FOLDER_CREATION_TIMEOUT:I = 0x0

.field static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static final REORDER_TIMEOUT:I = 0xfa

.field static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field private static final TAG:Ljava/lang/String; = "JLog"

.field static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f

.field private static final WORKSPACE_OVERSCROLL_ROTATION:F = 24.0f

.field public static apps_customepage_count:I

.field public static customScreen:[Lcom/android/launcher4/MCellLayout;

.field static mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

.field static mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

.field private static sAccessibilityEnabled:Z


# instance fields
.field private mAddToExistingFolderOnDrop:Z

.field mAnimatingViewIntoPlace:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

.field private mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

.field private final mBindPages:Ljava/lang/Runnable;

.field private mCameraDistance:I

.field mChildrenLayersEnabled:Z

.field private mChildrenOutlineAlpha:F

.field private mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

.field private mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentScale:F

.field mCustomContentCallbacks:Lcom/android/launcher4/Launcher$CustomContentCallbacks;

.field private mCustomContentDescription:Ljava/lang/String;

.field private mCustomContentShowTime:J

.field mCustomContentShowing:Z

.field private mDefaultPage:I

.field private mDeferDropAfterUninstall:Z

.field private mDeferredAction:Ljava/lang/Runnable;

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDragController:Lcom/android/launcher4/DragController;

.field private mDragEnforcer:Lcom/android/launcher4/DropTarget$DragEnforcer;

.field private mDragFolderRingAnimator:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

.field private mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

.field private mDragMode:I

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragOverFolderIcon:Lcom/android/launcher4/FolderIcon;

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lcom/android/launcher4/CellLayout;

.field private mDragSourceInternal:Lcom/android/launcher4/ShortcutAndWidgetContainer;

.field private mDragTargetLayout:Lcom/android/launcher4/CellLayout;

.field private mDragViewVisualCenter:[F

.field mDrawBackground:Z

.field private mDropToLayout:Lcom/android/launcher4/CellLayout;

.field private final mFolderCreationAlarm:Lcom/android/launcher4/Alarm;

.field private mIconCache:Lcom/android/launcher4/IconCache;

.field private mInScrollArea:Z

.field mIsDragOccuring:Z

.field private mIsSwitchingState:Z

.field private mLastChildCount:I

.field private mLastCustomContentScrollProgress:F

.field private mLastOverscrollPivotX:F

.field private mLastReorderX:I

.field private mLastReorderY:I

.field private mLauncher:Lcom/android/launcher4/Launcher;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mMaxDistanceForFolderCreation:F

.field private mNewAlphas:[F

.field private mNewBackgroundAlphas:[F

.field private mNewScale:F

.field private mOldAlphas:[F

.field private mOldBackgroundAlphas:[F

.field private mOriginalDefaultPage:I

.field private mOutlineHelper:Lcom/android/launcher4/HolographicOutlineHelper;

.field private mOverscrollTransformsSet:Z

.field private mOverviewModePageOffset:I

.field private mOverviewModeShrinkFactor:F

.field private final mReorderAlarm:Lcom/android/launcher4/Alarm;

.field private final mRestoredPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedRotationY:F

.field private mSavedScrollX:I

.field private mSavedStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedTranslationX:F

.field private mScreenOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSpringLoadedDragController:Lcom/android/launcher4/SpringLoadedDragController;

.field private mSpringLoadedShrinkFactor:F

.field private mState:Lcom/android/launcher4/Workspace$State;

.field private mStripScreensOnPageStopMoving:Z

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempCellLayoutCenterCoordinates:[F

.field private mTempEstimate:[I

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private mTempPt:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTempVisiblePagesRange:[I

.field private final mTempXY:[I

.field private mTouchDownTime:J

.field private mTransitionProgress:F

.field private mUninstallSuccessful:Z

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field mWallpaperOffset:Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;

.field private mWindowToken:Landroid/os/IBinder;

.field private mWorkspaceFadeInAdjacentScreens:Z

.field private mWorkspaceScreens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher4/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mXDown:F

.field private mYDown:F

.field private final mZoomInInterpolator:Lcom/android/launcher4/Workspace$ZoomInInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const v1, 0x7f0b0028

    .line 150
    sput-object v0, Lcom/android/launcher4/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 151
    sput-object v0, Lcom/android/launcher4/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 592
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    .line 593
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 592
    new-array v0, v0, [Lcom/android/launcher4/MCellLayout;

    sput-object v0, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    .line 662
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    .line 663
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 662
    sput v0, Lcom/android/launcher4/Workspace;->apps_customepage_count:I

    .line 663
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 318
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher4/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineAlpha:F

    .line 111
    iput-boolean v8, p0, Lcom/android/launcher4/Workspace;->mDrawBackground:Z

    .line 112
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher4/Workspace;->mBackgroundAlpha:F

    .line 115
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher4/Workspace;->mTouchDownTime:J

    .line 116
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher4/Workspace;->mCustomContentShowTime:J

    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    .line 146
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 147
    iput v7, p0, Lcom/android/launcher4/Workspace;->mDragOverX:I

    .line 148
    iput v7, p0, Lcom/android/launcher4/Workspace;->mDragOverY:I

    .line 155
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/launcher4/Workspace;->mLastCustomContentScrollProgress:F

    .line 156
    const-string v2, ""

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mCustomContentDescription:Ljava/lang/String;

    .line 161
    iput-object v6, p0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    .line 165
    iput-object v6, p0, Lcom/android/launcher4/Workspace;->mDragOverlappingLayout:Lcom/android/launcher4/CellLayout;

    .line 170
    iput-object v6, p0, Lcom/android/launcher4/Workspace;->mDropToLayout:Lcom/android/launcher4/CellLayout;

    .line 180
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mTempCell:[I

    .line 181
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mTempPt:[I

    .line 182
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mTempEstimate:[I

    .line 183
    new-array v2, v5, [F

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    .line 184
    new-array v2, v5, [F

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 185
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 199
    sget-object v2, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    .line 200
    iput-boolean v4, p0, Lcom/android/launcher4/Workspace;->mIsSwitchingState:Z

    .line 202
    iput-boolean v4, p0, Lcom/android/launcher4/Workspace;->mAnimatingViewIntoPlace:Z

    .line 203
    iput-boolean v4, p0, Lcom/android/launcher4/Workspace;->mIsDragOccuring:Z

    .line 204
    iput-boolean v8, p0, Lcom/android/launcher4/Workspace;->mChildrenLayersEnabled:Z

    .line 206
    iput-boolean v4, p0, Lcom/android/launcher4/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 209
    iput-boolean v4, p0, Lcom/android/launcher4/Workspace;->mInScrollArea:Z

    .line 212
    iput-object v6, p0, Lcom/android/launcher4/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 213
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 214
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mTempXY:[I

    .line 215
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mTempVisiblePagesRange:[I

    .line 224
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mDisplaySize:Landroid/graphics/Point;

    .line 231
    new-instance v2, Lcom/android/launcher4/Alarm;

    invoke-direct {v2}, Lcom/android/launcher4/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mFolderCreationAlarm:Lcom/android/launcher4/Alarm;

    .line 232
    new-instance v2, Lcom/android/launcher4/Alarm;

    invoke-direct {v2}, Lcom/android/launcher4/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mReorderAlarm:Lcom/android/launcher4/Alarm;

    .line 233
    iput-object v6, p0, Lcom/android/launcher4/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    .line 234
    iput-object v6, p0, Lcom/android/launcher4/Workspace;->mDragOverFolderIcon:Lcom/android/launcher4/FolderIcon;

    .line 235
    iput-boolean v4, p0, Lcom/android/launcher4/Workspace;->mCreateUserFolderOnDrop:Z

    .line 236
    iput-boolean v4, p0, Lcom/android/launcher4/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 260
    iput v4, p0, Lcom/android/launcher4/Workspace;->mDragMode:I

    .line 261
    iput v7, p0, Lcom/android/launcher4/Workspace;->mLastReorderX:I

    .line 262
    iput v7, p0, Lcom/android/launcher4/Workspace;->mLastReorderY:I

    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    .line 279
    iput v7, p0, Lcom/android/launcher4/Workspace;->mLastChildCount:I

    .line 286
    new-instance v2, Lcom/android/launcher4/Workspace$1;

    invoke-direct {v2, p0}, Lcom/android/launcher4/Workspace$1;-><init>(Lcom/android/launcher4/Workspace;)V

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mBindPages:Ljava/lang/Runnable;

    .line 2036
    new-instance v2, Lcom/android/launcher4/Workspace$ZoomInInterpolator;

    invoke-direct {v2}, Lcom/android/launcher4/Workspace$ZoomInInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mZoomInInterpolator:Lcom/android/launcher4/Workspace$ZoomInInterpolator;

    .line 319
    iput-boolean v4, p0, Lcom/android/launcher4/Workspace;->mContentIsRefreshable:Z

    .line 321
    invoke-static {p1}, Lcom/android/launcher4/HolographicOutlineHelper;->obtain(Landroid/content/Context;)Lcom/android/launcher4/HolographicOutlineHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mOutlineHelper:Lcom/android/launcher4/HolographicOutlineHelper;

    .line 323
    new-instance v2, Lcom/android/launcher4/DropTarget$DragEnforcer;

    invoke-direct {v2, p1}, Lcom/android/launcher4/DropTarget$DragEnforcer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mDragEnforcer:Lcom/android/launcher4/DropTarget$DragEnforcer;

    .line 325
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->setDataIsReady()V

    move-object v2, p1

    .line 327
    check-cast v2, Lcom/android/launcher4/Launcher;

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 328
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 330
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 329
    iput-boolean v2, p0, Lcom/android/launcher4/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    .line 331
    iput-boolean v4, p0, Lcom/android/launcher4/Workspace;->mFadeInAdjacentScreens:Z

    .line 332
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 335
    sget-object v2, Lcom/android/launcher4/R$styleable;->Workspace:[I

    .line 334
    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 337
    .local v0, "a":Landroid/content/res/TypedArray;
    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 336
    iput v2, p0, Lcom/android/launcher4/Workspace;->mSpringLoadedShrinkFactor:F

    .line 339
    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 338
    iput v2, p0, Lcom/android/launcher4/Workspace;->mOverviewModeShrinkFactor:F

    .line 341
    const v2, 0x7f0d002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 340
    iput v2, p0, Lcom/android/launcher4/Workspace;->mOverviewModePageOffset:I

    .line 342
    const v2, 0x7f0b001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher4/Workspace;->mCameraDistance:I

    .line 343
    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher4/Workspace;->mDefaultPage:I

    iput v2, p0, Lcom/android/launcher4/Workspace;->mOriginalDefaultPage:I

    .line 345
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 347
    invoke-virtual {p0, p0}, Lcom/android/launcher4/Workspace;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 348
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->initWorkspace()V

    .line 353
    invoke-virtual {p0, v8}, Lcom/android/launcher4/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 354
    invoke-virtual {p0, v8}, Lcom/android/launcher4/Workspace;->setImportantForAccessibility(I)V

    .line 355
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/Workspace;)Lcom/android/launcher4/Launcher;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher4/Workspace;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$10(Lcom/android/launcher4/Workspace;[I)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    return-void
.end method

.method static synthetic access$11(Lcom/android/launcher4/Workspace;I)V
    .locals 0

    .prologue
    .line 261
    iput p1, p0, Lcom/android/launcher4/Workspace;->mLastReorderX:I

    return-void
.end method

.method static synthetic access$12(Lcom/android/launcher4/Workspace;I)V
    .locals 0

    .prologue
    .line 262
    iput p1, p0, Lcom/android/launcher4/Workspace;->mLastReorderY:I

    return-void
.end method

.method static synthetic access$13(Lcom/android/launcher4/Workspace;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$14(Lcom/android/launcher4/Workspace;)V
    .locals 0

    .prologue
    .line 2745
    invoke-direct {p0}, Lcom/android/launcher4/Workspace;->onTransitionEnd()V

    return-void
.end method

.method static synthetic access$15(Lcom/android/launcher4/Workspace;)[F
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mOldBackgroundAlphas:[F

    return-object v0
.end method

.method static synthetic access$16(Lcom/android/launcher4/Workspace;)[F
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mNewBackgroundAlphas:[F

    return-object v0
.end method

.method static synthetic access$17(Lcom/android/launcher4/Workspace;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/launcher4/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$18(Lcom/android/launcher4/Workspace;Z)V
    .locals 0

    .prologue
    .line 1894
    invoke-direct {p0, p1}, Lcom/android/launcher4/Workspace;->updateChildrenLayersEnabled(Z)V

    return-void
.end method

.method static synthetic access$19(Lcom/android/launcher4/Workspace;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/launcher4/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$2(Lcom/android/launcher4/Workspace;)Landroid/app/WallpaperManager;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/android/launcher4/Workspace;->sAccessibilityEnabled:Z

    return v0
.end method

.method static synthetic access$4(Lcom/android/launcher4/Workspace;)Lcom/android/launcher4/FolderIcon$FolderRingAnimator;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/launcher4/Workspace;Lcom/android/launcher4/FolderIcon$FolderRingAnimator;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/launcher4/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    return-void
.end method

.method static synthetic access$6(Lcom/android/launcher4/Workspace;)[F
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/launcher4/Workspace;)Lcom/android/launcher4/CellLayout;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/android/launcher4/Workspace;)[I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$9(Lcom/android/launcher4/Workspace;IIIILcom/android/launcher4/CellLayout;[I)[I
    .locals 1

    .prologue
    .line 4470
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher4/Workspace;->findNearestArea(IIIILcom/android/launcher4/CellLayout;[I)[I

    move-result-object v0

    return-object v0
.end method

.method private animateBackgroundGradient(FZ)V
    .locals 4
    .param p1, "finalAlpha"    # F
    .param p2, "animated"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1535
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1567
    :cond_0
    :goto_0
    return-void

    .line 1537
    :cond_1
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 1538
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1539
    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    .line 1541
    :cond_2
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    .line 1542
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1543
    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1545
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getBackgroundAlpha()F

    move-result v0

    .line 1546
    .local v0, "startAlpha":F
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    .line 1547
    if-eqz p2, :cond_4

    .line 1548
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 1549
    aput v0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 1548
    invoke-static {p0, v1}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1550
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1551
    new-instance v2, Lcom/android/launcher4/Workspace$3;

    invoke-direct {v2, p0}, Lcom/android/launcher4/Workspace$3;-><init>(Lcom/android/launcher4/Workspace;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1558
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1559
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1560
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1561
    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1562
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1564
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Workspace;->setBackgroundAlpha(F)V

    goto :goto_0
.end method

.method private cleanupAddToFolder()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3647
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragOverFolderIcon:Lcom/android/launcher4/FolderIcon;

    if-eqz v0, :cond_0

    .line 3648
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragOverFolderIcon:Lcom/android/launcher4/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/FolderIcon;->onDragExit(Ljava/lang/Object;)V

    .line 3649
    iput-object v1, p0, Lcom/android/launcher4/Workspace;->mDragOverFolderIcon:Lcom/android/launcher4/FolderIcon;

    .line 3651
    :cond_0
    return-void
.end method

.method private cleanupFolderCreation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3638
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    if-eqz v0, :cond_0

    .line 3639
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 3640
    iput-object v1, p0, Lcom/android/launcher4/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    .line 3642
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mFolderCreationAlarm:Lcom/android/launcher4/Alarm;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Alarm;->setOnAlarmListener(Lcom/android/launcher4/OnAlarmListener;)V

    .line 3643
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mFolderCreationAlarm:Lcom/android/launcher4/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher4/Alarm;->cancelAlarm()V

    .line 3644
    return-void
.end method

.method private cleanupReorder(Z)V
    .locals 2
    .param p1, "cancelAlarm"    # Z

    .prologue
    const/4 v1, -0x1

    .line 3655
    if-eqz p1, :cond_0

    .line 3656
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mReorderAlarm:Lcom/android/launcher4/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher4/Alarm;->cancelAlarm()V

    .line 3658
    :cond_0
    iput v1, p0, Lcom/android/launcher4/Workspace;->mLastReorderX:I

    .line 3659
    iput v1, p0, Lcom/android/launcher4/Workspace;->mLastReorderY:I

    .line 3660
    return-void
.end method

.method private createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIIZ)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "orig"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "padding"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "clipAlpha"    # Z

    .prologue
    .line 2875
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f09000a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 2876
    .local v5, "outlineColor":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2877
    .local v3, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2879
    new-instance v12, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v12, v2, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2880
    .local v12, "src":Landroid/graphics/Rect;
    sub-int v2, p4, p3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 2881
    sub-int v4, p5, p3

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 2880
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 2882
    .local v9, "scaleFactor":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v11, v2

    .line 2883
    .local v11, "scaledWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v10, v2

    .line 2884
    .local v10, "scaledHeight":I
    new-instance v8, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v8, v2, v4, v11, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2887
    .local v8, "dst":Landroid/graphics/Rect;
    sub-int v2, p4, v11

    div-int/lit8 v2, v2, 0x2

    sub-int v4, p5, v10

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 2889
    const/4 v2, 0x0

    invoke-virtual {p2, p1, v12, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2890
    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mOutlineHelper:Lcom/android/launcher4/HolographicOutlineHelper;

    move-object v4, p2

    move v6, v5

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher4/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V

    .line 2892
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2894
    return-object v3
.end method

.method private createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "padding"    # I

    .prologue
    .line 2856
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2857
    .local v1, "outlineColor":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    .line 2858
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2857
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2860
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2861
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/launcher4/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 2862
    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mOutlineHelper:Lcom/android/launcher4/HolographicOutlineHelper;

    invoke-virtual {v2, v0, p2, v1, v1}, Lcom/android/launcher4/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 2864
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2865
    return-object v0
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "destCanvas"    # Landroid/graphics/Canvas;
    .param p3, "padding"    # I
    .param p4, "pruneToDrawable"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2781
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 2782
    .local v0, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2784
    const/4 v2, 0x0

    .line 2786
    .local v2, "textVisible":Z
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 2787
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    if-eqz p4, :cond_1

    .line 2788
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v1, v4, v7

    .line 2789
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, p3

    .line 2790
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, p3

    .line 2789
    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2791
    div-int/lit8 v4, p3, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2792
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2824
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 2825
    return-void

    .line 2794
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    instance-of v4, p1, Lcom/android/launcher4/FolderIcon;

    if-eqz v4, :cond_3

    move-object v4, p1

    .line 2799
    check-cast v4, Lcom/android/launcher4/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher4/FolderIcon;->getTextVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 2800
    check-cast v4, Lcom/android/launcher4/FolderIcon;

    invoke-virtual {v4, v6}, Lcom/android/launcher4/FolderIcon;->setTextVisible(Z)V

    .line 2801
    const/4 v2, 0x1

    .line 2814
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v5, p3, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    .line 2815
    div-int/lit8 v6, p3, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 2814
    invoke-virtual {p2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2816
    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2817
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2820
    if-eqz v2, :cond_0

    .line 2821
    check-cast p1, Lcom/android/launcher4/FolderIcon;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, v7}, Lcom/android/launcher4/FolderIcon;->setTextVisible(Z)V

    goto :goto_0

    .line 2803
    .restart local p1    # "v":Landroid/view/View;
    :cond_3
    instance-of v4, p1, Lcom/android/launcher4/BubbleTextView;

    if-eqz v4, :cond_4

    move-object v3, p1

    .line 2804
    check-cast v3, Lcom/android/launcher4/BubbleTextView;

    .line 2805
    .local v3, "tv":Lcom/android/launcher4/BubbleTextView;
    invoke-virtual {v3}, Lcom/android/launcher4/BubbleTextView;->getExtendedPaddingTop()I

    move-result v4

    .line 2806
    add-int/lit8 v4, v4, -0x3

    .line 2807
    invoke-virtual {v3}, Lcom/android/launcher4/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 2805
    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 2808
    .end local v3    # "tv":Lcom/android/launcher4/BubbleTextView;
    :cond_4
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move-object v3, p1

    .line 2809
    check-cast v3, Landroid/widget/TextView;

    .line 2810
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    .line 2811
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2812
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 2810
    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1914
    iget-boolean v9, p0, Lcom/android/launcher4/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v9, :cond_1

    .line 1915
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v6

    .line 1916
    .local v6, "screenCount":I
    iget-object v9, p0, Lcom/android/launcher4/Workspace;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lcom/android/launcher4/Workspace;->getVisiblePages([I)V

    .line 1917
    iget-object v9, p0, Lcom/android/launcher4/Workspace;->mTempVisiblePagesRange:[I

    aget v4, v9, v8

    .line 1918
    .local v4, "leftScreen":I
    iget-object v9, p0, Lcom/android/launcher4/Workspace;->mTempVisiblePagesRange:[I

    aget v5, v9, v7

    .line 1919
    .local v5, "rightScreen":I
    if-ne v4, v5, :cond_0

    .line 1921
    add-int/lit8 v9, v6, -0x1

    if-ge v5, v9, :cond_2

    .line 1922
    add-int/lit8 v5, v5, 0x1

    .line 1928
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    .line 1929
    const-wide/16 v10, -0x12d

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 1930
    .local v0, "customScreen":Lcom/android/launcher4/CellLayout;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v6, :cond_3

    .line 1942
    .end local v0    # "customScreen":Lcom/android/launcher4/CellLayout;
    .end local v2    # "i":I
    .end local v4    # "leftScreen":I
    .end local v5    # "rightScreen":I
    .end local v6    # "screenCount":I
    :cond_1
    return-void

    .line 1923
    .restart local v4    # "leftScreen":I
    .restart local v5    # "rightScreen":I
    .restart local v6    # "screenCount":I
    :cond_2
    if-lez v4, :cond_0

    .line 1924
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1931
    .restart local v0    # "customScreen":Lcom/android/launcher4/CellLayout;
    .restart local v2    # "i":I
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/launcher4/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/CellLayout;

    .line 1937
    .local v3, "layout":Lcom/android/launcher4/CellLayout;
    if-eq v3, v0, :cond_4

    if-gt v4, v2, :cond_4

    .line 1938
    if-gt v2, v5, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/launcher4/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v1, v7

    .line 1939
    .local v1, "enableLayer":Z
    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/launcher4/CellLayout;->enableHardwareLayer(Z)V

    .line 1930
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "enableLayer":Z
    :cond_4
    move v1, v8

    .line 1937
    goto :goto_2
.end method

.method private enableOverviewMode(ZIZ)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "snapPage"    # I
    .param p3, "animated"    # Z

    .prologue
    .line 2152
    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher4/Launcher;->setButtonVisible(Z)V

    .line 2153
    sget-object v0, Lcom/android/launcher4/Workspace$State;->OVERVIEW:Lcom/android/launcher4/Workspace$State;

    .line 2154
    .local v0, "finalState":Lcom/android/launcher4/Workspace$State;
    if-nez p1, :cond_0

    .line 2155
    sget-object v0, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    .line 2159
    :cond_0
    const/4 v2, 0x0

    .line 2158
    invoke-virtual {p0, v0, p3, v2, p2}, Lcom/android/launcher4/Workspace;->getChangeStateAnimation(Lcom/android/launcher4/Workspace$State;ZII)Landroid/animation/Animator;

    move-result-object v1

    .line 2160
    .local v1, "workspaceAnim":Landroid/animation/Animator;
    if-eqz v1, :cond_1

    .line 2161
    invoke-direct {p0}, Lcom/android/launcher4/Workspace;->onTransitionPrepare()V

    .line 2162
    new-instance v2, Lcom/android/launcher4/Workspace$5;

    invoke-direct {v2, p0}, Lcom/android/launcher4/Workspace$5;-><init>(Lcom/android/launcher4/Workspace;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2168
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 2170
    :cond_1
    return-void
.end method

.method private findMatchingPageForDragOver(Lcom/android/launcher4/DragView;FFZ)Lcom/android/launcher4/CellLayout;
    .locals 12
    .param p1, "dragView"    # Lcom/android/launcher4/DragView;
    .param p2, "originX"    # F
    .param p3, "originY"    # F
    .param p4, "exact"    # Z

    .prologue
    .line 3739
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v5

    .line 3740
    .local v5, "screenCount":I
    const/4 v0, 0x0

    .line 3741
    .local v0, "bestMatchingScreen":Lcom/android/launcher4/CellLayout;
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 3743
    .local v6, "smallestDistSoFar":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v5, :cond_1

    move-object v2, v0

    .line 3784
    :cond_0
    return-object v2

    .line 3745
    :cond_1
    iget-object v8, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, -0x12d

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 3743
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3749
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/CellLayout;

    .line 3751
    .local v2, "cl":Lcom/android/launcher4/CellLayout;
    const/4 v8, 0x2

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput p2, v7, v8

    const/4 v8, 0x1

    aput p3, v7, v8

    .line 3756
    .local v7, "touchXy":[F
    invoke-virtual {v2}, Lcom/android/launcher4/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher4/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3757
    iget-object v8, p0, Lcom/android/launcher4/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, v7, v8}, Lcom/android/launcher4/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 3759
    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_4

    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-virtual {v2}, Lcom/android/launcher4/CellLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_4

    .line 3760
    const/4 v8, 0x1

    aget v8, v7, v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_4

    const/4 v8, 0x1

    aget v8, v7, v8

    invoke-virtual {v2}, Lcom/android/launcher4/CellLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-lez v8, :cond_0

    .line 3764
    :cond_4
    if-nez p4, :cond_2

    .line 3766
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 3767
    .local v1, "cellLayoutCenter":[F
    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/android/launcher4/CellLayout;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    aput v9, v1, v8

    .line 3768
    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/android/launcher4/CellLayout;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    aput v9, v1, v8

    .line 3769
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher4/Workspace;->mapPointFromChildToSelf(Landroid/view/View;[F)V

    .line 3771
    const/4 v8, 0x0

    aput p2, v7, v8

    .line 3772
    const/4 v8, 0x1

    aput p3, v7, v8

    .line 3776
    invoke-static {v7, v1}, Lcom/android/launcher4/Workspace;->squaredDistance([F[F)F

    move-result v3

    .line 3778
    .local v3, "dist":F
    cmpg-float v8, v3, v6

    if-gez v8, :cond_2

    .line 3779
    move v6, v3

    .line 3780
    move-object v0, v2

    goto :goto_1
.end method

.method private findNearestArea(IIIILcom/android/launcher4/CellLayout;[I)[I
    .locals 6
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "layout"    # Lcom/android/launcher4/CellLayout;
    .param p6, "recycle"    # [I

    .prologue
    .line 4472
    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method static getCellLayoutMetrics(Lcom/android/launcher4/Launcher;I)Landroid/graphics/Rect;
    .locals 19
    .param p0, "launcher"    # Lcom/android/launcher4/Launcher;
    .param p1, "orientation"    # I

    .prologue
    .line 3505
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v1

    .line 3506
    .local v1, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v1}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v7

    .line 3508
    .local v7, "grid":Lcom/android/launcher4/DeviceProfile;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 3509
    .local v11, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 3510
    .local v6, "display":Landroid/view/Display;
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 3511
    .local v12, "smallestSize":Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 3512
    .local v9, "largestSize":Landroid/graphics/Point;
    invoke-virtual {v6, v12, v9}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 3513
    iget v14, v7, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    float-to-int v4, v14

    .line 3514
    .local v4, "countX":I
    iget v14, v7, Lcom/android/launcher4/DeviceProfile;->numRows:F

    float-to-int v5, v14

    .line 3515
    .local v5, "countY":I
    iget v2, v9, Landroid/graphics/Point;->y:I

    .line 3516
    .local v2, "constrainedLongEdge":I
    iget v3, v12, Landroid/graphics/Point;->y:I

    .line 3517
    .local v3, "constrainedShortEdge":I
    if-nez p1, :cond_1

    .line 3518
    sget-object v14, Lcom/android/launcher4/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez v14, :cond_0

    .line 3519
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Lcom/android/launcher4/DeviceProfile;->getWorkspacePadding(I)Landroid/graphics/Rect;

    move-result-object v10

    .line 3520
    .local v10, "padding":Landroid/graphics/Rect;
    iget v14, v10, Landroid/graphics/Rect;->left:I

    sub-int v14, v2, v14

    iget v15, v10, Landroid/graphics/Rect;->right:I

    sub-int v13, v14, v15

    .line 3521
    .local v13, "width":I
    iget v14, v10, Landroid/graphics/Rect;->top:I

    sub-int v14, v3, v14

    .line 3522
    iget v15, v10, Landroid/graphics/Rect;->bottom:I

    .line 3521
    sub-int v8, v14, v15

    .line 3523
    .local v8, "height":I
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    sput-object v14, Lcom/android/launcher4/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3524
    sget-object v14, Lcom/android/launcher4/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3525
    invoke-virtual {v7, v13, v4}, Lcom/android/launcher4/DeviceProfile;->calculateCellWidth(II)I

    move-result v15

    .line 3526
    invoke-virtual {v7, v8, v5}, Lcom/android/launcher4/DeviceProfile;->calculateCellHeight(II)I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 3524
    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Rect;->set(IIII)V

    .line 3528
    .end local v8    # "height":I
    .end local v10    # "padding":Landroid/graphics/Rect;
    .end local v13    # "width":I
    :cond_0
    sget-object v14, Lcom/android/launcher4/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3541
    :goto_0
    return-object v14

    .line 3529
    :cond_1
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_3

    .line 3530
    sget-object v14, Lcom/android/launcher4/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez v14, :cond_2

    .line 3531
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Lcom/android/launcher4/DeviceProfile;->getWorkspacePadding(I)Landroid/graphics/Rect;

    move-result-object v10

    .line 3532
    .restart local v10    # "padding":Landroid/graphics/Rect;
    iget v14, v10, Landroid/graphics/Rect;->left:I

    sub-int v14, v3, v14

    iget v15, v10, Landroid/graphics/Rect;->right:I

    sub-int v13, v14, v15

    .line 3533
    .restart local v13    # "width":I
    iget v14, v10, Landroid/graphics/Rect;->top:I

    sub-int v14, v2, v14

    iget v15, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v14, v15

    .line 3534
    .restart local v8    # "height":I
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    sput-object v14, Lcom/android/launcher4/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3535
    sget-object v14, Lcom/android/launcher4/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 3536
    invoke-virtual {v7, v13, v4}, Lcom/android/launcher4/DeviceProfile;->calculateCellWidth(II)I

    move-result v15

    .line 3537
    invoke-virtual {v7, v8, v5}, Lcom/android/launcher4/DeviceProfile;->calculateCellHeight(II)I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 3535
    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Rect;->set(IIII)V

    .line 3539
    .end local v8    # "height":I
    .end local v10    # "padding":Landroid/graphics/Rect;
    .end local v13    # "width":I
    :cond_2
    sget-object v14, Lcom/android/launcher4/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    goto :goto_0

    .line 3541
    :cond_3
    const/4 v14, 0x0

    goto :goto_0
.end method

.method private getDragViewVisualCenter(IIIILcom/android/launcher4/DragView;[F)[F
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "dragView"    # Lcom/android/launcher4/DragView;
    .param p6, "recycle"    # [F

    .prologue
    .line 3797
    if-nez p6, :cond_0

    .line 3798
    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 3806
    .local v1, "res":[F
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr p1, v3

    .line 3807
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr p2, v3

    .line 3815
    sub-int v0, p1, p3

    .line 3816
    .local v0, "left":I
    sub-int v2, p2, p4

    .line 3819
    .local v2, "top":I
    const/4 v3, 0x0

    invoke-virtual {p5}, Lcom/android/launcher4/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    aput v4, v1, v3

    .line 3820
    const/4 v3, 0x1

    invoke-virtual {p5}, Lcom/android/launcher4/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-float v4, v4

    aput v4, v1, v3

    .line 3822
    return-object v1

    .line 3800
    .end local v0    # "left":I
    .end local v1    # "res":[F
    .end local v2    # "top":I
    :cond_0
    move-object v1, p6

    .restart local v1    # "res":[F
    goto :goto_0
.end method

.method private getFinalPositionForDropAnimation([I[FLcom/android/launcher4/DragView;Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/ItemInfo;[IZZ)V
    .locals 12
    .param p1, "loc"    # [I
    .param p2, "scaleXY"    # [F
    .param p3, "dragView"    # Lcom/android/launcher4/DragView;
    .param p4, "layout"    # Lcom/android/launcher4/CellLayout;
    .param p5, "info"    # Lcom/android/launcher4/ItemInfo;
    .param p6, "targetCell"    # [I
    .param p7, "external"    # Z
    .param p8, "scale"    # Z

    .prologue
    .line 4331
    move-object/from16 v0, p5

    iget v6, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 4332
    .local v6, "spanX":I
    move-object/from16 v0, p5

    iget v7, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 4334
    .local v7, "spanY":I
    const/4 v1, 0x0

    aget v4, p6, v1

    .line 4335
    const/4 v1, 0x1

    aget v5, p6, v1

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 4334
    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher4/Workspace;->estimateItemPosition(Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/ItemInfo;IIII)Landroid/graphics/Rect;

    move-result-object v11

    .line 4336
    .local v11, "r":Landroid/graphics/Rect;
    const/4 v1, 0x0

    iget v2, v11, Landroid/graphics/Rect;->left:I

    aput v2, p1, v1

    .line 4337
    const/4 v1, 0x1

    iget v2, v11, Landroid/graphics/Rect;->top:I

    aput v2, p1, v1

    .line 4339
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setFinalTransitionTransform(Lcom/android/launcher4/CellLayout;)V

    .line 4340
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v1

    .line 4341
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/launcher4/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v8

    .line 4342
    .local v8, "cellLayoutScale":F
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->resetTransitionTransform(Lcom/android/launcher4/CellLayout;)V

    .line 4346
    if-eqz p8, :cond_0

    .line 4347
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p3}, Lcom/android/launcher4/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 4348
    .local v9, "dragViewScaleX":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p3}, Lcom/android/launcher4/DragView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v1, v2

    .line 4357
    .local v10, "dragViewScaleY":F
    :goto_0
    const/4 v1, 0x0

    aget v2, p1, v1

    int-to-float v2, v2

    invoke-virtual {p3}, Lcom/android/launcher4/DragView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, p1, v1

    .line 4358
    const/4 v1, 0x1

    aget v2, p1, v1

    int-to-float v2, v2

    invoke-virtual {p3}, Lcom/android/launcher4/DragView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, p1, v1

    .line 4360
    const/4 v1, 0x0

    mul-float v2, v9, v8

    aput v2, p2, v1

    .line 4361
    const/4 v1, 0x1

    mul-float v2, v10, v8

    aput v2, p2, v1

    .line 4362
    return-void

    .line 4350
    .end local v9    # "dragViewScaleX":F
    .end local v10    # "dragViewScaleY":F
    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    .line 4351
    .restart local v9    # "dragViewScaleX":F
    const/high16 v10, 0x3f800000    # 1.0f

    .restart local v10    # "dragViewScaleY":F
    goto :goto_0
.end method

.method private initAnimationArrays()V
    .locals 2

    .prologue
    .line 2071
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v0

    .line 2072
    .local v0, "childCount":I
    iget v1, p0, Lcom/android/launcher4/Workspace;->mLastChildCount:I

    if-ne v1, v0, :cond_0

    .line 2079
    :goto_0
    return-void

    .line 2075
    :cond_0
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher4/Workspace;->mOldBackgroundAlphas:[F

    .line 2076
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher4/Workspace;->mOldAlphas:[F

    .line 2077
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher4/Workspace;->mNewBackgroundAlphas:[F

    .line 2078
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher4/Workspace;->mNewAlphas:[F

    goto :goto_0
.end method

.method private isDragWidget(Lcom/android/launcher4/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 3826
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher4/PendingAddWidgetInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isExternalDragWidget(Lcom/android/launcher4/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 3830
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    if-eq v0, p0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher4/Workspace;->isDragWidget(Lcom/android/launcher4/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private manageFolderFeedback(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/CellLayout;[IFLandroid/view/View;)V
    .locals 10
    .param p1, "info"    # Lcom/android/launcher4/ItemInfo;
    .param p2, "targetLayout"    # Lcom/android/launcher4/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "dragOverView"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 3967
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/Workspace;->willCreateUserFolder(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/CellLayout;[IFZ)Z

    move-result v6

    .line 3970
    .local v6, "userFolderPending":Z
    iget v0, p0, Lcom/android/launcher4/Workspace;->mDragMode:I

    if-nez v0, :cond_1

    if-eqz v6, :cond_1

    .line 3971
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mFolderCreationAlarm:Lcom/android/launcher4/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher4/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3972
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mFolderCreationAlarm:Lcom/android/launcher4/Alarm;

    .line 3973
    new-instance v1, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;

    .line 3974
    aget v2, p3, v5

    aget v3, p3, v8

    .line 3973
    invoke-direct {v1, p0, p2, v2, v3}, Lcom/android/launcher4/Workspace$FolderCreationAlarmListener;-><init>(Lcom/android/launcher4/Workspace;Lcom/android/launcher4/CellLayout;II)V

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Alarm;->setOnAlarmListener(Lcom/android/launcher4/OnAlarmListener;)V

    .line 3975
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mFolderCreationAlarm:Lcom/android/launcher4/Alarm;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher4/Alarm;->setAlarm(J)V

    .line 3999
    .end local p5    # "dragOverView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 3979
    .restart local p5    # "dragOverView":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher4/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher4/CellLayout;[IF)Z

    move-result v7

    .line 3982
    .local v7, "willAddToFolder":Z
    if-eqz v7, :cond_3

    iget v0, p0, Lcom/android/launcher4/Workspace;->mDragMode:I

    if-nez v0, :cond_3

    .line 3983
    check-cast p5, Lcom/android/launcher4/FolderIcon;

    .end local p5    # "dragOverView":Landroid/view/View;
    iput-object p5, p0, Lcom/android/launcher4/Workspace;->mDragOverFolderIcon:Lcom/android/launcher4/FolderIcon;

    .line 3984
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragOverFolderIcon:Lcom/android/launcher4/FolderIcon;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/FolderIcon;->onDragEnter(Ljava/lang/Object;)V

    .line 3985
    if-eqz p2, :cond_2

    .line 3986
    invoke-virtual {p2}, Lcom/android/launcher4/CellLayout;->clearDragOutlines()V

    .line 3988
    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/launcher4/Workspace;->setDragMode(I)V

    goto :goto_0

    .line 3992
    .restart local p5    # "dragOverView":Landroid/view/View;
    :cond_3
    iget v0, p0, Lcom/android/launcher4/Workspace;->mDragMode:I

    if-ne v0, v9, :cond_4

    if-nez v7, :cond_4

    .line 3993
    invoke-virtual {p0, v5}, Lcom/android/launcher4/Workspace;->setDragMode(I)V

    .line 3995
    :cond_4
    iget v0, p0, Lcom/android/launcher4/Workspace;->mDragMode:I

    if-ne v0, v8, :cond_0

    if-nez v6, :cond_0

    .line 3996
    invoke-virtual {p0, v5}, Lcom/android/launcher4/Workspace;->setDragMode(I)V

    goto :goto_0
.end method

.method private moveToScreen(IZ)V
    .locals 2
    .param p1, "page"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 5125
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isSmall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5126
    if-eqz p2, :cond_2

    .line 5127
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Workspace;->snapToPage(I)V

    .line 5132
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5133
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 5134
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 5136
    :cond_1
    return-void

    .line 5129
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher4/CellLayout;Z)V
    .locals 6
    .param p1, "touchXY"    # [I
    .param p2, "dragInfo"    # Ljava/lang/Object;
    .param p3, "cellLayout"    # Lcom/android/launcher4/CellLayout;
    .param p4, "insertAtFirst"    # Z

    .prologue
    .line 4105
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher4/CellLayout;ZLcom/android/launcher4/DropTarget$DragObject;)V

    .line 4106
    return-void
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher4/CellLayout;ZLcom/android/launcher4/DropTarget$DragObject;)V
    .locals 59
    .param p1, "touchXY"    # [I
    .param p2, "dragInfo"    # Ljava/lang/Object;
    .param p3, "cellLayout"    # Lcom/android/launcher4/CellLayout;
    .param p4, "insertAtFirst"    # Z
    .param p5, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 4118
    new-instance v54, Lcom/android/launcher4/Workspace$11;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher4/Workspace$11;-><init>(Lcom/android/launcher4/Workspace;)V

    .local v54, "exitSpringLoadedRunnable":Ljava/lang/Runnable;
    move-object/from16 v33, p2

    .line 4125
    check-cast v33, Lcom/android/launcher4/ItemInfo;

    .line 4126
    .local v33, "info":Lcom/android/launcher4/ItemInfo;
    move-object/from16 v0, v33

    iget v7, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 4127
    .local v7, "spanX":I
    move-object/from16 v0, v33

    iget v8, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 4128
    .local v8, "spanY":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    if-eqz v4, :cond_0

    .line 4129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget v7, v4, Lcom/android/launcher4/CellLayout$CellInfo;->spanX:I

    .line 4130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget v8, v4, Lcom/android/launcher4/CellLayout$CellInfo;->spanY:I

    .line 4133
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/launcher4/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, -0x65

    :goto_0
    int-to-long v0, v4

    move-wide/from16 v28, v0

    .line 4135
    .local v28, "container":J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->getIdForScreen(Lcom/android/launcher4/CellLayout;)J

    move-result-wide v30

    .line 4136
    .local v30, "screenId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/launcher4/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4137
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/Workspace;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher4/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    cmp-long v4, v30, v4

    if-eqz v4, :cond_1

    .line 4138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v5, Lcom/android/launcher4/Workspace$State;->SPRING_LOADED:Lcom/android/launcher4/Workspace$State;

    if-eq v4, v5, :cond_1

    .line 4139
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher4/Workspace;->snapToScreenId(JLjava/lang/Runnable;)V

    .line 4142
    :cond_1
    move-object/from16 v0, v33

    instance-of v4, v0, Lcom/android/launcher4/PendingAddItemInfo;

    if-eqz v4, :cond_d

    move-object/from16 v26, p2

    .line 4143
    check-cast v26, Lcom/android/launcher4/PendingAddItemInfo;

    .line 4145
    .local v26, "pendingInfo":Lcom/android/launcher4/PendingAddItemInfo;
    const/16 v55, 0x1

    .line 4146
    .local v55, "findNearestVacantCell":Z
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher4/PendingAddItemInfo;->itemType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 4147
    const/4 v4, 0x0

    aget v5, p1, v4

    .line 4148
    const/4 v4, 0x1

    aget v6, p1, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v9, p3

    .line 4147
    invoke-direct/range {v4 .. v10}, Lcom/android/launcher4/Workspace;->findNearestArea(IIIILcom/android/launcher4/CellLayout;[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 4150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    .line 4151
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 4149
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher4/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v13

    .line 4152
    .local v13, "distance":F
    move-object/from16 v0, p5

    iget-object v10, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v10, Lcom/android/launcher4/ItemInfo;

    .line 4153
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v14, 0x1

    move-object/from16 v9, p0

    move-object/from16 v11, p3

    .line 4152
    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher4/Workspace;->willCreateUserFolder(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/CellLayout;[IFZ)Z

    move-result v4

    .line 4153
    if-nez v4, :cond_2

    .line 4154
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher4/ItemInfo;

    .line 4155
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 4154
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v5, v13}, Lcom/android/launcher4/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher4/CellLayout;[IF)Z

    move-result v4

    .line 4155
    if-eqz v4, :cond_3

    .line 4156
    :cond_2
    const/16 v55, 0x0

    .line 4160
    .end local v13    # "distance":F
    :cond_3
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/launcher4/ItemInfo;

    .line 4161
    .local v27, "item":Lcom/android/launcher4/ItemInfo;
    const/16 v58, 0x0

    .line 4162
    .local v58, "updateWidgetSize":Z
    if-eqz v55, :cond_7

    .line 4163
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    move/from16 v17, v0

    .line 4164
    .local v17, "minSpanX":I
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    move/from16 v18, v0

    .line 4165
    .local v18, "minSpanY":I
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/launcher4/ItemInfo;->minSpanX:I

    if-lez v4, :cond_4

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/launcher4/ItemInfo;->minSpanY:I

    if-lez v4, :cond_4

    .line 4166
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->minSpanX:I

    move/from16 v17, v0

    .line 4167
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->minSpanY:I

    move/from16 v18, v0

    .line 4169
    :cond_4
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v23, v0

    .line 4171
    .local v23, "resultSpan":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v15, v4

    .line 4172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    move/from16 v16, v0

    .line 4173
    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    move/from16 v19, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    move-object/from16 v22, v0

    .line 4174
    const/16 v24, 0x2

    move-object/from16 v14, p3

    .line 4170
    invoke-virtual/range {v14 .. v24}, Lcom/android/launcher4/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 4176
    const/4 v4, 0x0

    aget v4, v23, v4

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    aget v4, v23, v4

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    if-eq v4, v5, :cond_6

    .line 4177
    :cond_5
    const/16 v58, 0x1

    .line 4179
    :cond_6
    const/4 v4, 0x0

    aget v4, v23, v4

    move-object/from16 v0, v27

    iput v4, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 4180
    const/4 v4, 0x1

    aget v4, v23, v4

    move-object/from16 v0, v27

    iput v4, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 4183
    .end local v17    # "minSpanX":I
    .end local v18    # "minSpanY":I
    .end local v23    # "resultSpan":[I
    :cond_7
    new-instance v24, Lcom/android/launcher4/Workspace$12;

    move-object/from16 v25, p0

    invoke-direct/range {v24 .. v31}, Lcom/android/launcher4/Workspace$12;-><init>(Lcom/android/launcher4/Workspace;Lcom/android/launcher4/PendingAddItemInfo;Lcom/android/launcher4/ItemInfo;JJ)V

    .line 4209
    .local v24, "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher4/PendingAddItemInfo;->itemType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_c

    move-object/from16 v4, v26

    check-cast v4, Lcom/android/launcher4/PendingAddWidgetInfo;

    iget-object v0, v4, Lcom/android/launcher4/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v38, v0

    .line 4212
    .local v38, "finalView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, v38

    instance-of v4, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_8

    if-eqz v58, :cond_8

    move-object/from16 v53, v38

    .line 4213
    check-cast v53, Landroid/appwidget/AppWidgetHostView;

    .line 4214
    .local v53, "awhv":Landroid/appwidget/AppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 4215
    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    move-object/from16 v0, v27

    iget v6, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 4214
    move-object/from16 v0, v53

    invoke-static {v0, v4, v5, v6}, Lcom/android/launcher4/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher4/Launcher;II)V

    .line 4218
    .end local v53    # "awhv":Landroid/appwidget/AppWidgetHostView;
    :cond_8
    const/16 v37, 0x0

    .line 4219
    .local v37, "animationStyle":I
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher4/PendingAddItemInfo;->itemType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    .line 4220
    check-cast v26, Lcom/android/launcher4/PendingAddWidgetInfo;

    .end local v26    # "pendingInfo":Lcom/android/launcher4/PendingAddItemInfo;
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher4/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v4, :cond_9

    .line 4221
    const/16 v37, 0x1

    .line 4223
    :cond_9
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    move-object/from16 v35, v0

    .line 4225
    const/16 v39, 0x1

    move-object/from16 v32, p0

    move-object/from16 v34, p3

    move-object/from16 v36, v24

    .line 4223
    invoke-virtual/range {v32 .. v39}, Lcom/android/launcher4/Workspace;->animateWidgetDrop(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 4301
    .end local v24    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    .end local v27    # "item":Lcom/android/launcher4/ItemInfo;
    .end local v37    # "animationStyle":I
    .end local v38    # "finalView":Landroid/view/View;
    .end local v55    # "findNearestVacantCell":Z
    .end local v58    # "updateWidgetSize":Z
    :cond_a
    :goto_2
    return-void

    .line 4134
    .end local v28    # "container":J
    .end local v30    # "screenId":J
    :cond_b
    const/16 v4, -0x64

    goto/16 :goto_0

    .line 4210
    .restart local v24    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    .restart local v26    # "pendingInfo":Lcom/android/launcher4/PendingAddItemInfo;
    .restart local v27    # "item":Lcom/android/launcher4/ItemInfo;
    .restart local v28    # "container":J
    .restart local v30    # "screenId":J
    .restart local v55    # "findNearestVacantCell":Z
    .restart local v58    # "updateWidgetSize":Z
    :cond_c
    const/16 v38, 0x0

    goto :goto_1

    .line 4228
    .end local v24    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    .end local v26    # "pendingInfo":Lcom/android/launcher4/PendingAddItemInfo;
    .end local v27    # "item":Lcom/android/launcher4/ItemInfo;
    .end local v55    # "findNearestVacantCell":Z
    .end local v58    # "updateWidgetSize":Z
    :cond_d
    const/16 v41, 0x0

    .line 4230
    .local v41, "view":Landroid/view/View;
    move-object/from16 v0, v33

    iget v4, v0, Lcom/android/launcher4/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_0

    .line 4245
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown item type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4246
    move-object/from16 v0, v33

    iget v6, v0, Lcom/android/launcher4/ItemInfo;->itemType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4245
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4233
    :pswitch_0
    move-object/from16 v0, v33

    iget-wide v4, v0, Lcom/android/launcher4/ItemInfo;->container:J

    const-wide/16 v10, -0x1

    cmp-long v4, v4, v10

    if-nez v4, :cond_e

    move-object/from16 v0, v33

    instance-of v4, v0, Lcom/android/launcher4/AppInfo;

    if-eqz v4, :cond_e

    .line 4235
    new-instance v56, Lcom/android/launcher4/ShortcutInfo;

    check-cast v33, Lcom/android/launcher4/AppInfo;

    .end local v33    # "info":Lcom/android/launcher4/ItemInfo;
    move-object/from16 v0, v56

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/launcher4/ShortcutInfo;-><init>(Lcom/android/launcher4/AppInfo;)V

    .local v56, "info":Lcom/android/launcher4/ItemInfo;
    move-object/from16 v33, v56

    .line 4237
    .end local v56    # "info":Lcom/android/launcher4/ItemInfo;
    .restart local v33    # "info":Lcom/android/launcher4/ItemInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    const v6, 0x7f040008

    move-object/from16 v4, v33

    .line 4238
    check-cast v4, Lcom/android/launcher4/ShortcutInfo;

    .line 4237
    move-object/from16 v0, p3

    invoke-virtual {v5, v6, v0, v4}, Lcom/android/launcher4/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher4/ShortcutInfo;)Landroid/view/View;

    move-result-object v41

    .line 4252
    :goto_3
    if-eqz p1, :cond_f

    .line 4253
    const/4 v4, 0x0

    aget v5, p1, v4

    .line 4254
    const/4 v4, 0x1

    aget v6, p1, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v9, p3

    .line 4253
    invoke-direct/range {v4 .. v10}, Lcom/android/launcher4/Workspace;->findNearestArea(IIIILcom/android/launcher4/CellLayout;[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 4256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    .line 4257
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 4255
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher4/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v13

    .line 4258
    .restart local v13    # "distance":F
    move-object/from16 v0, v54

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/launcher4/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 4260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    move-object/from16 v45, v0

    const/16 v47, 0x1

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    move-object/from16 v48, v0

    .line 4261
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher4/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v49, v0

    move-object/from16 v40, p0

    move-wide/from16 v42, v28

    move-object/from16 v44, p3

    move/from16 v46, v13

    .line 4259
    invoke-virtual/range {v40 .. v49}, Lcom/android/launcher4/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher4/CellLayout;[IFZLcom/android/launcher4/DragView;Ljava/lang/Runnable;)Z

    move-result v4

    .line 4261
    if-nez v4, :cond_a

    .line 4265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    move-object/from16 v43, v0

    const/16 v46, 0x1

    move-object/from16 v40, p0

    move-object/from16 v42, p3

    move/from16 v44, v13

    move-object/from16 v45, p5

    .line 4264
    invoke-virtual/range {v40 .. v46}, Lcom/android/launcher4/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher4/CellLayout;[IFLcom/android/launcher4/DropTarget$DragObject;Z)Z

    move-result v4

    .line 4265
    if-nez v4, :cond_a

    .line 4270
    .end local v13    # "distance":F
    :cond_f
    if-eqz p1, :cond_10

    .line 4273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v0, v4

    move/from16 v43, v0

    .line 4274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v0, v4

    move/from16 v44, v0

    const/16 v45, 0x1

    const/16 v46, 0x1

    const/16 v47, 0x1

    const/16 v48, 0x1

    const/16 v49, 0x0

    .line 4275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    move-object/from16 v50, v0

    const/16 v51, 0x0

    const/16 v52, 0x2

    move-object/from16 v42, p3

    .line 4272
    invoke-virtual/range {v42 .. v52}, Lcom/android/launcher4/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 4279
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    aget v46, v4, v5

    .line 4280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    aget v47, v4, v5

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    move/from16 v48, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    move/from16 v49, v0

    move-object/from16 v40, p0

    move-wide/from16 v42, v28

    move-wide/from16 v44, v30

    move/from16 v50, p4

    .line 4279
    invoke-virtual/range {v40 .. v50}, Lcom/android/launcher4/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 4281
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 4283
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v57

    .line 4282
    check-cast v57, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 4284
    .local v57, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 4286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v42, v0

    .line 4287
    move-object/from16 v0, v57

    iget v0, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    move/from16 v48, v0

    move-object/from16 v0, v57

    iget v0, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    move/from16 v49, v0

    move-object/from16 v43, v33

    move-wide/from16 v44, v28

    move-wide/from16 v46, v30

    .line 4286
    invoke-static/range {v42 .. v49}, Lcom/android/launcher4/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJII)V

    .line 4289
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    if-eqz v4, :cond_a

    .line 4295
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->setFinalTransitionTransform(Lcom/android/launcher4/CellLayout;)V

    .line 4296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v4

    move-object/from16 v0, p5

    iget-object v5, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/launcher4/DragLayer;->animateViewIntoPosition(Lcom/android/launcher4/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4298
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->resetTransitionTransform(Lcom/android/launcher4/CellLayout;)V

    goto/16 :goto_2

    .line 4241
    .end local v57    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    :pswitch_1
    const v5, 0x7f04001c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v4, v33

    .line 4242
    check-cast v4, Lcom/android/launcher4/FolderInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher4/Workspace;->mIconCache:Lcom/android/launcher4/IconCache;

    .line 4241
    move-object/from16 v0, p3

    invoke-static {v5, v6, v0, v4, v9}, Lcom/android/launcher4/FolderIcon;->fromXml(ILcom/android/launcher4/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher4/FolderInfo;Lcom/android/launcher4/IconCache;)Lcom/android/launcher4/FolderIcon;

    move-result-object v41

    .line 4243
    goto/16 :goto_3

    .line 4277
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher4/CellLayout;->findCellForSpan([III)Z

    goto/16 :goto_4

    .line 4230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onResetScrollArea()V
    .locals 1

    .prologue
    .line 4867
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher4/CellLayout;)V

    .line 4868
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/Workspace;->mInScrollArea:Z

    .line 4869
    return-void
.end method

.method private onTransitionEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2746
    iput-boolean v2, p0, Lcom/android/launcher4/Workspace;->mIsSwitchingState:Z

    .line 2747
    invoke-direct {p0, v2}, Lcom/android/launcher4/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2755
    iget-boolean v2, p0, Lcom/android/launcher4/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-nez v2, :cond_0

    .line 2756
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 2761
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->showCustomContentIfNecessary()V

    .line 2762
    return-void

    .line 2757
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 2758
    .local v0, "cl":Lcom/android/launcher4/CellLayout;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/launcher4/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 2756
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private onTransitionPrepare()V
    .locals 1

    .prologue
    .line 2711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Workspace;->mIsSwitchingState:Z

    .line 2715
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->invalidate()V

    .line 2717
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher4/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2718
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hideCustomContentIfNecessary()V

    .line 2719
    return-void
.end method

.method private setChildrenBackgroundAlphaMultipliers(F)V
    .locals 3
    .param p1, "a"    # F

    .prologue
    .line 1615
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1619
    return-void

    .line 1616
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 1617
    .local v0, "child":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v0, p1}, Lcom/android/launcher4/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setState(Lcom/android/launcher4/Workspace$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/launcher4/Workspace$State;

    .prologue
    .line 2202
    iput-object p1, p0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    .line 2203
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->updateInteractionForState()V

    .line 2204
    invoke-direct {p0}, Lcom/android/launcher4/Workspace;->updateAccessibilityFlags()V

    .line 2205
    return-void
.end method

.method private setupLayoutTransition()V
    .locals 2

    .prologue
    .line 468
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 469
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 470
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 471
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 472
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 473
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 474
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 475
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 476
    return-void
.end method

.method private static squaredDistance([F[F)F
    .locals 5
    .param p0, "point1"    # [F
    .param p1, "point2"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3719
    aget v2, p0, v3

    aget v3, p1, v3

    sub-float v0, v2, v3

    .line 3720
    .local v0, "distanceX":F
    aget v2, p1, v4

    aget v3, p1, v4

    sub-float v1, v2, v3

    .line 3721
    .local v1, "distanceY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method private updateAccessibilityFlags()V
    .locals 3

    .prologue
    .line 2208
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v2, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2210
    .local v0, "accessible":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setImportantForAccessibility(I)V

    .line 2211
    return-void

    .line 2209
    .end local v0    # "accessible":I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private updateChildrenLayersEnabled(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1895
    iget-object v5, p0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v6, Lcom/android/launcher4/Workspace$State;->SMALL:Lcom/android/launcher4/Workspace$State;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v6, Lcom/android/launcher4/Workspace$State;->OVERVIEW:Lcom/android/launcher4/Workspace$State;

    if-eq v5, v6, :cond_2

    .line 1896
    iget-boolean v5, p0, Lcom/android/launcher4/Workspace;->mIsSwitchingState:Z

    if-nez v5, :cond_2

    move v3, v4

    .line 1897
    .local v3, "small":Z
    :goto_0
    if-nez p1, :cond_0

    if-nez v3, :cond_0

    .line 1898
    iget-boolean v5, p0, Lcom/android/launcher4/Workspace;->mAnimatingViewIntoPlace:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isPageMoving()Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v4

    .line 1900
    .local v1, "enableChildrenLayers":Z
    :cond_0
    iget-boolean v5, p0, Lcom/android/launcher4/Workspace;->mChildrenLayersEnabled:Z

    if-eq v1, v5, :cond_1

    .line 1901
    iput-boolean v1, p0, Lcom/android/launcher4/Workspace;->mChildrenLayersEnabled:Z

    .line 1902
    iget-boolean v5, p0, Lcom/android/launcher4/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v5, :cond_3

    .line 1903
    invoke-direct {p0}, Lcom/android/launcher4/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1911
    :cond_1
    return-void

    .end local v1    # "enableChildrenLayers":Z
    .end local v3    # "small":Z
    :cond_2
    move v3, v1

    .line 1895
    goto :goto_0

    .line 1905
    .restart local v1    # "enableChildrenLayers":Z
    .restart local v3    # "small":Z
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getPageCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1906
    invoke-virtual {p0, v2}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 1907
    .local v0, "cl":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v0, v4}, Lcom/android/launcher4/CellLayout;->enableHardwareLayer(Z)V

    .line 1905
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private updatePageAlphaValues(I)V
    .locals 8
    .param p1, "screenCenter"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1593
    iget v5, p0, Lcom/android/launcher4/Workspace;->mOverScrollX:I

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/android/launcher4/Workspace;->mOverScrollX:I

    iget v6, p0, Lcom/android/launcher4/Workspace;->mMaxScrollX:I

    if-gt v5, v6, :cond_1

    const/4 v3, 0x0

    .line 1594
    .local v3, "isInOverscroll":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher4/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v6, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    if-ne v5, v6, :cond_0

    .line 1595
    iget-boolean v5, p0, Lcom/android/launcher4/Workspace;->mIsSwitchingState:Z

    if-nez v5, :cond_0

    if-nez v3, :cond_0

    .line 1596
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 1612
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 1593
    .end local v3    # "isInOverscroll":Z
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 1597
    .restart local v2    # "i":I
    .restart local v3    # "isInOverscroll":Z
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/CellLayout;

    .line 1598
    .local v1, "child":Lcom/android/launcher4/CellLayout;
    if-eqz v1, :cond_3

    .line 1599
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher4/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1601
    .local v4, "scrollProgress":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v0, v7, v5

    .line 1602
    .local v0, "alpha":F
    invoke-virtual {v1}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->setAlpha(F)V

    .line 1603
    iget-boolean v5, p0, Lcom/android/launcher4/Workspace;->mIsDragOccuring:Z

    if-nez v5, :cond_4

    .line 1605
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1604
    invoke-virtual {p0, v5}, Lcom/android/launcher4/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher4/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1596
    .end local v0    # "alpha":F
    .end local v4    # "scrollProgress":F
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1607
    .restart local v0    # "alpha":F
    .restart local v4    # "scrollProgress":F
    :cond_4
    invoke-virtual {v1, v7}, Lcom/android/launcher4/CellLayout;->setBackgroundAlphaMultiplier(F)V

    goto :goto_2
.end method

.method private updateStateForCustomContent(I)V
    .locals 12
    .param p1, "screenCenter"    # I

    .prologue
    const-wide/16 v10, -0x12d

    const/4 v8, 0x0

    .line 1641
    const/4 v5, 0x0

    .line 1642
    .local v5, "translationX":F
    const/4 v2, 0x0

    .line 1643
    .local v2, "progress":F
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1644
    iget-object v6, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1646
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getScrollX()I

    move-result v6

    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->getScrollForPage(I)I

    move-result v7

    sub-int/2addr v6, v7

    .line 1647
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->getLayoutTransitionOffsetForPage(I)I

    move-result v7

    .line 1646
    sub-int v3, v6, v7

    .line 1648
    .local v3, "scrollDelta":I
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher4/Workspace;->getScrollForPage(I)I

    move-result v6

    .line 1649
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->getScrollForPage(I)I

    move-result v7

    .line 1648
    sub-int/2addr v6, v7

    int-to-float v4, v6

    .line 1650
    .local v4, "scrollRange":F
    int-to-float v6, v3

    sub-float v5, v4, v6

    .line 1651
    int-to-float v6, v3

    sub-float v6, v4, v6

    div-float v2, v6, v4

    .line 1653
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1654
    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1658
    :goto_0
    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1661
    .end local v1    # "index":I
    .end local v3    # "scrollDelta":I
    .end local v4    # "scrollRange":F
    :cond_0
    iget v6, p0, Lcom/android/launcher4/Workspace;->mLastCustomContentScrollProgress:F

    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_3

    .line 1684
    :cond_1
    :goto_1
    return-void

    .line 1656
    .restart local v1    # "index":I
    .restart local v3    # "scrollDelta":I
    .restart local v4    # "scrollRange":F
    :cond_2
    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_0

    .line 1664
    .end local v1    # "index":I
    .end local v3    # "scrollDelta":I
    .end local v4    # "scrollRange":F
    :cond_3
    iget-object v6, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 1665
    .local v0, "cc":Lcom/android/launcher4/CellLayout;
    cmpl-float v6, v2, v8

    if-lez v6, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isSmall()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1666
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/launcher4/CellLayout;->setVisibility(I)V

    .line 1669
    :cond_4
    iput v2, p0, Lcom/android/launcher4/Workspace;->mLastCustomContentScrollProgress:F

    .line 1671
    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/android/launcher4/Workspace;->setBackgroundAlpha(F)V

    .line 1673
    iget-object v6, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher4/Launcher;->getHotseat()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1674
    iget-object v6, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher4/Launcher;->getHotseat()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 1677
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1678
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/launcher4/PageIndicator;->setTranslationX(F)V

    .line 1681
    :cond_6
    iget-object v6, p0, Lcom/android/launcher4/Workspace;->mCustomContentCallbacks:Lcom/android/launcher4/Launcher$CustomContentCallbacks;

    if-eqz v6, :cond_1

    .line 1682
    iget-object v6, p0, Lcom/android/launcher4/Workspace;->mCustomContentCallbacks:Lcom/android/launcher4/Launcher$CustomContentCallbacks;

    invoke-interface {v6, v2}, Lcom/android/launcher4/Launcher$CustomContentCallbacks;->onScrollProgressChanged(F)V

    goto :goto_1
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher4/DropTarget$DragObject;)Z
    .locals 30
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 3005
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher4/Workspace;->mDropToLayout:Lcom/android/launcher4/CellLayout;

    .line 3006
    .local v9, "dropTargetLayout":Lcom/android/launcher4/CellLayout;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_9

    .line 3008
    if-nez v9, :cond_0

    .line 3009
    const/4 v2, 0x0

    .line 3093
    :goto_0
    return v2

    .line 3011
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3012
    const/4 v2, 0x0

    goto :goto_0

    .line 3014
    :cond_1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher4/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher4/DropTarget$DragObject;->y:I

    .line 3015
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher4/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher4/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v2, p0

    .line 3014
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher4/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher4/DragView;[F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    .line 3018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2, v9}, Lcom/android/launcher4/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3023
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    .line 3022
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2, v3}, Lcom/android/launcher4/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 3026
    :cond_2
    const/16 v17, 0x1

    .line 3027
    .local v17, "spanX":I
    const/16 v18, 0x1

    .line 3028
    .local v18, "spanY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    if-eqz v2, :cond_4

    .line 3029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    move-object/from16 v23, v0

    .line 3030
    .local v23, "dragCellInfo":Lcom/android/launcher4/CellLayout$CellInfo;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher4/CellLayout$CellInfo;->spanX:I

    move/from16 v17, v0

    .line 3031
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher4/CellLayout$CellInfo;->spanY:I

    move/from16 v18, v0

    .line 3038
    .end local v23    # "dragCellInfo":Lcom/android/launcher4/CellLayout$CellInfo;
    :goto_1
    move/from16 v5, v17

    .line 3039
    .local v5, "minSpanX":I
    move/from16 v6, v18

    .line 3040
    .local v6, "minSpanY":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher4/PendingAddWidgetInfo;

    if-eqz v2, :cond_3

    .line 3041
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher4/PendingAddWidgetInfo;

    iget v5, v2, Lcom/android/launcher4/PendingAddWidgetInfo;->minSpanX:I

    .line 3042
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher4/PendingAddWidgetInfo;

    iget v6, v2, Lcom/android/launcher4/PendingAddWidgetInfo;->minSpanY:I

    .line 3045
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v3, v2

    .line 3046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v4, v2

    .line 3047
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object v7, v9

    .line 3045
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher4/Workspace;->findNearestArea(IIIILcom/android/launcher4/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 3049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 3050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 3048
    invoke-virtual {v9, v2, v3, v4}, Lcom/android/launcher4/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v11

    .line 3051
    .local v11, "distance":F
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v8, Lcom/android/launcher4/ItemInfo;

    .line 3052
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v12, 0x1

    move-object/from16 v7, p0

    .line 3051
    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher4/Workspace;->willCreateUserFolder(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/CellLayout;[IFZ)Z

    move-result v2

    .line 3052
    if-eqz v2, :cond_5

    .line 3053
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3033
    .end local v5    # "minSpanX":I
    .end local v6    # "minSpanY":I
    .end local v11    # "distance":F
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/launcher4/ItemInfo;

    .line 3034
    .local v24, "dragInfo":Lcom/android/launcher4/ItemInfo;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    move/from16 v17, v0

    .line 3035
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    move/from16 v18, v0

    goto :goto_1

    .line 3055
    .end local v24    # "dragInfo":Lcom/android/launcher4/ItemInfo;
    .restart local v5    # "minSpanX":I
    .restart local v6    # "minSpanY":I
    .restart local v11    # "distance":F
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher4/ItemInfo;

    .line 3056
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 3055
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9, v3, v11}, Lcom/android/launcher4/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher4/CellLayout;[IF)Z

    move-result v2

    .line 3056
    if-eqz v2, :cond_6

    .line 3057
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3060
    :cond_6
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v21, v0

    .line 3062
    .local v21, "resultSpan":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v13, v2

    .line 3063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v14, v2

    .line 3064
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    move-object/from16 v20, v0

    .line 3065
    const/16 v22, 0x3

    move-object v12, v9

    move v15, v5

    move/from16 v16, v6

    .line 3061
    invoke-virtual/range {v12 .. v22}, Lcom/android/launcher4/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 3066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_8

    const/16 v25, 0x1

    .line 3069
    .local v25, "foundCell":Z
    :goto_2
    if-nez v25, :cond_9

    .line 3073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2, v9}, Lcom/android/launcher4/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v26

    .line 3074
    .local v26, "isHotseat":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    if-eqz v2, :cond_7

    .line 3083
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/launcher4/Launcher;->showOutOfSpaceMessage(Z)V

    .line 3084
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3066
    .end local v25    # "foundCell":Z
    .end local v26    # "isHotseat":Z
    :cond_8
    const/16 v25, 0x0

    goto :goto_2

    .line 3088
    .end local v5    # "minSpanX":I
    .end local v6    # "minSpanY":I
    .end local v11    # "distance":F
    .end local v17    # "spanX":I
    .end local v18    # "spanY":I
    .end local v21    # "resultSpan":[I
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher4/Workspace;->getIdForScreen(Lcom/android/launcher4/CellLayout;)J

    move-result-wide v28

    .line 3089
    .local v28, "screenId":J
    const-wide/16 v2, -0xc9

    cmp-long v2, v28, v2

    if-nez v2, :cond_a

    .line 3090
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->commitExtraEmptyScreen()J

    .line 3093
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method addApplicationShortcut(Lcom/android/launcher4/ShortcutInfo;Lcom/android/launcher4/CellLayout;JJIIZII)V
    .locals 17
    .param p1, "info"    # Lcom/android/launcher4/ShortcutInfo;
    .param p2, "target"    # Lcom/android/launcher4/CellLayout;
    .param p3, "container"    # J
    .param p5, "screenId"    # J
    .param p7, "cellX"    # I
    .param p8, "cellY"    # I
    .param p9, "insertAtFirst"    # Z
    .param p10, "intersectX"    # I
    .param p11, "intersectY"    # I

    .prologue
    .line 2982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    const v4, 0x7f040008

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v2, v4, v0, v1}, Lcom/android/launcher4/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher4/ShortcutInfo;)Landroid/view/View;

    move-result-object v15

    .line 2985
    .local v15, "view":Landroid/view/View;
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 2986
    .local v3, "cellXY":[I
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v2, p2

    move/from16 v6, p10

    move/from16 v7, p11

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher4/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    .line 2988
    const/4 v2, 0x0

    aget v10, v3, v2

    const/4 v2, 0x1

    aget v11, v3, v2

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v4, p0

    move-object v5, v15

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v14, p9

    invoke-virtual/range {v4 .. v14}, Lcom/android/launcher4/Workspace;->addInScreen(Landroid/view/View;JJIIIIZ)V

    .line 2991
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 2992
    const/4 v2, 0x0

    aget v10, v3, v2

    const/4 v2, 0x1

    aget v11, v3, v2

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    .line 2991
    invoke-static/range {v4 .. v11}, Lcom/android/launcher4/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJII)V

    .line 2993
    return-void
.end method

.method public addExternalItemToScreen(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/CellLayout;)Z
    .locals 4
    .param p1, "dragInfo"    # Lcom/android/launcher4/ItemInfo;
    .param p2, "layout"    # Lcom/android/launcher4/CellLayout;

    .prologue
    const/4 v0, 0x0

    .line 4093
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mTempEstimate:[I

    iget v2, p1, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 4094
    iget v3, p1, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 4093
    invoke-virtual {p2, v1, v2, v3}, Lcom/android/launcher4/CellLayout;->findCellForSpan([III)Z

    move-result v1

    .line 4094
    if-eqz v1, :cond_0

    .line 4095
    iget-object v1, p1, Lcom/android/launcher4/ItemInfo;->dropPos:[I

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/launcher4/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher4/CellLayout;Z)V

    .line 4097
    const/4 v0, 0x1

    .line 4100
    :goto_0
    return v0

    .line 4099
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2, p2}, Lcom/android/launcher4/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher4/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_0
.end method

.method public addExtraEmptyScreen()Z
    .locals 4

    .prologue
    const-wide/16 v2, -0xc9

    .line 772
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher4/Workspace;->insertNewWorkspaceScreen(J)J

    .line 774
    const/4 v0, 0x1

    .line 776
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addExtraEmptyScreenOnDrag()V
    .locals 8

    .prologue
    const-wide/16 v6, -0xc9

    .line 746
    const/4 v2, 0x0

    .line 747
    .local v2, "lastChildOnScreen":Z
    const/4 v0, 0x0

    .line 749
    .local v0, "childOnFinalScreen":Z
    iget-object v3, p0, Lcom/android/launcher4/Workspace;->mDragSourceInternal:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    if-eqz v3, :cond_1

    .line 750
    iget-object v3, p0, Lcom/android/launcher4/Workspace;->mDragSourceInternal:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 751
    const/4 v2, 0x1

    .line 753
    :cond_0
    iget-object v3, p0, Lcom/android/launcher4/Workspace;->mDragSourceInternal:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/CellLayout;

    .line 754
    .local v1, "cl":Lcom/android/launcher4/CellLayout;
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    .line 755
    const/4 v0, 0x1

    .line 760
    .end local v1    # "cl":Lcom/android/launcher4/CellLayout;
    :cond_1
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 769
    :cond_2
    :goto_0
    return-void

    .line 763
    :cond_3
    iget-object v3, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 764
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 765
    const v4, 0x7f0a0020

    .line 764
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 765
    if-eqz v3, :cond_2

    .line 766
    invoke-virtual {p0, v6, v7}, Lcom/android/launcher4/Workspace;->insertNewWorkspaceScreen(J)J

    goto :goto_0
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
    .line 1847
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher4/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1848
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getOpenFolder()Lcom/android/launcher4/Folder;

    move-result-object v0

    .line 1849
    .local v0, "openFolder":Lcom/android/launcher4/Folder;
    if-eqz v0, :cond_1

    .line 1850
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher4/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1855
    .end local v0    # "openFolder":Lcom/android/launcher4/Folder;
    :cond_0
    :goto_0
    return-void

    .line 1852
    .restart local v0    # "openFolder":Lcom/android/launcher4/Folder;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher4/SmoothPagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method addInScreen(Landroid/view/View;JJIIII)V
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I

    .prologue
    .line 905
    invoke-static {}, Lcom/syu/util/JLog;->getInstance()Lcom/syu/util/JLog;

    move-result-object v2

    .line 906
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addInScreen-1  screenId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 907
    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 906
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 905
    invoke-virtual {v2, v3}, Lcom/syu/util/JLog;->e(Ljava/lang/String;)V

    .line 908
    const/4 v12, 0x0

    .line 909
    const/4 v13, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    .line 908
    invoke-virtual/range {v2 .. v13}, Lcom/android/launcher4/Workspace;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    .line 910
    return-void
.end method

.method addInScreen(Landroid/view/View;JJIIIIZ)V
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I
    .param p10, "insert"    # Z

    .prologue
    .line 926
    invoke-static {}, Lcom/syu/util/JLog;->getInstance()Lcom/syu/util/JLog;

    move-result-object v2

    .line 927
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addInScreen-3  screenId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 928
    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 927
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 926
    invoke-virtual {v2, v3}, Lcom/syu/util/JLog;->e(Ljava/lang/String;)V

    .line 930
    const/4 v13, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    .line 929
    invoke-virtual/range {v2 .. v13}, Lcom/android/launcher4/Workspace;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    .line 931
    return-void
.end method

.method addInScreen(Landroid/view/View;JJIIIIZZ)V
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I
    .param p10, "insert"    # Z
    .param p11, "computeXYFromRank"    # Z

    .prologue
    .line 959
    const-wide/16 v12, -0x64

    cmp-long v5, p2, v12

    if-nez v5, :cond_0

    .line 960
    move-wide/from16 v0, p4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/Workspace;->getScreenWithId(J)Lcom/android/launcher4/CellLayout;

    move-result-object v5

    if-nez v5, :cond_0

    .line 961
    const-string v5, "JLog"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Skipping child, screenId "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 962
    const-string v11, " not found"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 961
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    move-wide/from16 v0, p4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/Workspace;->insertNewWorkspaceScreen(J)J

    .line 970
    :cond_0
    const-wide/16 v12, -0xc9

    cmp-long v5, p4, v12

    if-nez v5, :cond_1

    .line 972
    new-instance v5, Ljava/lang/RuntimeException;

    .line 973
    const-string v6, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    .line 972
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 979
    :cond_1
    instance-of v5, p1, Lcom/android/launcher4/FolderIcon;

    if-eqz v5, :cond_2

    move-object v5, p1

    .line 980
    check-cast v5, Lcom/android/launcher4/FolderIcon;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher4/FolderIcon;->setTextVisible(Z)V

    .line 982
    :cond_2
    move-wide/from16 v0, p4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/Workspace;->getScreenWithId(J)Lcom/android/launcher4/CellLayout;

    move-result-object v4

    .line 983
    .local v4, "layout":Lcom/android/launcher4/CellLayout;
    new-instance v5, Lcom/android/launcher4/IconKeyEventListener;

    invoke-direct {v5}, Lcom/android/launcher4/IconKeyEventListener;-><init>()V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 986
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 988
    .local v10, "genericLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v10, :cond_3

    .line 989
    instance-of v5, v10, Lcom/android/launcher4/CellLayout$LayoutParams;

    if-nez v5, :cond_8

    .line 990
    :cond_3
    new-instance v8, Lcom/android/launcher4/CellLayout$LayoutParams;

    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/android/launcher4/CellLayout$LayoutParams;-><init>(IIII)V

    .line 999
    .local v8, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    :goto_0
    if-gez p8, :cond_4

    if-gez p9, :cond_4

    .line 1000
    const/4 v5, 0x0

    iput-boolean v5, v8, Lcom/android/launcher4/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1005
    :cond_4
    invoke-static/range {p2 .. p9}, Lcom/android/launcher4/LauncherModel;->getCellLayoutChildId(JJIIII)I

    move-result v7

    .line 1007
    .local v7, "childId":I
    instance-of v5, p1, Lcom/android/launcher4/Folder;

    if-eqz v5, :cond_9

    const/4 v9, 0x0

    .line 1008
    .local v9, "markCellsAsOccupied":Z
    :goto_1
    if-eqz p10, :cond_a

    const/4 v6, 0x0

    :goto_2
    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher4/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher4/CellLayout$LayoutParams;Z)Z

    move-result v5

    .line 1009
    if-nez v5, :cond_5

    .line 1013
    const-string v5, "JLog"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Failed to add to item at ("

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v8, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1014
    const-string v11, ","

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v11, v8, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ") to CellLayout"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x1

    .line 1013
    invoke-static {v5, v6, v11}, Lcom/android/launcher4/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1017
    :cond_5
    instance-of v5, p1, Lcom/android/launcher4/Folder;

    if-nez v5, :cond_6

    .line 1018
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 1019
    iget-object v5, p0, Lcom/android/launcher4/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1022
    :cond_6
    instance-of v5, p1, Lcom/android/launcher4/DropTarget;

    if-eqz v5, :cond_7

    .line 1023
    iget-object v5, p0, Lcom/android/launcher4/Workspace;->mDragController:Lcom/android/launcher4/DragController;

    check-cast p1, Lcom/android/launcher4/DropTarget;

    .end local p1    # "child":Landroid/view/View;
    invoke-virtual {v5, p1}, Lcom/android/launcher4/DragController;->addDropTarget(Lcom/android/launcher4/DropTarget;)V

    .line 1025
    :cond_7
    return-void

    .end local v7    # "childId":I
    .end local v8    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    .end local v9    # "markCellsAsOccupied":Z
    .restart local p1    # "child":Landroid/view/View;
    :cond_8
    move-object v8, v10

    .line 992
    check-cast v8, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 993
    .restart local v8    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    move/from16 v0, p6

    iput v0, v8, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    .line 994
    move/from16 v0, p7

    iput v0, v8, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    .line 995
    move/from16 v0, p8

    iput v0, v8, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    .line 996
    move/from16 v0, p9

    iput v0, v8, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_0

    .line 1007
    .restart local v7    # "childId":I
    :cond_9
    const/4 v9, 0x1

    goto :goto_1

    .line 1008
    .restart local v9    # "markCellsAsOccupied":Z
    :cond_a
    const/4 v6, -0x1

    goto :goto_2
.end method

.method addInScreenFromBind(Landroid/view/View;JJIIII)V
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screenId"    # J
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I

    .prologue
    .line 917
    invoke-static {}, Lcom/syu/util/JLog;->getInstance()Lcom/syu/util/JLog;

    move-result-object v2

    .line 918
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addInScreen-2  screenId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 919
    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 918
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 917
    invoke-virtual {v2, v3}, Lcom/syu/util/JLog;->e(Ljava/lang/String;)V

    .line 920
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v13}, Lcom/android/launcher4/Workspace;->addInScreen(Landroid/view/View;JJIIIIZZ)V

    .line 921
    return-void
.end method

.method public addToCustomContentPage(Landroid/view/View;Lcom/android/launcher4/Launcher$CustomContentCallbacks;Ljava/lang/String;)V
    .locals 10
    .param p1, "customContent"    # Landroid/view/View;
    .param p2, "callbacks"    # Lcom/android/launcher4/Launcher$CustomContentCallbacks;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, -0x12d

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 722
    invoke-virtual {p0, v8, v9}, Lcom/android/launcher4/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    if-gez v1, :cond_0

    .line 723
    new-instance v1, Ljava/lang/RuntimeException;

    .line 724
    const-string v2, "Expected custom content screen to exist"

    .line 723
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 728
    :cond_0
    invoke-virtual {p0, v8, v9}, Lcom/android/launcher4/Workspace;->getScreenWithId(J)Lcom/android/launcher4/CellLayout;

    move-result-object v0

    .line 729
    .local v0, "customScreen":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getCountX()I

    move-result v6

    .line 730
    .local v6, "spanX":I
    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getCountY()I

    move-result v7

    .line 731
    .local v7, "spanY":I
    new-instance v4, Lcom/android/launcher4/CellLayout$LayoutParams;

    invoke-direct {v4, v2, v2, v6, v7}, Lcom/android/launcher4/CellLayout$LayoutParams;-><init>(IIII)V

    .line 733
    .local v4, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iput-boolean v2, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->canReorder:Z

    .line 734
    iput-boolean v5, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->isFullscreen:Z

    .line 735
    instance-of v1, p1, Lcom/android/launcher4/Insettable;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 736
    check-cast v1, Lcom/android/launcher4/Insettable;

    iget-object v3, p0, Lcom/android/launcher4/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v1, v3}, Lcom/android/launcher4/Insettable;->setInsets(Landroid/graphics/Rect;)V

    .line 738
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->removeAllViews()V

    move-object v1, p1

    move v3, v2

    .line 739
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher4/CellLayout$LayoutParams;Z)Z

    .line 740
    iput-object p3, p0, Lcom/android/launcher4/Workspace;->mCustomContentDescription:Ljava/lang/String;

    .line 742
    iput-object p2, p0, Lcom/android/launcher4/Workspace;->mCustomContentCallbacks:Lcom/android/launcher4/Launcher$CustomContentCallbacks;

    .line 743
    return-void
.end method

.method addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher4/CellLayout;[IFLcom/android/launcher4/DropTarget$DragObject;Z)Z
    .locals 6
    .param p1, "newView"    # Landroid/view/View;
    .param p2, "target"    # Lcom/android/launcher4/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "d"    # Lcom/android/launcher4/DropTarget$DragObject;
    .param p6, "external"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3211
    iget v4, p0, Lcom/android/launcher4/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v4, p4, v4

    if-lez v4, :cond_1

    .line 3233
    :cond_0
    :goto_0
    return v2

    .line 3214
    :cond_1
    aget v4, p3, v2

    aget v5, p3, v3

    invoke-virtual {p2, v4, v5}, Lcom/android/launcher4/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 3215
    .local v0, "dropOverView":Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/launcher4/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v4, :cond_0

    .line 3217
    iput-boolean v2, p0, Lcom/android/launcher4/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 3219
    instance-of v4, v0, Lcom/android/launcher4/FolderIcon;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 3220
    check-cast v1, Lcom/android/launcher4/FolderIcon;

    .line 3221
    .local v1, "fi":Lcom/android/launcher4/FolderIcon;
    iget-object v4, p5, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/android/launcher4/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3222
    invoke-virtual {v1, p5}, Lcom/android/launcher4/FolderIcon;->onDrop(Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 3226
    if-nez p6, :cond_2

    .line 3227
    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher4/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher4/CellLayout;

    move-result-object v2

    .line 3228
    iget-object v4, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-object v4, v4, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 3227
    invoke-virtual {v2, v4}, Lcom/android/launcher4/CellLayout;->removeView(Landroid/view/View;)V

    :cond_2
    move v2, v3

    .line 3230
    goto :goto_0
.end method

.method public animateWidgetDrop(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 40
    .param p1, "info"    # Lcom/android/launcher4/ItemInfo;
    .param p2, "cellLayout"    # Lcom/android/launcher4/CellLayout;
    .param p3, "dragView"    # Lcom/android/launcher4/DragView;
    .param p4, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p5, "animationType"    # I
    .param p6, "finalView"    # Landroid/view/View;
    .param p7, "external"    # Z

    .prologue
    .line 4367
    new-instance v38, Landroid/graphics/Rect;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Rect;-><init>()V

    .line 4368
    .local v38, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher4/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4370
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 4371
    .local v5, "finalPos":[I
    const/4 v4, 0x2

    new-array v6, v4, [F

    .line 4372
    .local v6, "scaleXY":[F
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher4/PendingAddShortcutInfo;

    if-eqz v4, :cond_3

    const/4 v12, 0x0

    .line 4374
    .local v12, "scalePreview":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move/from16 v11, p7

    .line 4373
    invoke-direct/range {v4 .. v12}, Lcom/android/launcher4/Workspace;->getFinalPositionForDropAnimation([I[FLcom/android/launcher4/DragView;Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/ItemInfo;[IZZ)V

    .line 4376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 4377
    .local v39, "res":Landroid/content/res/Resources;
    const v4, 0x7f0b0016

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit16 v0, v4, -0xc8

    move/from16 v21, v0

    .line 4381
    .local v21, "duration":I
    move-object/from16 v0, p6

    instance-of v4, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_0

    if-eqz p7, :cond_0

    .line 4382
    const-string v4, "JLog"

    .line 4383
    const-string v7, "6557954 Animate widget drop, final view is appWidgetHostView"

    .line 4382
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/android/launcher4/DragLayer;->removeView(Landroid/view/View;)V

    .line 4386
    :cond_0
    const/4 v4, 0x2

    move/from16 v0, p5

    if-eq v0, v4, :cond_1

    if-eqz p7, :cond_4

    .line 4387
    :cond_1
    if-eqz p6, :cond_4

    .line 4388
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/Workspace;->createWidgetBitmap(Lcom/android/launcher4/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v37

    .line 4389
    .local v37, "crossFadeBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/launcher4/DragView;->setCrossFadeBitmap(Landroid/graphics/Bitmap;)V

    .line 4390
    move/from16 v0, v21

    int-to-float v4, v0

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/launcher4/DragView;->crossFade(I)V

    .line 4396
    .end local v37    # "crossFadeBitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v22

    .line 4397
    .local v22, "dragLayer":Lcom/android/launcher4/DragLayer;
    const/4 v4, 0x4

    move/from16 v0, p5

    if-ne v0, v4, :cond_5

    .line 4398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v13

    .line 4399
    const/16 v16, 0x0

    const v17, 0x3dcccccd    # 0.1f

    const v18, 0x3dcccccd    # 0.1f

    .line 4400
    const/16 v19, 0x0

    move-object/from16 v14, p3

    move-object v15, v5

    move-object/from16 v20, p4

    .line 4398
    invoke-virtual/range {v13 .. v21}, Lcom/android/launcher4/DragLayer;->animateViewIntoPosition(Lcom/android/launcher4/DragView;[IFFFILjava/lang/Runnable;I)V

    .line 4426
    :goto_2
    return-void

    .line 4372
    .end local v12    # "scalePreview":Z
    .end local v21    # "duration":I
    .end local v22    # "dragLayer":Lcom/android/launcher4/DragLayer;
    .end local v39    # "res":Landroid/content/res/Resources;
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 4391
    .restart local v12    # "scalePreview":Z
    .restart local v21    # "duration":I
    .restart local v39    # "res":Landroid/content/res/Resources;
    :cond_4
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher4/ItemInfo;->itemType:I

    const/4 v7, 0x4

    if-ne v4, v7, :cond_2

    .line 4392
    if-eqz p7, :cond_2

    .line 4393
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v6, v7

    aput v8, v6, v4

    goto :goto_1

    .line 4404
    .restart local v22    # "dragLayer":Lcom/android/launcher4/DragLayer;
    :cond_5
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_6

    .line 4405
    const/16 v34, 0x2

    .line 4411
    .local v34, "endStyle":I
    :goto_3
    new-instance v33, Lcom/android/launcher4/Workspace$13;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher4/Workspace$13;-><init>(Lcom/android/launcher4/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4422
    .local v33, "onComplete":Ljava/lang/Runnable;
    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    .line 4423
    const/4 v4, 0x0

    aget v26, v5, v4

    const/4 v4, 0x1

    aget v27, v5, v4

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const/high16 v30, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aget v31, v6, v4

    const/4 v4, 0x1

    aget v32, v6, v4

    move-object/from16 v23, p3

    move/from16 v35, v21

    move-object/from16 v36, p0

    .line 4422
    invoke-virtual/range {v22 .. v36}, Lcom/android/launcher4/DragLayer;->animateViewIntoPosition(Lcom/android/launcher4/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    goto :goto_2

    .line 4407
    .end local v33    # "onComplete":Ljava/lang/Runnable;
    .end local v34    # "endStyle":I
    :cond_6
    const/16 v34, 0x0

    .restart local v34    # "endStyle":I
    goto :goto_3
.end method

.method backgroundAlphaInterpolator(F)F
    .locals 4
    .param p1, "r"    # F

    .prologue
    .line 1581
    const v0, 0x3dcccccd    # 0.1f

    .line 1582
    .local v0, "pivotA":F
    const v1, 0x3ecccccd    # 0.4f

    .line 1583
    .local v1, "pivotB":F
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    .line 1584
    const/4 v2, 0x0

    .line 1588
    :goto_0
    return v2

    .line 1585
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1586
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1588
    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher4/DragSource;)V
    .locals 25
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Lcom/android/launcher4/DragSource;

    .prologue
    .line 2923
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 2924
    const/4 v8, 0x2

    .line 2923
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/launcher4/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2926
    .local v5, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 2927
    .local v16, "bmpWidth":I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 2929
    .local v15, "bmpHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v4

    .line 2930
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/Workspace;->mTempXY:[I

    .line 2929
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8}, Lcom/android/launcher4/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v13

    .line 2931
    .local v13, "scale":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mTempXY:[I

    const/4 v8, 0x0

    aget v4, v4, v8

    int-to-float v4, v4

    .line 2932
    move/from16 v0, v16

    int-to-float v8, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v13

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 2931
    sub-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 2934
    .local v6, "dragLayerX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mTempXY:[I

    const/4 v8, 0x1

    aget v4, v4, v8

    int-to-float v4, v4

    int-to-float v8, v15

    int-to-float v9, v15

    mul-float/2addr v9, v13

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v4, v8

    .line 2935
    const/high16 v8, 0x3f800000    # 1.0f

    .line 2934
    sub-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 2937
    .local v7, "dragLayerY":I
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v14

    .line 2938
    .local v14, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v14}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v18

    .line 2939
    .local v18, "grid":Lcom/android/launcher4/DeviceProfile;
    const/4 v11, 0x0

    .line 2940
    .local v11, "dragVisualizeOffset":Landroid/graphics/Point;
    const/4 v12, 0x0

    .line 2941
    .local v12, "dragRect":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher4/BubbleTextView;

    if-nez v4, :cond_0

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher4/PagedViewIcon;

    if-eqz v4, :cond_4

    .line 2942
    :cond_0
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher4/DeviceProfile;->iconSizePx:I

    move/from16 v20, v0

    .line 2943
    .local v20, "iconSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v24

    .line 2944
    .local v24, "top":I
    sub-int v4, v16, v20

    div-int/lit8 v21, v4, 0x2

    .line 2945
    .local v21, "left":I
    add-int v23, v21, v20

    .line 2946
    .local v23, "right":I
    add-int v17, v24, v20

    .line 2947
    .local v17, "bottom":I
    add-int v7, v7, v24

    .line 2952
    new-instance v11, Landroid/graphics/Point;

    .end local v11    # "dragVisualizeOffset":Landroid/graphics/Point;
    const/4 v4, -0x1

    .line 2953
    const/4 v8, 0x1

    .line 2952
    invoke-direct {v11, v4, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 2954
    .restart local v11    # "dragVisualizeOffset":Landroid/graphics/Point;
    new-instance v12, Landroid/graphics/Rect;

    .end local v12    # "dragRect":Landroid/graphics/Rect;
    move/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2962
    .end local v17    # "bottom":I
    .end local v20    # "iconSize":I
    .end local v21    # "left":I
    .end local v23    # "right":I
    .end local v24    # "top":I
    .restart local v12    # "dragRect":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher4/BubbleTextView;

    if-eqz v4, :cond_2

    move-object/from16 v19, p1

    .line 2963
    check-cast v19, Lcom/android/launcher4/BubbleTextView;

    .line 2964
    .local v19, "icon":Lcom/android/launcher4/BubbleTextView;
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher4/BubbleTextView;->clearPressedOrFocusedBackground()V

    .line 2967
    .end local v19    # "icon":Lcom/android/launcher4/BubbleTextView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mDragController:Lcom/android/launcher4/DragController;

    .line 2968
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    sget v10, Lcom/android/launcher4/DragController;->DRAG_ACTION_MOVE:I

    move-object/from16 v8, p2

    .line 2967
    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher4/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher4/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)V

    .line 2971
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher4/ShortcutAndWidgetContainer;

    if-eqz v4, :cond_3

    .line 2973
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/ShortcutAndWidgetContainer;

    .line 2972
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher4/Workspace;->mDragSourceInternal:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    .line 2976
    :cond_3
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 2977
    return-void

    .line 2955
    :cond_4
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher4/FolderIcon;

    if-eqz v4, :cond_1

    .line 2956
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher4/DeviceProfile;->folderIconSizePx:I

    move/from16 v22, v0

    .line 2957
    .local v22, "previewSize":I
    new-instance v12, Landroid/graphics/Rect;

    .end local v12    # "dragRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v9

    move/from16 v0, v22

    invoke-direct {v12, v4, v8, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v12    # "dragRect":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public buildPageHardwareLayers()V
    .locals 4

    .prologue
    .line 1946
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/launcher4/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1947
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1948
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v0

    .line 1949
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 1954
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/launcher4/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1955
    return-void

    .line 1950
    .restart local v0    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/CellLayout;

    .line 1951
    .local v1, "cl":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher4/CellLayout;->buildHardwareLayer()V

    .line 1949
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method clearChildrenCache()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1882
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v2

    .line 1883
    .local v2, "screenCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 1892
    return-void

    .line 1884
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/CellLayout;

    .line 1885
    .local v1, "layout":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v1, v4}, Lcom/android/launcher4/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1888
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1889
    invoke-virtual {v1, v4}, Lcom/android/launcher4/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1883
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method clearDropTargets()V
    .locals 7

    .prologue
    .line 4950
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v1

    .line 4951
    .local v1, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4960
    return-void

    .line 4951
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/ShortcutAndWidgetContainer;

    .line 4952
    .local v3, "layout":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    invoke-virtual {v3}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 4953
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 4954
    invoke-virtual {v3, v2}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4955
    .local v4, "v":Landroid/view/View;
    instance-of v6, v4, Lcom/android/launcher4/DropTarget;

    if-eqz v6, :cond_2

    .line 4956
    iget-object v6, p0, Lcom/android/launcher4/Workspace;->mDragController:Lcom/android/launcher4/DragController;

    check-cast v4, Lcom/android/launcher4/DropTarget;

    .end local v4    # "v":Landroid/view/View;
    invoke-virtual {v6, v4}, Lcom/android/launcher4/DragController;->removeDropTarget(Lcom/android/launcher4/DropTarget;)V

    .line 4953
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public commitExtraEmptyScreen()J
    .locals 8

    .prologue
    const-wide/16 v6, -0xc9

    .line 796
    invoke-virtual {p0, v6, v7}, Lcom/android/launcher4/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    .line 797
    .local v1, "index":I
    iget-object v4, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 798
    .local v0, "cl":Lcom/android/launcher4/CellLayout;
    iget-object v4, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    iget-object v4, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 801
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getLauncherProvider()Lcom/android/launcher4/LauncherProvider;

    move-result-object v4

    .line 802
    invoke-virtual {v4}, Lcom/android/launcher4/LauncherProvider;->generateNewScreenId()J

    move-result-wide v2

    .line 803
    .local v2, "newId":J
    iget-object v4, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget-object v4, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 808
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v4

    .line 809
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher4/PageIndicator$PageMarkerResources;

    move-result-object v5

    .line 808
    invoke-virtual {v4, v1, v5}, Lcom/android/launcher4/PageIndicator;->updateMarker(ILcom/android/launcher4/PageIndicator$PageMarkerResources;)V

    .line 813
    :cond_0
    invoke-static {}, Lcom/android/launcher4/Launcher;->getModel()Lcom/android/launcher4/LauncherModel;

    move-result-object v4

    .line 814
    iget-object v5, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v6, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher4/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 816
    return-wide v2
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 1474
    invoke-super {p0}, Lcom/android/launcher4/SmoothPagedView;->computeScroll()V

    .line 1475
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mWallpaperOffset:Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1476
    return-void
.end method

.method public createCustomContentPage()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x12d

    const/4 v4, 0x0

    .line 666
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher4/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 667
    const v2, 0x7f04003b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 666
    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 668
    .local v0, "customScreen":Lcom/android/launcher4/CellLayout;
    const-string v1, "hy"

    const-string v2, "createCustomContentPage"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    sget v2, Lcom/android/launcher4/Workspace;->apps_customepage_count:I

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 673
    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/android/launcher4/CellLayout;->setPadding(IIII)V

    .line 675
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->addFullScreenPage(Landroid/view/View;)V

    .line 678
    iget v1, p0, Lcom/android/launcher4/Workspace;->mOriginalDefaultPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher4/Workspace;->mDefaultPage:I

    .line 681
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher4/Launcher;->updateCustomContentHintVisibility()V

    .line 682
    iget v1, p0, Lcom/android/launcher4/Workspace;->mRestorePage:I

    const/16 v2, -0x3e9

    if-eq v1, v2, :cond_0

    .line 683
    iget v1, p0, Lcom/android/launcher4/Workspace;->mRestorePage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher4/Workspace;->mRestorePage:I

    .line 687
    :goto_0
    return-void

    .line 685
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method public createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "padding"    # I

    .prologue
    const/4 v5, 0x1

    .line 2834
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 2835
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v1, v2, v5

    .line 2836
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, p3

    .line 2837
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2836
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2843
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .local v0, "b":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2844
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/launcher4/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 2845
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2847
    return-object v0

    .line 2839
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2840
    add-int/2addr v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2839
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher4/CellLayout;[IFZLcom/android/launcher4/DragView;Ljava/lang/Runnable;)Z
    .locals 22
    .param p1, "newView"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "target"    # Lcom/android/launcher4/CellLayout;
    .param p5, "targetCell"    # [I
    .param p6, "distance"    # F
    .param p7, "external"    # Z
    .param p8, "dragView"    # Lcom/android/launcher4/DragView;
    .param p9, "postAnimationRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 3154
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v2, p6, v2

    if-lez v2, :cond_0

    .line 3155
    const/4 v2, 0x0

    .line 3206
    :goto_0
    return v2

    .line 3156
    :cond_0
    const/4 v2, 0x0

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p5, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher4/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    .line 3158
    .local v10, "v":Landroid/view/View;
    const/16 v20, 0x0

    .line 3159
    .local v20, "hasntMoved":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    if-eqz v2, :cond_1

    .line 3160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher4/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher4/CellLayout;

    move-result-object v18

    .line 3161
    .local v18, "cellParent":Lcom/android/launcher4/CellLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher4/CellLayout$CellInfo;->cellX:I

    const/4 v3, 0x0

    aget v3, p5, v3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher4/CellLayout$CellInfo;->cellY:I

    const/4 v3, 0x1

    aget v3, p5, v3

    if-ne v2, v3, :cond_3

    .line 3162
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_3

    .line 3161
    const/16 v20, 0x1

    .line 3165
    .end local v18    # "cellParent":Lcom/android/launcher4/CellLayout;
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher4/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v2, :cond_4

    .line 3166
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 3161
    .restart local v18    # "cellParent":Lcom/android/launcher4/CellLayout;
    :cond_3
    const/16 v20, 0x0

    goto :goto_1

    .line 3167
    .end local v18    # "cellParent":Lcom/android/launcher4/CellLayout;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher4/Workspace;->mCreateUserFolderOnDrop:Z

    .line 3168
    if-nez p5, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-wide v6, v2, Lcom/android/launcher4/CellLayout$CellInfo;->screenId:J

    .line 3171
    .local v6, "screenId":J
    :goto_2
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v2, Lcom/android/launcher4/ShortcutInfo;

    move/from16 v16, v0

    .line 3172
    .local v16, "aboveShortcut":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v2, Lcom/android/launcher4/ShortcutInfo;

    move/from16 v21, v0

    .line 3174
    .local v21, "willBecomeShortcut":Z
    if-eqz v16, :cond_9

    if-eqz v21, :cond_9

    .line 3175
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher4/ShortcutInfo;

    .line 3176
    .local v11, "sourceInfo":Lcom/android/launcher4/ShortcutInfo;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher4/ShortcutInfo;

    .line 3178
    .local v19, "destInfo":Lcom/android/launcher4/ShortcutInfo;
    if-nez p7, :cond_5

    .line 3179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher4/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher4/CellLayout;

    move-result-object v2

    .line 3180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 3179
    invoke-virtual {v2, v3}, Lcom/android/launcher4/CellLayout;->removeView(Landroid/view/View;)V

    .line 3183
    :cond_5
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 3184
    .local v13, "folderLocation":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v2

    .line 3185
    invoke-virtual {v2, v10, v13}, Lcom/android/launcher4/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v14

    .line 3186
    .local v14, "scale":F
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lcom/android/launcher4/CellLayout;->removeView(Landroid/view/View;)V

    .line 3188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 3189
    const/4 v3, 0x0

    aget v8, p5, v3

    const/4 v3, 0x1

    aget v9, p5, v3

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    .line 3188
    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher4/Launcher;->addFolder(Lcom/android/launcher4/CellLayout;JJII)Lcom/android/launcher4/FolderIcon;

    move-result-object v8

    .line 3190
    .local v8, "fi":Lcom/android/launcher4/FolderIcon;
    const/4 v2, -0x1

    move-object/from16 v0, v19

    iput v2, v0, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    .line 3191
    const/4 v2, -0x1

    move-object/from16 v0, v19

    iput v2, v0, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    .line 3192
    const/4 v2, -0x1

    iput v2, v11, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    .line 3193
    const/4 v2, -0x1

    iput v2, v11, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    .line 3196
    if-eqz p8, :cond_7

    const/16 v17, 0x1

    .line 3197
    .local v17, "animate":Z
    :goto_3
    if-eqz v17, :cond_8

    move-object/from16 v9, v19

    move-object/from16 v12, p8

    move-object/from16 v15, p9

    .line 3198
    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher4/FolderIcon;->performCreateAnimation(Lcom/android/launcher4/ShortcutInfo;Landroid/view/View;Lcom/android/launcher4/ShortcutInfo;Lcom/android/launcher4/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    .line 3204
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3169
    .end local v6    # "screenId":J
    .end local v8    # "fi":Lcom/android/launcher4/FolderIcon;
    .end local v11    # "sourceInfo":Lcom/android/launcher4/ShortcutInfo;
    .end local v13    # "folderLocation":Landroid/graphics/Rect;
    .end local v14    # "scale":F
    .end local v16    # "aboveShortcut":Z
    .end local v17    # "animate":Z
    .end local v19    # "destInfo":Lcom/android/launcher4/ShortcutInfo;
    .end local v21    # "willBecomeShortcut":Z
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->getIdForScreen(Lcom/android/launcher4/CellLayout;)J

    move-result-wide v6

    goto/16 :goto_2

    .line 3196
    .restart local v6    # "screenId":J
    .restart local v8    # "fi":Lcom/android/launcher4/FolderIcon;
    .restart local v11    # "sourceInfo":Lcom/android/launcher4/ShortcutInfo;
    .restart local v13    # "folderLocation":Landroid/graphics/Rect;
    .restart local v14    # "scale":F
    .restart local v16    # "aboveShortcut":Z
    .restart local v19    # "destInfo":Lcom/android/launcher4/ShortcutInfo;
    .restart local v21    # "willBecomeShortcut":Z
    :cond_7
    const/16 v17, 0x0

    goto :goto_3

    .line 3201
    .restart local v17    # "animate":Z
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/android/launcher4/FolderIcon;->addItem(Lcom/android/launcher4/ShortcutInfo;)V

    .line 3202
    invoke-virtual {v8, v11}, Lcom/android/launcher4/FolderIcon;->addItem(Lcom/android/launcher4/ShortcutInfo;)V

    goto :goto_4

    .line 3206
    .end local v8    # "fi":Lcom/android/launcher4/FolderIcon;
    .end local v11    # "sourceInfo":Lcom/android/launcher4/ShortcutInfo;
    .end local v13    # "folderLocation":Landroid/graphics/Rect;
    .end local v14    # "scale":F
    .end local v17    # "animate":Z
    .end local v19    # "destInfo":Lcom/android/launcher4/ShortcutInfo;
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public createUserPage()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 596
    const-string v2, "hy"

    const-string v3, "createUserPage"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    sget-object v2, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    aget-object v2, v2, v6

    if-nez v2, :cond_0

    .line 598
    sget-boolean v2, Lcom/android/launcher4/LauncherApplication;->is3g:Z

    if-eqz v2, :cond_4

    .line 600
    sget-object v3, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 601
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->workspace_custom_3g:I

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/MCellLayout;

    .line 600
    aput-object v2, v3, v6

    .line 610
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    array-length v2, v2

    if-le v2, v7, :cond_1

    .line 611
    sget-object v2, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    aget-object v2, v2, v7

    if-nez v2, :cond_1

    .line 612
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->workspace_custom1:I

    if-eqz v2, :cond_1

    .line 613
    sget-object v3, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 614
    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 615
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->workspace_custom1:I

    .line 614
    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/MCellLayout;

    .line 613
    aput-object v2, v3, v7

    .line 621
    :cond_1
    sget-object v2, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    array-length v2, v2

    if-le v2, v8, :cond_2

    .line 622
    sget-object v2, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    aget-object v2, v2, v8

    if-nez v2, :cond_2

    .line 623
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->workspace_custom1:I

    if-eqz v2, :cond_2

    .line 624
    sget-object v3, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 625
    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 626
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->workspace_custom2:I

    .line 625
    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/MCellLayout;

    .line 624
    aput-object v2, v3, v8

    .line 632
    :cond_2
    sget-object v2, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    array-length v2, v2

    if-le v2, v9, :cond_3

    .line 633
    sget-object v2, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    aget-object v2, v2, v9

    if-nez v2, :cond_3

    .line 634
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->workspace_custom1:I

    if-eqz v2, :cond_3

    .line 635
    sget-object v3, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 636
    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 637
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->workspace_custom3:I

    .line 636
    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/MCellLayout;

    .line 635
    aput-object v2, v3, v9

    .line 643
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 644
    const v3, 0x7f0b0028

    .line 643
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-lt v0, v2, :cond_5

    .line 660
    return-void

    .line 605
    .end local v0    # "i":I
    :cond_4
    sget-object v3, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 606
    const v4, 0x7f040037

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/MCellLayout;

    .line 605
    aput-object v2, v3, v6

    goto/16 :goto_0

    .line 646
    .restart local v0    # "i":I
    :cond_5
    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v4, -0x12e

    int-to-long v6, v0

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v4, -0x12e

    int-to-long v6, v0

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 651
    sget-object v2, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    .line 652
    sget-object v2, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/launcher4/MCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 653
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_6

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    .line 654
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "parent":Landroid/view/ViewParent;
    sget-object v2, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 656
    :cond_6
    sget-object v2, Lcom/android/launcher4/Workspace;->customScreen:[Lcom/android/launcher4/MCellLayout;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher4/Workspace;->addView(Landroid/view/View;I)V

    .line 644
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public createWidgetBitmap(Lcom/android/launcher4/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "widgetInfo"    # Lcom/android/launcher4/ItemInfo;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4304
    iget-object v6, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v6

    .line 4305
    iget v7, p1, Lcom/android/launcher4/ItemInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 4304
    invoke-virtual {v6, v7, v8, p1, v9}, Lcom/android/launcher4/Workspace;->estimateItemSize(IILcom/android/launcher4/ItemInfo;Z)[I

    move-result-object v3

    .line 4306
    .local v3, "unScaledSize":[I
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v4

    .line 4307
    .local v4, "visibility":I
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 4309
    aget v6, v3, v9

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 4311
    .local v5, "width":I
    aget v6, v3, v10

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 4313
    .local v2, "height":I
    aget v6, v3, v9

    aget v7, v3, v10

    .line 4314
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 4313
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4315
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4317
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {p2, v5, v2}, Landroid/view/View;->measure(II)V

    .line 4318
    aget v6, v3, v9

    aget v7, v3, v10

    invoke-virtual {p2, v9, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 4319
    invoke-virtual {p2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4320
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4321
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4322
    return-object v0
.end method

.method public deferCompleteDropAfterUninstallActivity()V
    .locals 1

    .prologue
    .line 4545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Workspace;->mDeferDropAfterUninstall:Z

    .line 4546
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isFinishedSwitchingState()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1117
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/android/launcher4/Workspace;->mXDown:F

    sub-float v2, v8, v9

    .line 1118
    .local v2, "deltaX":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1119
    .local v0, "absDeltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/android/launcher4/Workspace;->mYDown:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1121
    .local v1, "absDeltaY":F
    const/4 v8, 0x0

    invoke-static {v0, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_0

    .line 1124
    div-float v5, v1, v0

    .line 1125
    .local v5, "slope":F
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    double-to-float v7, v8

    .line 1127
    .local v7, "theta":F
    iget v8, p0, Lcom/android/launcher4/Workspace;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v0, v8

    if-gtz v8, :cond_2

    iget v8, p0, Lcom/android/launcher4/Workspace;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v1, v8

    if-lez v8, :cond_3

    .line 1128
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->cancelCurrentPageLongPress()V

    .line 1131
    :cond_3
    iget-wide v8, p0, Lcom/android/launcher4/Workspace;->mTouchDownTime:J

    iget-wide v10, p0, Lcom/android/launcher4/Workspace;->mCustomContentShowTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xc8

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    const/4 v4, 0x1

    .line 1133
    .local v4, "passRightSwipesToCustomContent":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    cmpg-float v8, v2, v8

    if-gez v8, :cond_6

    const/4 v6, 0x1

    .line 1135
    .local v6, "swipeInIgnoreDirection":Z
    :goto_2
    if-eqz v6, :cond_4

    .line 1136
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getCurrentPage()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/launcher4/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v8

    const-wide/16 v10, -0x12d

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 1137
    if-nez v4, :cond_0

    .line 1142
    :cond_4
    const v8, 0x3f860a92

    cmpl-float v8, v7, v8

    if-gtz v8, :cond_0

    .line 1146
    const v8, 0x3f060a92

    cmpl-float v8, v7, v8

    if-lez v8, :cond_9

    .line 1154
    const v8, 0x3f060a92

    sub-float/2addr v7, v8

    .line 1156
    const v8, 0x3f060a92

    div-float v8, v7, v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 1157
    .local v3, "extraRatio":F
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40800000    # 4.0f

    .line 1158
    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    .line 1157
    invoke-super {p0, p1, v8}, Lcom/android/launcher4/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto/16 :goto_0

    .line 1131
    .end local v3    # "extraRatio":F
    .end local v4    # "passRightSwipesToCustomContent":Z
    .end local v6    # "swipeInIgnoreDirection":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 1133
    .restart local v4    # "passRightSwipesToCustomContent":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 1134
    :cond_7
    const/4 v8, 0x0

    cmpl-float v8, v2, v8

    if-lez v8, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 1162
    .restart local v6    # "swipeInIgnoreDirection":Z
    :cond_9
    invoke-super {p0, p1}, Lcom/android/launcher4/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method disableBackground()V
    .locals 1

    .prologue
    .line 1527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/Workspace;->mDrawBackground:Z

    .line 1528
    return-void
.end method

.method disableLayoutTransitions()V
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 484
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4764
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iput-object p1, p0, Lcom/android/launcher4/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 4765
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 1057
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1060
    :cond_0
    const/4 v0, 0x0

    .line 1062
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher4/SmoothPagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method enableBackground()V
    .locals 1

    .prologue
    .line 1531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Workspace;->mDrawBackground:Z

    .line 1532
    return-void
.end method

.method enableChildrenCache(II)V
    .locals 6
    .param p1, "fromPage"    # I
    .param p2, "toPage"    # I

    .prologue
    const/4 v5, 0x1

    .line 1863
    if-le p1, p2, :cond_0

    .line 1864
    move v3, p1

    .line 1865
    .local v3, "temp":I
    move p1, p2

    .line 1866
    move p2, v3

    .line 1869
    .end local v3    # "temp":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v2

    .line 1871
    .local v2, "screenCount":I
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1872
    add-int/lit8 v4, v2, -0x1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1874
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-le v0, p2, :cond_1

    .line 1879
    return-void

    .line 1875
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/CellLayout;

    .line 1876
    .local v1, "layout":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v1, v5}, Lcom/android/launcher4/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1877
    invoke-virtual {v1, v5}, Lcom/android/launcher4/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1874
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method enableLayoutTransitions()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 480
    return-void
.end method

.method public enterOverviewMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2124
    iget v1, p0, Lcom/android/launcher4/Workspace;->mTouchState:I

    if-eqz v1, :cond_1

    .line 2125
    const/4 v0, 0x0

    .line 2133
    :cond_0
    :goto_0
    return v0

    .line 2127
    :cond_1
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2128
    const v2, 0x7f0a001f

    .line 2127
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 2128
    if-eqz v1, :cond_0

    .line 2130
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/launcher4/Workspace;->enableOverviewMode(ZIZ)V

    goto :goto_0
.end method

.method public estimateItemPosition(Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/ItemInfo;IIII)Landroid/graphics/Rect;
    .locals 6
    .param p1, "cl"    # Lcom/android/launcher4/CellLayout;
    .param p2, "pendingInfo"    # Lcom/android/launcher4/ItemInfo;
    .param p3, "hCell"    # I
    .param p4, "vCell"    # I
    .param p5, "hSpan"    # I
    .param p6, "vSpan"    # I

    .prologue
    .line 388
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .local v5, "r":Landroid/graphics/Rect;
    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    .line 389
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 390
    return-object v5
.end method

.method public estimateItemSize(IILcom/android/launcher4/ItemInfo;Z)[I
    .locals 10
    .param p1, "hSpan"    # I
    .param p2, "vSpan"    # I
    .param p3, "itemInfo"    # Lcom/android/launcher4/ItemInfo;
    .param p4, "springLoaded"    # Z

    .prologue
    const v2, 0x7fffffff

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 367
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 368
    .local v8, "size":[I
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->numCustomPages()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/CellLayout;

    .local v1, "cl":Lcom/android/launcher4/CellLayout;
    move-object v0, p0

    move-object v2, p3

    move v4, v3

    move v5, p1

    move v6, p2

    .line 371
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher4/Workspace;->estimateItemPosition(Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/ItemInfo;IIII)Landroid/graphics/Rect;

    move-result-object v7

    .line 372
    .local v7, "r":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    aput v0, v8, v3

    .line 373
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    aput v0, v8, v9

    .line 374
    if-eqz p4, :cond_0

    .line 375
    aget v0, v8, v3

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher4/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v8, v3

    .line 376
    aget v0, v8, v9

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher4/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v8, v9

    .line 382
    .end local v1    # "cl":Lcom/android/launcher4/CellLayout;
    .end local v7    # "r":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-object v8

    .line 380
    :cond_1
    aput v2, v8, v3

    .line 381
    aput v2, v8, v9

    goto :goto_0
.end method

.method public exitOverviewMode(IZ)V
    .locals 1
    .param p1, "snapPage"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 2141
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher4/Workspace;->enableOverviewMode(ZIZ)V

    .line 2142
    return-void
.end method

.method public exitOverviewMode(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 2137
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher4/Workspace;->exitOverviewMode(IZ)V

    .line 2138
    return-void
.end method

.method public exitWidgetResizeMode()V
    .locals 2

    .prologue
    .line 2066
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v0

    .line 2067
    .local v0, "dragLayer":Lcom/android/launcher4/DragLayer;
    invoke-virtual {v0}, Lcom/android/launcher4/DragLayer;->clearAllResizeFrames()V

    .line 2068
    return-void
.end method

.method getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ShortcutAndWidgetContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4905
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4906
    .local v0, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutAndWidgetContainer;>;"
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v2

    .line 4907
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "screen":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 4911
    iget-object v3, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher4/Launcher;->getHotseat()Landroid/view/View;

    .line 4915
    return-object v0

    .line 4908
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/CellLayout;

    .line 4909
    invoke-virtual {v3}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 4908
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4907
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 1577
    iget v0, p0, Lcom/android/launcher4/Workspace;->mBackgroundAlpha:F

    return v0
.end method

.method getChangeStateAnimation(Lcom/android/launcher4/Workspace$State;Z)Landroid/animation/Animator;
    .locals 2
    .param p1, "state"    # Lcom/android/launcher4/Workspace$State;
    .param p2, "animated"    # Z

    .prologue
    .line 2082
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher4/Workspace;->getChangeStateAnimation(Lcom/android/launcher4/Workspace$State;ZII)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method getChangeStateAnimation(Lcom/android/launcher4/Workspace$State;ZII)Landroid/animation/Animator;
    .locals 43
    .param p1, "state"    # Lcom/android/launcher4/Workspace$State;
    .param p2, "animated"    # Z
    .param p3, "delay"    # I
    .param p4, "snapPage"    # I

    .prologue
    .line 2431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 2432
    const/4 v6, 0x0

    .line 2636
    :goto_0
    return-object v6

    .line 2434
    :cond_0
    const-string v39, "hy"

    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "state222222"

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->initAnimationArrays()V

    .line 2438
    if-eqz p2, :cond_9

    invoke-static {}, Lcom/android/launcher4/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    .line 2441
    .local v6, "anim":Landroid/animation/AnimatorSet;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v21, v0

    .line 2442
    .local v21, "oldState":Lcom/android/launcher4/Workspace$State;
    sget-object v39, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_a

    const/16 v22, 0x1

    .line 2443
    .local v22, "oldStateIsNormal":Z
    :goto_2
    sget-object v39, Lcom/android/launcher4/Workspace$State;->SPRING_LOADED:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_b

    const/16 v25, 0x1

    .line 2444
    .local v25, "oldStateIsSpringLoaded":Z
    :goto_3
    sget-object v39, Lcom/android/launcher4/Workspace$State;->SMALL:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_c

    const/16 v24, 0x1

    .line 2445
    .local v24, "oldStateIsSmall":Z
    :goto_4
    sget-object v39, Lcom/android/launcher4/Workspace$State;->OVERVIEW:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_d

    const/16 v23, 0x1

    .line 2446
    .local v23, "oldStateIsOverview":Z
    :goto_5
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher4/Workspace;->setState(Lcom/android/launcher4/Workspace$State;)V

    .line 2447
    sget-object v39, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_e

    const/16 v33, 0x1

    .line 2448
    .local v33, "stateIsNormal":Z
    :goto_6
    sget-object v39, Lcom/android/launcher4/Workspace$State;->SPRING_LOADED:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_f

    const/16 v36, 0x1

    .line 2449
    .local v36, "stateIsSpringLoaded":Z
    :goto_7
    sget-object v39, Lcom/android/launcher4/Workspace$State;->SMALL:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_10

    const/16 v35, 0x1

    .line 2450
    .local v35, "stateIsSmall":Z
    :goto_8
    sget-object v39, Lcom/android/launcher4/Workspace$State;->OVERVIEW:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_11

    const/16 v34, 0x1

    .line 2451
    .local v34, "stateIsOverview":Z
    :goto_9
    if-nez v36, :cond_1

    if-eqz v34, :cond_12

    :cond_1
    const/high16 v12, 0x3f800000    # 1.0f

    .line 2453
    .local v12, "finalBackgroundAlpha":F
    :goto_a
    if-nez v34, :cond_2

    if-eqz v35, :cond_13

    :cond_2
    const/4 v13, 0x0

    .line 2455
    .local v13, "finalHotseatAndPageIndicatorAlpha":F
    :goto_b
    if-eqz v34, :cond_14

    const/high16 v14, 0x3f800000    # 1.0f

    .line 2456
    .local v14, "finalOverviewPanelAlpha":F
    :goto_c
    if-nez v33, :cond_15

    const/4 v15, 0x0

    .line 2457
    .local v15, "finalSearchBarAlpha":F
    :goto_d
    if-eqz v34, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getOverviewModeTranslationY()I

    move-result v39

    :goto_e
    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v16, v0

    .line 2460
    .local v16, "finalWorkspaceTranslationY":F
    if-eqz v22, :cond_17

    if-eqz v35, :cond_17

    const/16 v37, 0x1

    .line 2461
    .local v37, "workspaceToAllApps":Z
    :goto_f
    if-eqz v24, :cond_18

    if-eqz v33, :cond_18

    const/4 v4, 0x1

    .line 2462
    .local v4, "allAppsToWorkspace":Z
    :goto_10
    if-eqz v22, :cond_19

    if-eqz v34, :cond_19

    const/16 v38, 0x1

    .line 2463
    .local v38, "workspaceToOverview":Z
    :goto_11
    if-eqz v23, :cond_1a

    if-eqz v33, :cond_1a

    const/16 v28, 0x1

    .line 2465
    .local v28, "overviewToWorkspace":Z
    :goto_12
    const/high16 v39, 0x3f800000    # 1.0f

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/Workspace;->mNewScale:F

    .line 2467
    if-eqz v23, :cond_1b

    .line 2468
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->disableFreeScroll(I)V

    .line 2474
    :cond_3
    :goto_13
    sget-object v39, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_5

    .line 2475
    if-eqz v36, :cond_1c

    .line 2476
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/Workspace;->mSpringLoadedShrinkFactor:F

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/Workspace;->mNewScale:F

    .line 2482
    :cond_4
    :goto_14
    if-eqz v37, :cond_5

    .line 2483
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/launcher4/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2488
    :cond_5
    if-eqz v37, :cond_1e

    .line 2489
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 2490
    const v40, 0x7f0b0003

    .line 2489
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 2499
    .local v10, "duration":I
    :goto_15
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v39

    move/from16 v0, v17

    move/from16 v1, v39

    if-lt v0, v1, :cond_21

    .line 2530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher4/Launcher;->getQsbBar()Landroid/view/View;

    move-result-object v31

    .line 2531
    .local v31, "searchBar":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher4/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v26

    .line 2532
    .local v26, "overviewPanel":Landroid/view/View;
    if-eqz p2, :cond_2f

    .line 2533
    int-to-long v0, v10

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2534
    new-instance v30, Lcom/android/launcher4/LauncherViewPropertyAnimator;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher4/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 2536
    .local v30, "scale":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/Workspace;->mNewScale:F

    move/from16 v39, v0

    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher4/LauncherViewPropertyAnimator;

    move-result-object v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/Workspace;->mNewScale:F

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher4/LauncherViewPropertyAnimator;

    move-result-object v39

    .line 2537
    move-object/from16 v0, v39

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher4/LauncherViewPropertyAnimator;

    move-result-object v39

    .line 2538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mZoomInInterpolator:Lcom/android/launcher4/Workspace$ZoomInInterpolator;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2539
    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2540
    const/16 v18, 0x0

    .local v18, "index":I
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v39

    move/from16 v0, v18

    move/from16 v1, v39

    if-lt v0, v1, :cond_29

    .line 2572
    const/16 v29, 0x0

    .line 2573
    .local v29, "pageIndicatorAlpha":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v39

    if-eqz v39, :cond_6

    .line 2574
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v39

    .line 2575
    const-string v40, "alpha"

    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aput v13, v41, v42

    .line 2574
    invoke-static/range {v39 .. v41}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v29

    .line 2578
    :cond_6
    const-string v39, "alpha"

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [F

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput v15, v40, v41

    .line 2577
    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v32

    .line 2580
    .local v32, "searchBarAlpha":Landroid/animation/ObjectAnimator;
    const-string v39, "alpha"

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [F

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput v14, v40, v41

    .line 2579
    move-object/from16 v0, v26

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v27

    .line 2582
    .local v27, "overviewPanelAlpha":Landroid/animation/ObjectAnimator;
    new-instance v39, Lcom/android/launcher4/Workspace$AlphaUpdateListener;

    .line 2583
    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/launcher4/Workspace$AlphaUpdateListener;-><init>(Landroid/view/View;)V

    .line 2582
    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2584
    new-instance v39, Lcom/android/launcher4/Workspace$AlphaUpdateListener;

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/launcher4/Workspace$AlphaUpdateListener;-><init>(Landroid/view/View;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2586
    if-nez v38, :cond_7

    .line 2587
    if-eqz v28, :cond_7

    .line 2589
    new-instance v39, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v40, 0x40000000    # 2.0f

    invoke-direct/range {v39 .. v40}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2592
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v39

    if-eqz v39, :cond_8

    .line 2593
    new-instance v39, Lcom/android/launcher4/Workspace$AlphaUpdateListener;

    .line 2594
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Lcom/android/launcher4/Workspace$AlphaUpdateListener;-><init>(Landroid/view/View;)V

    .line 2593
    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2597
    :cond_8
    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2598
    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2599
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2600
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 2615
    .end local v18    # "index":I
    .end local v27    # "overviewPanelAlpha":Landroid/animation/ObjectAnimator;
    .end local v29    # "pageIndicatorAlpha":Landroid/animation/ObjectAnimator;
    .end local v30    # "scale":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    .end local v32    # "searchBarAlpha":Landroid/animation/ObjectAnimator;
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Lcom/android/launcher4/Launcher;->updateVoiceButtonProxyVisible(Z)V

    .line 2617
    if-eqz v36, :cond_31

    .line 2622
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 2623
    const v40, 0x7f0b0002

    .line 2622
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    .line 2623
    const/high16 v40, 0x42c80000    # 100.0f

    .line 2622
    div-float v39, v39, v40

    .line 2624
    const/16 v40, 0x0

    .line 2621
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/launcher4/Workspace;->animateBackgroundGradient(FZ)V

    goto/16 :goto_0

    .line 2439
    .end local v4    # "allAppsToWorkspace":Z
    .end local v6    # "anim":Landroid/animation/AnimatorSet;
    .end local v10    # "duration":I
    .end local v12    # "finalBackgroundAlpha":F
    .end local v13    # "finalHotseatAndPageIndicatorAlpha":F
    .end local v14    # "finalOverviewPanelAlpha":F
    .end local v15    # "finalSearchBarAlpha":F
    .end local v16    # "finalWorkspaceTranslationY":F
    .end local v17    # "i":I
    .end local v21    # "oldState":Lcom/android/launcher4/Workspace$State;
    .end local v22    # "oldStateIsNormal":Z
    .end local v23    # "oldStateIsOverview":Z
    .end local v24    # "oldStateIsSmall":Z
    .end local v25    # "oldStateIsSpringLoaded":Z
    .end local v26    # "overviewPanel":Landroid/view/View;
    .end local v28    # "overviewToWorkspace":Z
    .end local v31    # "searchBar":Landroid/view/View;
    .end local v33    # "stateIsNormal":Z
    .end local v34    # "stateIsOverview":Z
    .end local v35    # "stateIsSmall":Z
    .end local v36    # "stateIsSpringLoaded":Z
    .end local v37    # "workspaceToAllApps":Z
    .end local v38    # "workspaceToOverview":Z
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 2442
    .restart local v6    # "anim":Landroid/animation/AnimatorSet;
    .restart local v21    # "oldState":Lcom/android/launcher4/Workspace$State;
    :cond_a
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 2443
    .restart local v22    # "oldStateIsNormal":Z
    :cond_b
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 2444
    .restart local v25    # "oldStateIsSpringLoaded":Z
    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 2445
    .restart local v24    # "oldStateIsSmall":Z
    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 2447
    .restart local v23    # "oldStateIsOverview":Z
    :cond_e
    const/16 v33, 0x0

    goto/16 :goto_6

    .line 2448
    .restart local v33    # "stateIsNormal":Z
    :cond_f
    const/16 v36, 0x0

    goto/16 :goto_7

    .line 2449
    .restart local v36    # "stateIsSpringLoaded":Z
    :cond_10
    const/16 v35, 0x0

    goto/16 :goto_8

    .line 2450
    .restart local v35    # "stateIsSmall":Z
    :cond_11
    const/16 v34, 0x0

    goto/16 :goto_9

    .line 2452
    .restart local v34    # "stateIsOverview":Z
    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 2454
    .restart local v12    # "finalBackgroundAlpha":F
    :cond_13
    const/high16 v13, 0x3f800000    # 1.0f

    goto/16 :goto_b

    .line 2455
    .restart local v13    # "finalHotseatAndPageIndicatorAlpha":F
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_c

    .line 2456
    .restart local v14    # "finalOverviewPanelAlpha":F
    :cond_15
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_d

    .line 2458
    .restart local v15    # "finalSearchBarAlpha":F
    :cond_16
    const/16 v39, 0x0

    goto/16 :goto_e

    .line 2460
    .restart local v16    # "finalWorkspaceTranslationY":F
    :cond_17
    const/16 v37, 0x0

    goto/16 :goto_f

    .line 2461
    .restart local v37    # "workspaceToAllApps":Z
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_10

    .line 2462
    .restart local v4    # "allAppsToWorkspace":Z
    :cond_19
    const/16 v38, 0x0

    goto/16 :goto_11

    .line 2463
    .restart local v38    # "workspaceToOverview":Z
    :cond_1a
    const/16 v28, 0x0

    goto/16 :goto_12

    .line 2470
    .restart local v28    # "overviewToWorkspace":Z
    :cond_1b
    if-eqz v34, :cond_3

    .line 2471
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->enableFreeScroll()V

    goto/16 :goto_13

    .line 2477
    :cond_1c
    if-eqz v34, :cond_1d

    .line 2478
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/Workspace;->mOverviewModeShrinkFactor:F

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/Workspace;->mNewScale:F

    goto/16 :goto_14

    .line 2479
    :cond_1d
    if-eqz v35, :cond_4

    .line 2480
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/Workspace;->mOverviewModeShrinkFactor:F

    move/from16 v39, v0

    const v40, 0x3e99999a    # 0.3f

    sub-float v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/Workspace;->mNewScale:F

    goto/16 :goto_14

    .line 2491
    :cond_1e
    if-nez v38, :cond_1f

    if-eqz v28, :cond_20

    .line 2492
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 2493
    const v40, 0x7f0b0004

    .line 2492
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 2494
    .restart local v10    # "duration":I
    goto/16 :goto_15

    .line 2495
    .end local v10    # "duration":I
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 2496
    const v40, 0x7f0b000c

    .line 2495
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .restart local v10    # "duration":I
    goto/16 :goto_15

    .line 2500
    .restart local v17    # "i":I
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher4/CellLayout;

    .line 2501
    .local v8, "cl":Lcom/android/launcher4/CellLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getNextPage()I

    move-result v39

    move/from16 v0, v17

    move/from16 v1, v39

    if-ne v0, v1, :cond_25

    const/16 v20, 0x1

    .line 2502
    .local v20, "isCurrentPage":Z
    :goto_19
    invoke-virtual {v8}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v19

    .line 2503
    .local v19, "initialAlpha":F
    if-eqz v35, :cond_26

    const/4 v11, 0x0

    .line 2508
    .local v11, "finalAlpha":F
    :goto_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/Workspace;->mIsSwitchingState:Z

    move/from16 v39, v0

    if-nez v39, :cond_24

    .line 2509
    if-nez v37, :cond_22

    if-eqz v4, :cond_24

    .line 2510
    :cond_22
    if-eqz v4, :cond_27

    if-eqz v20, :cond_27

    .line 2511
    const/16 v19, 0x0

    .line 2515
    :cond_23
    :goto_1b
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/android/launcher4/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 2519
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mOldAlphas:[F

    move-object/from16 v39, v0

    aput v19, v39, v17

    .line 2520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewAlphas:[F

    move-object/from16 v39, v0

    aput v11, v39, v17

    .line 2521
    if-eqz p2, :cond_28

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mOldBackgroundAlphas:[F

    move-object/from16 v39, v0

    invoke-virtual {v8}, Lcom/android/launcher4/CellLayout;->getBackgroundAlpha()F

    move-result v40

    aput v40, v39, v17

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewBackgroundAlphas:[F

    move-object/from16 v39, v0

    aput v12, v39, v17

    .line 2499
    :goto_1c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_16

    .line 2501
    .end local v11    # "finalAlpha":F
    .end local v19    # "initialAlpha":F
    .end local v20    # "isCurrentPage":Z
    :cond_25
    const/16 v20, 0x0

    goto :goto_19

    .line 2503
    .restart local v19    # "initialAlpha":F
    .restart local v20    # "isCurrentPage":Z
    :cond_26
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_1a

    .line 2512
    .restart local v11    # "finalAlpha":F
    :cond_27
    if-nez v20, :cond_23

    .line 2513
    const/4 v11, 0x0

    move/from16 v19, v11

    goto :goto_1b

    .line 2525
    :cond_28
    invoke-virtual {v8, v12}, Lcom/android/launcher4/CellLayout;->setBackgroundAlpha(F)V

    .line 2526
    invoke-virtual {v8, v11}, Lcom/android/launcher4/CellLayout;->setShortcutAndWidgetAlpha(F)V

    goto :goto_1c

    .line 2541
    .end local v8    # "cl":Lcom/android/launcher4/CellLayout;
    .end local v11    # "finalAlpha":F
    .end local v19    # "initialAlpha":F
    .end local v20    # "isCurrentPage":Z
    .restart local v18    # "index":I
    .restart local v26    # "overviewPanel":Landroid/view/View;
    .restart local v30    # "scale":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    .restart local v31    # "searchBar":Landroid/view/View;
    :cond_29
    move/from16 v17, v18

    .line 2542
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher4/CellLayout;

    .line 2543
    .restart local v8    # "cl":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v8}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v9

    .line 2544
    .local v9, "currentAlpha":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mOldAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    const/16 v40, 0x0

    cmpl-float v39, v39, v40

    if-nez v39, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    const/16 v40, 0x0

    cmpl-float v39, v39, v40

    if-nez v39, :cond_2b

    .line 2545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewBackgroundAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Lcom/android/launcher4/CellLayout;->setBackgroundAlpha(F)V

    .line 2546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Lcom/android/launcher4/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 2540
    :cond_2a
    :goto_1d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_17

    .line 2548
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mOldAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewAlphas:[F

    move-object/from16 v40, v0

    aget v40, v40, v17

    cmpl-float v39, v39, v40

    if-nez v39, :cond_2c

    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    cmpl-float v39, v9, v39

    if-eqz v39, :cond_2d

    .line 2550
    :cond_2c
    new-instance v5, Lcom/android/launcher4/LauncherViewPropertyAnimator;

    .line 2551
    invoke-virtual {v8}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v39

    .line 2550
    move-object/from16 v0, v39

    invoke-direct {v5, v0}, Lcom/android/launcher4/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 2552
    .local v5, "alphaAnim":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher4/LauncherViewPropertyAnimator;

    move-result-object v39

    .line 2553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mZoomInInterpolator:Lcom/android/launcher4/Workspace$ZoomInInterpolator;

    move-object/from16 v40, v0

    .line 2552
    invoke-virtual/range {v39 .. v40}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2554
    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2556
    .end local v5    # "alphaAnim":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mOldBackgroundAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    const/16 v40, 0x0

    cmpl-float v39, v39, v40

    if-nez v39, :cond_2e

    .line 2557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewBackgroundAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    const/16 v40, 0x0

    cmpl-float v39, v39, v40

    if-eqz v39, :cond_2a

    .line 2558
    :cond_2e
    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [F

    move-object/from16 v39, v0

    fill-array-data v39, :array_0

    move-object/from16 v0, v39

    invoke-static {v8, v0}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 2560
    .local v7, "bgAnim":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mZoomInInterpolator:Lcom/android/launcher4/Workspace$ZoomInInterpolator;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2561
    new-instance v39, Lcom/android/launcher4/Workspace$7;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v8, v2}, Lcom/android/launcher4/Workspace$7;-><init>(Lcom/android/launcher4/Workspace;Lcom/android/launcher4/CellLayout;I)V

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2568
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_1d

    .line 2602
    .end local v7    # "bgAnim":Landroid/animation/ValueAnimator;
    .end local v8    # "cl":Lcom/android/launcher4/CellLayout;
    .end local v9    # "currentAlpha":F
    .end local v18    # "index":I
    .end local v30    # "scale":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    :cond_2f
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/view/View;->setAlpha(F)V

    .line 2603
    invoke-static/range {v26 .. v26}, Lcom/android/launcher4/Workspace$AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 2604
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v39

    if-eqz v39, :cond_30

    .line 2605
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Lcom/android/launcher4/PageIndicator;->setAlpha(F)V

    .line 2606
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/android/launcher4/Workspace$AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 2608
    :cond_30
    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/view/View;->setAlpha(F)V

    .line 2609
    invoke-static/range {v31 .. v31}, Lcom/android/launcher4/Workspace$AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 2610
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->updateCustomContentVisibility()V

    .line 2611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/Workspace;->mNewScale:F

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->setScaleX(F)V

    .line 2612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/Workspace;->mNewScale:F

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->setScaleY(F)V

    .line 2613
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->setTranslationY(F)V

    goto/16 :goto_18

    .line 2626
    :cond_31
    if-eqz v34, :cond_32

    .line 2628
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 2629
    const v40, 0x7f0b0002

    .line 2628
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    .line 2629
    const/high16 v40, 0x42c80000    # 100.0f

    .line 2628
    div-float v39, v39, v40

    .line 2630
    const/16 v40, 0x1

    .line 2627
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/launcher4/Workspace;->animateBackgroundGradient(FZ)V

    goto/16 :goto_0

    .line 2634
    :cond_32
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher4/Workspace;->animateBackgroundGradient(FZ)V

    goto/16 :goto_0

    .line 2558
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getChangeStateAnimation(Lcom/android/launcher4/Workspace$State;ZIILcom/android/launcher4/AppsCustomizePagedView$ContentType;)Landroid/animation/Animator;
    .locals 43
    .param p1, "state"    # Lcom/android/launcher4/Workspace$State;
    .param p2, "animated"    # Z
    .param p3, "delay"    # I
    .param p4, "snapPage"    # I
    .param p5, "contentType"    # Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    .prologue
    .line 2220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 2221
    const/4 v6, 0x0

    .line 2426
    :goto_0
    return-object v6

    .line 2223
    :cond_0
    const-string v39, "hy"

    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "state111111"

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->initAnimationArrays()V

    .line 2227
    if-eqz p2, :cond_9

    invoke-static {}, Lcom/android/launcher4/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    .line 2230
    .local v6, "anim":Landroid/animation/AnimatorSet;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v21, v0

    .line 2231
    .local v21, "oldState":Lcom/android/launcher4/Workspace$State;
    sget-object v39, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_a

    const/16 v22, 0x1

    .line 2232
    .local v22, "oldStateIsNormal":Z
    :goto_2
    sget-object v39, Lcom/android/launcher4/Workspace$State;->SPRING_LOADED:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_b

    const/16 v25, 0x1

    .line 2233
    .local v25, "oldStateIsSpringLoaded":Z
    :goto_3
    sget-object v39, Lcom/android/launcher4/Workspace$State;->SMALL:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_c

    const/16 v24, 0x1

    .line 2234
    .local v24, "oldStateIsSmall":Z
    :goto_4
    sget-object v39, Lcom/android/launcher4/Workspace$State;->OVERVIEW:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_d

    const/16 v23, 0x1

    .line 2235
    .local v23, "oldStateIsOverview":Z
    :goto_5
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher4/Workspace;->setState(Lcom/android/launcher4/Workspace$State;)V

    .line 2236
    sget-object v39, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_e

    const/16 v33, 0x1

    .line 2237
    .local v33, "stateIsNormal":Z
    :goto_6
    sget-object v39, Lcom/android/launcher4/Workspace$State;->SPRING_LOADED:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_f

    const/16 v36, 0x1

    .line 2238
    .local v36, "stateIsSpringLoaded":Z
    :goto_7
    sget-object v39, Lcom/android/launcher4/Workspace$State;->SMALL:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_10

    const/16 v35, 0x1

    .line 2239
    .local v35, "stateIsSmall":Z
    :goto_8
    sget-object v39, Lcom/android/launcher4/Workspace$State;->OVERVIEW:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_11

    const/16 v34, 0x1

    .line 2240
    .local v34, "stateIsOverview":Z
    :goto_9
    if-nez v36, :cond_1

    if-eqz v34, :cond_12

    :cond_1
    const/high16 v12, 0x3f800000    # 1.0f

    .line 2242
    .local v12, "finalBackgroundAlpha":F
    :goto_a
    if-nez v34, :cond_2

    if-eqz v35, :cond_13

    :cond_2
    const/4 v13, 0x0

    .line 2244
    .local v13, "finalHotseatAndPageIndicatorAlpha":F
    :goto_b
    sget-object v39, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    move-object/from16 v0, p5

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_14

    const/high16 v14, 0x3f800000    # 1.0f

    .line 2246
    .local v14, "finalOverviewPanelAlpha":F
    :goto_c
    if-nez v33, :cond_15

    const/4 v15, 0x0

    .line 2247
    .local v15, "finalSearchBarAlpha":F
    :goto_d
    if-eqz v34, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getOverviewModeTranslationY()I

    move-result v39

    :goto_e
    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v16, v0

    .line 2250
    .local v16, "finalWorkspaceTranslationY":F
    if-eqz v22, :cond_17

    if-eqz v35, :cond_17

    const/16 v37, 0x1

    .line 2251
    .local v37, "workspaceToAllApps":Z
    :goto_f
    if-eqz v24, :cond_18

    if-eqz v33, :cond_18

    const/4 v4, 0x1

    .line 2252
    .local v4, "allAppsToWorkspace":Z
    :goto_10
    if-eqz v22, :cond_19

    if-eqz v34, :cond_19

    const/16 v38, 0x1

    .line 2253
    .local v38, "workspaceToOverview":Z
    :goto_11
    if-eqz v23, :cond_1a

    if-eqz v33, :cond_1a

    const/16 v28, 0x1

    .line 2255
    .local v28, "overviewToWorkspace":Z
    :goto_12
    const/high16 v39, 0x3f800000    # 1.0f

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/Workspace;->mNewScale:F

    .line 2257
    if-eqz v23, :cond_1b

    .line 2258
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->disableFreeScroll(I)V

    .line 2263
    :cond_3
    :goto_13
    sget-object v39, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_5

    .line 2264
    if-eqz v36, :cond_1c

    .line 2265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/Workspace;->mSpringLoadedShrinkFactor:F

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/Workspace;->mNewScale:F

    .line 2271
    :cond_4
    :goto_14
    if-eqz v37, :cond_5

    .line 2272
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/launcher4/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2277
    :cond_5
    if-eqz v37, :cond_1e

    .line 2278
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 2279
    const v40, 0x7f0b0003

    .line 2278
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 2288
    .local v10, "duration":I
    :goto_15
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v39

    move/from16 v0, v17

    move/from16 v1, v39

    if-lt v0, v1, :cond_21

    .line 2320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher4/Launcher;->getQsbBar()Landroid/view/View;

    move-result-object v31

    .line 2321
    .local v31, "searchBar":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher4/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v26

    .line 2322
    .local v26, "overviewPanel":Landroid/view/View;
    if-eqz p2, :cond_2f

    .line 2323
    int-to-long v0, v10

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2324
    new-instance v30, Lcom/android/launcher4/LauncherViewPropertyAnimator;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher4/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 2326
    .local v30, "scale":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/Workspace;->mNewScale:F

    move/from16 v39, v0

    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher4/LauncherViewPropertyAnimator;

    move-result-object v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/Workspace;->mNewScale:F

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher4/LauncherViewPropertyAnimator;

    move-result-object v39

    .line 2327
    move-object/from16 v0, v39

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher4/LauncherViewPropertyAnimator;

    move-result-object v39

    .line 2328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mZoomInInterpolator:Lcom/android/launcher4/Workspace$ZoomInInterpolator;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2329
    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2330
    const/16 v18, 0x0

    .local v18, "index":I
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v39

    move/from16 v0, v18

    move/from16 v1, v39

    if-lt v0, v1, :cond_29

    .line 2362
    const/16 v29, 0x0

    .line 2363
    .local v29, "pageIndicatorAlpha":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v39

    if-eqz v39, :cond_6

    .line 2364
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v39

    .line 2365
    const-string v40, "alpha"

    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aput v13, v41, v42

    .line 2364
    invoke-static/range {v39 .. v41}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v29

    .line 2368
    :cond_6
    const-string v39, "alpha"

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [F

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput v15, v40, v41

    .line 2367
    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v32

    .line 2370
    .local v32, "searchBarAlpha":Landroid/animation/ObjectAnimator;
    const-string v39, "alpha"

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [F

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput v14, v40, v41

    .line 2369
    move-object/from16 v0, v26

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v27

    .line 2372
    .local v27, "overviewPanelAlpha":Landroid/animation/ObjectAnimator;
    new-instance v39, Lcom/android/launcher4/Workspace$AlphaUpdateListener;

    .line 2373
    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/launcher4/Workspace$AlphaUpdateListener;-><init>(Landroid/view/View;)V

    .line 2372
    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2374
    new-instance v39, Lcom/android/launcher4/Workspace$AlphaUpdateListener;

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/launcher4/Workspace$AlphaUpdateListener;-><init>(Landroid/view/View;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2376
    if-nez v38, :cond_7

    .line 2377
    if-eqz v28, :cond_7

    .line 2379
    new-instance v39, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v40, 0x40000000    # 2.0f

    invoke-direct/range {v39 .. v40}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2382
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v39

    if-eqz v39, :cond_8

    .line 2383
    new-instance v39, Lcom/android/launcher4/Workspace$AlphaUpdateListener;

    .line 2384
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Lcom/android/launcher4/Workspace$AlphaUpdateListener;-><init>(Landroid/view/View;)V

    .line 2383
    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2387
    :cond_8
    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2388
    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2389
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2390
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 2405
    .end local v18    # "index":I
    .end local v27    # "overviewPanelAlpha":Landroid/animation/ObjectAnimator;
    .end local v29    # "pageIndicatorAlpha":Landroid/animation/ObjectAnimator;
    .end local v30    # "scale":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    .end local v32    # "searchBarAlpha":Landroid/animation/ObjectAnimator;
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Lcom/android/launcher4/Launcher;->updateVoiceButtonProxyVisible(Z)V

    .line 2407
    if-eqz v36, :cond_31

    .line 2412
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 2413
    const v40, 0x7f0b0002

    .line 2412
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    .line 2413
    const/high16 v40, 0x42c80000    # 100.0f

    .line 2412
    div-float v39, v39, v40

    .line 2414
    const/16 v40, 0x0

    .line 2411
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/launcher4/Workspace;->animateBackgroundGradient(FZ)V

    goto/16 :goto_0

    .line 2228
    .end local v4    # "allAppsToWorkspace":Z
    .end local v6    # "anim":Landroid/animation/AnimatorSet;
    .end local v10    # "duration":I
    .end local v12    # "finalBackgroundAlpha":F
    .end local v13    # "finalHotseatAndPageIndicatorAlpha":F
    .end local v14    # "finalOverviewPanelAlpha":F
    .end local v15    # "finalSearchBarAlpha":F
    .end local v16    # "finalWorkspaceTranslationY":F
    .end local v17    # "i":I
    .end local v21    # "oldState":Lcom/android/launcher4/Workspace$State;
    .end local v22    # "oldStateIsNormal":Z
    .end local v23    # "oldStateIsOverview":Z
    .end local v24    # "oldStateIsSmall":Z
    .end local v25    # "oldStateIsSpringLoaded":Z
    .end local v26    # "overviewPanel":Landroid/view/View;
    .end local v28    # "overviewToWorkspace":Z
    .end local v31    # "searchBar":Landroid/view/View;
    .end local v33    # "stateIsNormal":Z
    .end local v34    # "stateIsOverview":Z
    .end local v35    # "stateIsSmall":Z
    .end local v36    # "stateIsSpringLoaded":Z
    .end local v37    # "workspaceToAllApps":Z
    .end local v38    # "workspaceToOverview":Z
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 2231
    .restart local v6    # "anim":Landroid/animation/AnimatorSet;
    .restart local v21    # "oldState":Lcom/android/launcher4/Workspace$State;
    :cond_a
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 2232
    .restart local v22    # "oldStateIsNormal":Z
    :cond_b
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 2233
    .restart local v25    # "oldStateIsSpringLoaded":Z
    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 2234
    .restart local v24    # "oldStateIsSmall":Z
    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 2236
    .restart local v23    # "oldStateIsOverview":Z
    :cond_e
    const/16 v33, 0x0

    goto/16 :goto_6

    .line 2237
    .restart local v33    # "stateIsNormal":Z
    :cond_f
    const/16 v36, 0x0

    goto/16 :goto_7

    .line 2238
    .restart local v36    # "stateIsSpringLoaded":Z
    :cond_10
    const/16 v35, 0x0

    goto/16 :goto_8

    .line 2239
    .restart local v35    # "stateIsSmall":Z
    :cond_11
    const/16 v34, 0x0

    goto/16 :goto_9

    .line 2241
    .restart local v34    # "stateIsOverview":Z
    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 2243
    .restart local v12    # "finalBackgroundAlpha":F
    :cond_13
    const/high16 v13, 0x3f800000    # 1.0f

    goto/16 :goto_b

    .line 2245
    .restart local v13    # "finalHotseatAndPageIndicatorAlpha":F
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_c

    .line 2246
    .restart local v14    # "finalOverviewPanelAlpha":F
    :cond_15
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_d

    .line 2248
    .restart local v15    # "finalSearchBarAlpha":F
    :cond_16
    const/16 v39, 0x0

    goto/16 :goto_e

    .line 2250
    .restart local v16    # "finalWorkspaceTranslationY":F
    :cond_17
    const/16 v37, 0x0

    goto/16 :goto_f

    .line 2251
    .restart local v37    # "workspaceToAllApps":Z
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_10

    .line 2252
    .restart local v4    # "allAppsToWorkspace":Z
    :cond_19
    const/16 v38, 0x0

    goto/16 :goto_11

    .line 2253
    .restart local v38    # "workspaceToOverview":Z
    :cond_1a
    const/16 v28, 0x0

    goto/16 :goto_12

    .line 2259
    .restart local v28    # "overviewToWorkspace":Z
    :cond_1b
    if-eqz v34, :cond_3

    .line 2260
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->enableFreeScroll()V

    goto/16 :goto_13

    .line 2266
    :cond_1c
    if-eqz v34, :cond_1d

    .line 2267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/Workspace;->mOverviewModeShrinkFactor:F

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/Workspace;->mNewScale:F

    goto/16 :goto_14

    .line 2268
    :cond_1d
    if-eqz v35, :cond_4

    .line 2269
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/Workspace;->mOverviewModeShrinkFactor:F

    move/from16 v39, v0

    const v40, 0x3e99999a    # 0.3f

    sub-float v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/Workspace;->mNewScale:F

    goto/16 :goto_14

    .line 2280
    :cond_1e
    if-nez v38, :cond_1f

    if-eqz v28, :cond_20

    .line 2281
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 2282
    const v40, 0x7f0b0004

    .line 2281
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 2283
    .restart local v10    # "duration":I
    goto/16 :goto_15

    .line 2284
    .end local v10    # "duration":I
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 2285
    const v40, 0x7f0b000c

    .line 2284
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .restart local v10    # "duration":I
    goto/16 :goto_15

    .line 2289
    .restart local v17    # "i":I
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher4/CellLayout;

    .line 2290
    .local v8, "cl":Lcom/android/launcher4/CellLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getNextPage()I

    move-result v39

    move/from16 v0, v17

    move/from16 v1, v39

    if-ne v0, v1, :cond_25

    const/16 v20, 0x1

    .line 2291
    .local v20, "isCurrentPage":Z
    :goto_19
    invoke-virtual {v8}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v19

    .line 2292
    .local v19, "initialAlpha":F
    if-eqz v35, :cond_26

    const/4 v11, 0x0

    .line 2297
    .local v11, "finalAlpha":F
    :goto_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/Workspace;->mIsSwitchingState:Z

    move/from16 v39, v0

    if-nez v39, :cond_24

    .line 2298
    if-nez v37, :cond_22

    if-eqz v4, :cond_24

    .line 2299
    :cond_22
    if-eqz v4, :cond_27

    if-eqz v20, :cond_27

    .line 2300
    const/16 v19, 0x0

    .line 2304
    :cond_23
    :goto_1b
    const/16 v19, 0x0

    .line 2305
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/android/launcher4/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 2309
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mOldAlphas:[F

    move-object/from16 v39, v0

    aput v19, v39, v17

    .line 2310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewAlphas:[F

    move-object/from16 v39, v0

    aput v11, v39, v17

    .line 2311
    if-eqz p2, :cond_28

    .line 2312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mOldBackgroundAlphas:[F

    move-object/from16 v39, v0

    invoke-virtual {v8}, Lcom/android/launcher4/CellLayout;->getBackgroundAlpha()F

    move-result v40

    aput v40, v39, v17

    .line 2313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewBackgroundAlphas:[F

    move-object/from16 v39, v0

    aput v12, v39, v17

    .line 2288
    :goto_1c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_16

    .line 2290
    .end local v11    # "finalAlpha":F
    .end local v19    # "initialAlpha":F
    .end local v20    # "isCurrentPage":Z
    :cond_25
    const/16 v20, 0x0

    goto :goto_19

    .line 2292
    .restart local v19    # "initialAlpha":F
    .restart local v20    # "isCurrentPage":Z
    :cond_26
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_1a

    .line 2301
    .restart local v11    # "finalAlpha":F
    :cond_27
    if-nez v20, :cond_23

    .line 2302
    const/4 v11, 0x0

    move/from16 v19, v11

    goto :goto_1b

    .line 2315
    :cond_28
    invoke-virtual {v8, v12}, Lcom/android/launcher4/CellLayout;->setBackgroundAlpha(F)V

    .line 2316
    invoke-virtual {v8, v11}, Lcom/android/launcher4/CellLayout;->setShortcutAndWidgetAlpha(F)V

    goto :goto_1c

    .line 2331
    .end local v8    # "cl":Lcom/android/launcher4/CellLayout;
    .end local v11    # "finalAlpha":F
    .end local v19    # "initialAlpha":F
    .end local v20    # "isCurrentPage":Z
    .restart local v18    # "index":I
    .restart local v26    # "overviewPanel":Landroid/view/View;
    .restart local v30    # "scale":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    .restart local v31    # "searchBar":Landroid/view/View;
    :cond_29
    move/from16 v17, v18

    .line 2332
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher4/CellLayout;

    .line 2333
    .restart local v8    # "cl":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v8}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v9

    .line 2334
    .local v9, "currentAlpha":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mOldAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    const/16 v40, 0x0

    cmpl-float v39, v39, v40

    if-nez v39, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    const/16 v40, 0x0

    cmpl-float v39, v39, v40

    if-nez v39, :cond_2b

    .line 2335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewBackgroundAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Lcom/android/launcher4/CellLayout;->setBackgroundAlpha(F)V

    .line 2336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Lcom/android/launcher4/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 2330
    :cond_2a
    :goto_1d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_17

    .line 2338
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mOldAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewAlphas:[F

    move-object/from16 v40, v0

    aget v40, v40, v17

    cmpl-float v39, v39, v40

    if-nez v39, :cond_2c

    .line 2339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    cmpl-float v39, v9, v39

    if-eqz v39, :cond_2d

    .line 2340
    :cond_2c
    new-instance v5, Lcom/android/launcher4/LauncherViewPropertyAnimator;

    .line 2341
    invoke-virtual {v8}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v39

    .line 2340
    move-object/from16 v0, v39

    invoke-direct {v5, v0}, Lcom/android/launcher4/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 2342
    .local v5, "alphaAnim":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher4/LauncherViewPropertyAnimator;

    move-result-object v39

    .line 2343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mZoomInInterpolator:Lcom/android/launcher4/Workspace$ZoomInInterpolator;

    move-object/from16 v40, v0

    .line 2342
    invoke-virtual/range {v39 .. v40}, Lcom/android/launcher4/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2344
    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2346
    .end local v5    # "alphaAnim":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mOldBackgroundAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    const/16 v40, 0x0

    cmpl-float v39, v39, v40

    if-nez v39, :cond_2e

    .line 2347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mNewBackgroundAlphas:[F

    move-object/from16 v39, v0

    aget v39, v39, v17

    const/16 v40, 0x0

    cmpl-float v39, v39, v40

    if-eqz v39, :cond_2a

    .line 2348
    :cond_2e
    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [F

    move-object/from16 v39, v0

    fill-array-data v39, :array_0

    move-object/from16 v0, v39

    invoke-static {v8, v0}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 2350
    .local v7, "bgAnim":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mZoomInInterpolator:Lcom/android/launcher4/Workspace$ZoomInInterpolator;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2351
    new-instance v39, Lcom/android/launcher4/Workspace$6;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v8, v2}, Lcom/android/launcher4/Workspace$6;-><init>(Lcom/android/launcher4/Workspace;Lcom/android/launcher4/CellLayout;I)V

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2358
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_1d

    .line 2392
    .end local v7    # "bgAnim":Landroid/animation/ValueAnimator;
    .end local v8    # "cl":Lcom/android/launcher4/CellLayout;
    .end local v9    # "currentAlpha":F
    .end local v18    # "index":I
    .end local v30    # "scale":Lcom/android/launcher4/LauncherViewPropertyAnimator;
    :cond_2f
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/view/View;->setAlpha(F)V

    .line 2393
    invoke-static/range {v26 .. v26}, Lcom/android/launcher4/Workspace$AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 2394
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v39

    if-eqz v39, :cond_30

    .line 2395
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Lcom/android/launcher4/PageIndicator;->setAlpha(F)V

    .line 2396
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/android/launcher4/Workspace$AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 2398
    :cond_30
    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/view/View;->setAlpha(F)V

    .line 2399
    invoke-static/range {v31 .. v31}, Lcom/android/launcher4/Workspace$AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 2400
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->updateCustomContentVisibility()V

    .line 2401
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/Workspace;->mNewScale:F

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->setScaleX(F)V

    .line 2402
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/Workspace;->mNewScale:F

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->setScaleY(F)V

    .line 2403
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->setTranslationY(F)V

    goto/16 :goto_18

    .line 2416
    :cond_31
    if-eqz v34, :cond_32

    .line 2418
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 2419
    const v40, 0x7f0b0002

    .line 2418
    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    .line 2419
    const/high16 v40, 0x42c80000    # 100.0f

    .line 2418
    div-float v39, v39, v40

    .line 2420
    const/16 v40, 0x1

    .line 2417
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/launcher4/Workspace;->animateBackgroundGradient(FZ)V

    goto/16 :goto_0

    .line 2424
    :cond_32
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher4/Workspace;->animateBackgroundGradient(FZ)V

    goto/16 :goto_0

    .line 2348
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getChangeStateAnimation(Lcom/android/launcher4/Workspace$State;ZLcom/android/launcher4/AppsCustomizePagedView$ContentType;)Landroid/animation/Animator;
    .locals 6
    .param p1, "state"    # Lcom/android/launcher4/Workspace$State;
    .param p2, "animated"    # Z
    .param p3, "content"    # Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    .prologue
    .line 2215
    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/Workspace;->getChangeStateAnimation(Lcom/android/launcher4/Workspace$State;ZIILcom/android/launcher4/AppsCustomizePagedView$ContentType;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenOutlineAlpha()F
    .locals 1

    .prologue
    .line 1523
    iget v0, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineAlpha:F

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 0

    .prologue
    .line 2766
    return-object p0
.end method

.method public getCurrentDropLayout()Lcom/android/launcher4/CellLayout;
    .locals 1

    .prologue
    .line 4448
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 6

    .prologue
    .line 5211
    iget v2, p0, Lcom/android/launcher4/Workspace;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v1, p0, Lcom/android/launcher4/Workspace;->mNextPage:I

    .line 5212
    .local v1, "page":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->numCustomPages()I

    move-result v0

    .line 5213
    .local v0, "delta":I
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getNextPage()I

    move-result v2

    if-nez v2, :cond_1

    .line 5214
    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mCustomContentDescription:Ljava/lang/String;

    .line 5216
    :goto_1
    return-object v2

    .line 5211
    .end local v0    # "delta":I
    .end local v1    # "page":I
    :cond_0
    iget v1, p0, Lcom/android/launcher4/Workspace;->mCurrentPage:I

    goto :goto_0

    .line 5217
    .restart local v0    # "delta":I
    .restart local v1    # "page":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0048

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5218
    add-int/lit8 v5, v1, 0x1

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 5216
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected getCustomContentCallbacks()Lcom/android/launcher4/Launcher$CustomContentCallbacks;
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mCustomContentCallbacks:Lcom/android/launcher4/Launcher$CustomContentCallbacks;

    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 1838
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1839
    const/high16 v0, 0x60000

    .line 1841
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher4/SmoothPagedView;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getDragInfo()Lcom/android/launcher4/CellLayout$CellInfo;
    .locals 1

    .prologue
    .line 4458
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    return-object v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher4/Folder;
    .locals 8
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 4919
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v1

    .line 4920
    .local v1, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 4932
    const/4 v3, 0x0

    :cond_1
    return-object v3

    .line 4920
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher4/ShortcutAndWidgetContainer;

    .line 4921
    .local v5, "layout":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    invoke-virtual {v5}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 4922
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 4923
    invoke-virtual {v5, v4}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4924
    .local v0, "child":Landroid/view/View;
    instance-of v7, v0, Lcom/android/launcher4/Folder;

    if-eqz v7, :cond_3

    move-object v3, v0

    .line 4925
    check-cast v3, Lcom/android/launcher4/Folder;

    .line 4926
    .local v3, "f":Lcom/android/launcher4/Folder;
    invoke-virtual {v3}, Lcom/android/launcher4/Folder;->getInfo()Lcom/android/launcher4/FolderInfo;

    move-result-object v7

    if-ne v7, p1, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher4/Folder;->getInfo()Lcom/android/launcher4/FolderInfo;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/launcher4/FolderInfo;->opened:Z

    if-nez v7, :cond_1

    .line 4922
    .end local v3    # "f":Lcom/android/launcher4/Folder;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 4084
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher4/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 4085
    return-void
.end method

.method public getIdForScreen(Lcom/android/launcher4/CellLayout;)J
    .locals 5
    .param p1, "layout"    # Lcom/android/launcher4/CellLayout;

    .prologue
    .line 825
    iget-object v3, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 826
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 832
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    .line 827
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 828
    .local v0, "id":J
    iget-object v3, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    goto :goto_0
.end method

.method public getLocationInDragLayer([I)V
    .locals 1
    .param p1, "loc"    # [I

    .prologue
    .line 5222
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher4/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 5223
    return-void
.end method

.method getOpenFolder()Lcom/android/launcher4/Folder;
    .locals 6

    .prologue
    .line 516
    iget-object v5, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v2

    .line 517
    .local v2, "dragLayer":Lcom/android/launcher4/DragLayer;
    invoke-virtual {v2}, Lcom/android/launcher4/DragLayer;->getChildCount()I

    move-result v1

    .line 518
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v1, :cond_1

    .line 526
    const/4 v3, 0x0

    :cond_0
    return-object v3

    .line 519
    :cond_1
    invoke-virtual {v2, v4}, Lcom/android/launcher4/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 520
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/android/launcher4/Folder;

    if-eqz v5, :cond_2

    move-object v3, v0

    .line 521
    check-cast v3, Lcom/android/launcher4/Folder;

    .line 522
    .local v3, "folder":Lcom/android/launcher4/Folder;
    invoke-virtual {v3}, Lcom/android/launcher4/Folder;->getInfo()Lcom/android/launcher4/FolderInfo;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher4/FolderInfo;->opened:Z

    if-nez v5, :cond_0

    .line 518
    .end local v3    # "folder":Lcom/android/launcher4/Folder;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected getOverviewModePages([I)V
    .locals 4
    .param p1, "range"    # [I

    .prologue
    const/4 v3, 0x0

    .line 2087
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->numCustomPages()I

    move-result v1

    .line 2088
    .local v1, "start":I
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 2090
    .local v0, "end":I
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p1, v3

    .line 2091
    const/4 v2, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p1, v2

    .line 2092
    return-void
.end method

.method getOverviewModeTranslationY()I
    .locals 7

    .prologue
    .line 2173
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getNormalChildHeight()I

    move-result v0

    .line 2174
    .local v0, "childHeight":I
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getViewportHeight()I

    move-result v4

    .line 2175
    .local v4, "viewPortHeight":I
    iget v5, p0, Lcom/android/launcher4/Workspace;->mOverviewModeShrinkFactor:F

    int-to-float v6, v0

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 2177
    .local v3, "scaledChildHeight":I
    sub-int v5, v4, v3

    div-int/lit8 v1, v5, 0x2

    .line 2178
    .local v1, "offset":I
    iget v5, p0, Lcom/android/launcher4/Workspace;->mOverviewModePageOffset:I

    div-int/lit8 v6, v1, 0x4

    sub-int v2, v5, v6

    .line 2180
    .local v2, "offsetDelta":I
    return v2
.end method

.method public getPageIndexForScreenId(J)I
    .locals 3
    .param p1, "screenId"    # J

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected getPageIndicatorClickListener()Landroid/view/View$OnClickListener;
    .locals 4

    .prologue
    .line 1688
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1689
    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1688
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1690
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1691
    const/4 v1, 0x0

    .line 1699
    :goto_0
    return-object v1

    .line 1693
    :cond_0
    new-instance v1, Lcom/android/launcher4/Workspace$4;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Workspace$4;-><init>(Lcom/android/launcher4/Workspace;)V

    .line 1699
    .local v1, "listener":Landroid/view/View$OnClickListener;
    goto :goto_0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5205
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5206
    const v2, 0x7f0c0066

    .line 5205
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5207
    .local v0, "settings":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getPageIndicatorMarker(I)Lcom/android/launcher4/PageIndicator$PageMarkerResources;
    .locals 6
    .param p1, "pageIndex"    # I

    .prologue
    .line 5176
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    .line 5177
    .local v2, "screenId":J
    const-wide/16 v4, -0xc9

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 5178
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->numCustomPages()I

    move-result v4

    sub-int v0, v1, v4

    .line 5179
    .local v0, "count":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 5180
    sget-object v1, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5181
    const v4, 0x7f0a0017

    .line 5180
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 5181
    if-eqz v1, :cond_0

    .line 5182
    new-instance v1, Lcom/android/launcher4/PageIndicator$PageMarkerResources;

    .line 5183
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->indicator_lightbar:I

    .line 5184
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->indicator_normalbar:I

    .line 5182
    invoke-direct {v1, v4, v5}, Lcom/android/launcher4/PageIndicator$PageMarkerResources;-><init>(II)V

    .line 5193
    .end local v0    # "count":I
    :goto_0
    return-object v1

    .line 5186
    .restart local v0    # "count":I
    :cond_0
    new-instance v1, Lcom/android/launcher4/PageIndicator$PageMarkerResources;

    .line 5187
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v4

    iget v4, v4, Lshare/ResValue;->ic_pageindicator_current:I

    .line 5188
    const v5, 0x7f02054f

    .line 5186
    invoke-direct {v1, v4, v5}, Lcom/android/launcher4/PageIndicator$PageMarkerResources;-><init>(II)V

    goto :goto_0

    .line 5193
    .end local v0    # "count":I
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher4/SmoothPagedView;->getPageIndicatorMarker(I)Lcom/android/launcher4/PageIndicator$PageMarkerResources;

    move-result-object v1

    goto :goto_0
.end method

.method getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher4/CellLayout;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4875
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v1

    .line 4876
    .local v1, "layouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/CellLayout;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4881
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4876
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 4877
    .local v0, "layout":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    goto :goto_0
.end method

.method public getRestorePage()I
    .locals 2

    .prologue
    .line 4462
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->numCustomPages()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getScreenIdForPageIndex(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 840
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 843
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method getScreenOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScreenWithId(J)Lcom/android/launcher4/CellLayout;
    .locals 3
    .param p1, "screenId"    # J

    .prologue
    .line 820
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 821
    .local v0, "layout":Lcom/android/launcher4/CellLayout;
    return-object v0
.end method

.method protected getScrollMode()I
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x1

    return v0
.end method

.method getUniqueComponents(ZLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "stripDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4584
    .local p2, "duplicates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4587
    .local v3, "uniqueIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v1

    .line 4588
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 4592
    return-object v3

    .line 4589
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 4590
    .local v0, "cl":Lcom/android/launcher4/CellLayout;
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, p2, v4}, Lcom/android/launcher4/Workspace;->getUniqueIntents(Lcom/android/launcher4/CellLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 4588
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method getUniqueIntents(Lcom/android/launcher4/CellLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 14
    .param p1, "cl"    # Lcom/android/launcher4/CellLayout;
    .param p4, "stripDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher4/CellLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 4598
    .local p2, "uniqueIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .local p3, "duplicates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {p1}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 4600
    .local v3, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4601
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v3, :cond_0

    .line 4606
    const/4 v6, 0x0

    :goto_1
    if-lt v6, v3, :cond_1

    .line 4679
    return-void

    .line 4602
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 4603
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4601
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4607
    .end local v12    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 4609
    .restart local v12    # "v":Landroid/view/View;
    const/4 v7, 0x0

    .line 4610
    .local v7, "info":Lcom/android/launcher4/ItemInfo;
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 4611
    .local v11, "so":Ljava/lang/Object;
    instance-of v13, v11, Lcom/android/launcher4/ItemInfo;

    if-eqz v13, :cond_2

    move-object v7, v11

    .line 4612
    check-cast v7, Lcom/android/launcher4/ItemInfo;

    .line 4619
    instance-of v13, v7, Lcom/android/launcher4/ShortcutInfo;

    if-eqz v13, :cond_4

    move-object v10, v7

    .line 4620
    check-cast v10, Lcom/android/launcher4/ShortcutInfo;

    .line 4621
    .local v10, "si":Lcom/android/launcher4/ShortcutInfo;
    iget-object v13, v10, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 4623
    .local v2, "cn":Landroid/content/ComponentName;
    iget-object v13, v10, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 4629
    .local v4, "dataUri":Landroid/net/Uri;
    if-eqz v4, :cond_3

    sget-object v13, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v4, v13}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 4606
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v4    # "dataUri":Landroid/net/Uri;
    .end local v10    # "si":Lcom/android/launcher4/ShortcutInfo;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4633
    .restart local v2    # "cn":Landroid/content/ComponentName;
    .restart local v4    # "dataUri":Landroid/net/Uri;
    .restart local v10    # "si":Lcom/android/launcher4/ShortcutInfo;
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 4634
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4645
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v4    # "dataUri":Landroid/net/Uri;
    .end local v10    # "si":Lcom/android/launcher4/ShortcutInfo;
    :cond_4
    :goto_2
    instance-of v13, v12, Lcom/android/launcher4/FolderIcon;

    if-eqz v13, :cond_2

    move-object v5, v12

    .line 4646
    check-cast v5, Lcom/android/launcher4/FolderIcon;

    .line 4647
    .local v5, "fi":Lcom/android/launcher4/FolderIcon;
    invoke-virtual {v5}, Lcom/android/launcher4/FolderIcon;->getFolder()Lcom/android/launcher4/Folder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher4/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v8

    .line 4648
    .local v8, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_2

    .line 4649
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/android/launcher4/ShortcutInfo;

    if-eqz v13, :cond_5

    .line 4650
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher4/ShortcutInfo;

    .line 4651
    .restart local v10    # "si":Lcom/android/launcher4/ShortcutInfo;
    iget-object v13, v10, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 4653
    .restart local v2    # "cn":Landroid/content/ComponentName;
    iget-object v13, v10, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 4659
    .restart local v4    # "dataUri":Landroid/net/Uri;
    if-eqz v4, :cond_8

    sget-object v13, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v4, v13}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 4648
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v4    # "dataUri":Landroid/net/Uri;
    .end local v10    # "si":Lcom/android/launcher4/ShortcutInfo;
    :cond_5
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 4636
    .end local v5    # "fi":Lcom/android/launcher4/FolderIcon;
    .end local v8    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "j":I
    .restart local v2    # "cn":Landroid/content/ComponentName;
    .restart local v4    # "dataUri":Landroid/net/Uri;
    .restart local v10    # "si":Lcom/android/launcher4/ShortcutInfo;
    :cond_6
    if-eqz p4, :cond_7

    .line 4637
    invoke-virtual {p1, v12}, Lcom/android/launcher4/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 4638
    iget-object v13, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v13, v10}, Lcom/android/launcher4/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;)V

    .line 4640
    :cond_7
    if-eqz p3, :cond_4

    .line 4641
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4663
    .restart local v5    # "fi":Lcom/android/launcher4/FolderIcon;
    .restart local v8    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v9    # "j":I
    :cond_8
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 4664
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4666
    :cond_9
    if-eqz p4, :cond_a

    .line 4667
    invoke-virtual {v5}, Lcom/android/launcher4/FolderIcon;->getFolderInfo()Lcom/android/launcher4/FolderInfo;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/android/launcher4/FolderInfo;->remove(Lcom/android/launcher4/ShortcutInfo;)V

    .line 4668
    iget-object v13, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v13, v10}, Lcom/android/launcher4/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;)V

    .line 4671
    :cond_a
    if-eqz p3, :cond_5

    .line 4672
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 7
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 4936
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v1

    .line 4937
    .local v1, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 4946
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 4937
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/ShortcutAndWidgetContainer;

    .line 4938
    .local v4, "layout":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    invoke-virtual {v4}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 4939
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 4940
    invoke-virtual {v4, v3}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4941
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p1, :cond_1

    .line 4939
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getViewLocationRelativeToSelf(Landroid/view/View;[I)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "location"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3470
    invoke-virtual {p0, p2}, Lcom/android/launcher4/Workspace;->getLocationInWindow([I)V

    .line 3471
    aget v2, p2, v5

    .line 3472
    .local v2, "x":I
    aget v3, p2, v6

    .line 3474
    .local v3, "y":I
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3475
    aget v0, p2, v5

    .line 3476
    .local v0, "vX":I
    aget v1, p2, v6

    .line 3478
    .local v1, "vY":I
    sub-int v4, v0, v2

    aput v4, p2, v5

    .line 3479
    sub-int v4, v1, v3

    aput v4, p2, v6

    .line 3480
    return-void
.end method

.method getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4889
    .local v0, "layouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/CellLayout;>;"
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v2

    .line 4890
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "screen":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 4893
    iget-object v3, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher4/Launcher;->getHotseat()Landroid/view/View;

    .line 4896
    return-object v0

    .line 4891
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4890
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hasCustomContent()Z
    .locals 4

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/android/launcher4/Workspace;->apps_customepage_count:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    .line 1623
    sget v1, Lcom/android/launcher4/Workspace;->apps_customepage_count:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x12d

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1622
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtraEmptyScreen()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 789
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v0

    .line 790
    .local v0, "nScreens":I
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->numCustomPages()I

    move-result v2

    sub-int/2addr v0, v2

    .line 791
    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v4, -0xc9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-le v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasMyCustomContent()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1627
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v2, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1628
    const v3, 0x7f0b0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    .line 1629
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x12e

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 1627
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method hideCustomContentIfNecessary()V
    .locals 4

    .prologue
    .line 2738
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v2, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2739
    .local v0, "hide":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2740
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v2, -0x12d

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/CellLayout;

    .line 2741
    const/4 v2, 0x4

    .line 2740
    invoke-virtual {v1, v2}, Lcom/android/launcher4/CellLayout;->setVisibility(I)V

    .line 2743
    :cond_0
    return-void

    .line 2738
    .end local v0    # "hide":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hideOutlines()V
    .locals 4

    .prologue
    .line 1493
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher4/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2

    .line 1494
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1496
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1497
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1499
    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 1498
    invoke-static {p0, v0, v1}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    .line 1500
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    .line 1501
    const-wide/16 v2, 0x177

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1502
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    .line 1503
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1504
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1506
    :cond_2
    return-void
.end method

.method protected initWorkspace()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 432
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 433
    .local v1, "context":Landroid/content/Context;
    iget v5, p0, Lcom/android/launcher4/Workspace;->mDefaultPage:I

    iput v5, p0, Lcom/android/launcher4/Workspace;->mCurrentPage:I

    .line 434
    iget v5, p0, Lcom/android/launcher4/Workspace;->mCurrentPage:I

    invoke-static {v5}, Lcom/android/launcher4/Launcher;->setScreen(I)V

    .line 435
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 436
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v3

    .line 437
    .local v3, "grid":Lcom/android/launcher4/DeviceProfile;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getIconCache()Lcom/android/launcher4/IconCache;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher4/Workspace;->mIconCache:Lcom/android/launcher4/IconCache;

    .line 438
    invoke-virtual {p0, v6}, Lcom/android/launcher4/Workspace;->setWillNotDraw(Z)V

    .line 439
    invoke-virtual {p0, v6}, Lcom/android/launcher4/Workspace;->setClipChildren(Z)V

    .line 440
    invoke-virtual {p0, v6}, Lcom/android/launcher4/Workspace;->setClipToPadding(Z)V

    .line 441
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher4/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 447
    iget v5, p0, Lcom/android/launcher4/Workspace;->mOverviewModeShrinkFactor:F

    const v6, 0x3e4ccccd    # 0.2f

    sub-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/android/launcher4/Workspace;->setMinScale(F)V

    .line 448
    invoke-direct {p0}, Lcom/android/launcher4/Workspace;->setupLayoutTransition()V

    .line 450
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 452
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f020006

    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher4/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    new-instance v5, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v5, p0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher4/Workspace;)V

    iput-object v5, p0, Lcom/android/launcher4/Workspace;->mWallpaperOffset:Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;

    .line 458
    iget-object v5, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher4/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 459
    .local v2, "display":Landroid/view/Display;
    iget-object v5, p0, Lcom/android/launcher4/Workspace;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v2, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 461
    const v5, 0x3f0ccccd    # 0.55f

    iget v6, v3, Lcom/android/launcher4/DeviceProfile;->iconSizePx:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/android/launcher4/Workspace;->mMaxDistanceForFolderCreation:F

    .line 462
    const/high16 v5, 0x43fa0000    # 500.0f

    iget v6, p0, Lcom/android/launcher4/Workspace;->mDensity:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/android/launcher4/Workspace;->mFlingThresholdVelocity:I

    .line 463
    return-void

    .line 453
    .end local v2    # "display":Landroid/view/Display;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public insertNewWorkspaceScreen(J)J
    .locals 3
    .param p1, "screenId"    # J

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher4/Workspace;->insertNewWorkspaceScreen(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertNewWorkspaceScreen(JI)J
    .locals 5
    .param p1, "screenId"    # J
    .param p3, "insertIndex"    # I

    .prologue
    .line 574
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    :goto_0
    return-wide p1

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher4/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 581
    const v2, 0x7f04003b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 580
    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 583
    .local v0, "newScreen":Lcom/android/launcher4/CellLayout;
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 584
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->setSoundEffectsEnabled(Z)V

    .line 586
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 588
    invoke-virtual {p0, v0, p3}, Lcom/android/launcher4/Workspace;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public insertNewWorkspaceScreenBeforeEmptyScreen(J)J
    .locals 5
    .param p1, "screenId"    # J

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0xc9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 563
    .local v0, "insertIndex":I
    if-gez v0, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 566
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher4/Workspace;->insertNewWorkspaceScreen(JI)J

    move-result-wide v2

    return-wide v2
.end method

.method isDrawingBackgroundGradient()Z
    .locals 2

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher4/Workspace;->mBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher4/Workspace;->mDrawBackground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 4747
    const/4 v0, 0x1

    return v0
.end method

.method public isFinishedSwitchingState()Z
    .locals 2

    .prologue
    .line 1048
    iget-boolean v0, p0, Lcom/android/launcher4/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher4/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInOverviewMode()Z
    .locals 2

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v1, Lcom/android/launcher4/Workspace$State;->OVERVIEW:Lcom/android/launcher4/Workspace$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnOrMovingToCustomContent()Z
    .locals 1

    .prologue
    .line 1637
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getNextPage()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPointInSelfOverHotseat(IILandroid/graphics/Rect;)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3678
    if-nez p3, :cond_0

    .line 3679
    new-instance p3, Landroid/graphics/Rect;

    .end local p3    # "r":Landroid/graphics/Rect;
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 3681
    .restart local p3    # "r":Landroid/graphics/Rect;
    :cond_0
    iget-object v4, p0, Lcom/android/launcher4/Workspace;->mTempPt:[I

    aput p1, v4, v3

    .line 3682
    iget-object v4, p0, Lcom/android/launcher4/Workspace;->mTempPt:[I

    aput p2, v4, v2

    .line 3683
    iget-object v4, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v4

    .line 3684
    iget-object v5, p0, Lcom/android/launcher4/Workspace;->mTempPt:[I

    .line 3683
    invoke-virtual {v4, p0, v5, v2}, Lcom/android/launcher4/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    .line 3686
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 3687
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 3688
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    invoke-virtual {v1}, Lcom/android/launcher4/DeviceProfile;->getHotseatRect()Landroid/graphics/Rect;

    move-result-object p3

    .line 3689
    iget-object v4, p0, Lcom/android/launcher4/Workspace;->mTempPt:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcom/android/launcher4/Workspace;->mTempPt:[I

    aget v5, v5, v2

    invoke-virtual {p3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3692
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public isSmall()Z
    .locals 2

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v1, Lcom/android/launcher4/Workspace$State;->SMALL:Lcom/android/launcher4/Workspace$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v1, Lcom/android/launcher4/Workspace$State;->SPRING_LOADED:Lcom/android/launcher4/Workspace$State;

    if-eq v0, v1, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v1, Lcom/android/launcher4/Workspace$State;->OVERVIEW:Lcom/android/launcher4/Workspace$State;

    if-eq v0, v1, :cond_0

    .line 1858
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSwitchingState()Z
    .locals 1

    .prologue
    .line 1040
    iget-boolean v0, p0, Lcom/android/launcher4/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method isTouchActive()Z
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/android/launcher4/Workspace;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mapPointFromChildToSelf(Landroid/view/View;[F)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F

    .prologue
    .line 3714
    const/4 v0, 0x0

    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 3715
    const/4 v0, 0x1

    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 3716
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F
    .param p3, "cachedInverseMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3673
    aget v0, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 3674
    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 3675
    return-void
.end method

.method mapPointFromSelfToHotseatLayout(Lcom/android/launcher4/Hotseat;[F)V
    .locals 5
    .param p1, "hotseat"    # Lcom/android/launcher4/Hotseat;
    .param p2, "xy"    # [F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3696
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mTempPt:[I

    aget v1, p2, v4

    float-to-int v1, v1

    aput v1, v0, v4

    .line 3697
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mTempPt:[I

    aget v1, p2, v3

    float-to-int v1, v1

    aput v1, v0, v3

    .line 3698
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v0

    .line 3699
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mTempPt:[I

    .line 3698
    invoke-virtual {v0, p0, v1, v3}, Lcom/android/launcher4/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    .line 3700
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v0

    .line 3701
    invoke-virtual {p1}, Lcom/android/launcher4/Hotseat;->getLayout()Lcom/android/launcher4/CellLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mTempPt:[I

    .line 3700
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/DragLayer;->mapCoordInSelfToDescendent(Landroid/view/View;[I)F

    .line 3703
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mTempPt:[I

    aget v0, v0, v4

    int-to-float v0, v0

    aput v0, p2, v4

    .line 3704
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mTempPt:[I

    aget v0, v0, v3

    int-to-float v0, v0

    aput v0, p2, v3

    .line 3705
    return-void
.end method

.method moveToCustomContentScreen(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 5143
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5144
    const-wide/16 v2, -0x12d

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher4/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    .line 5145
    .local v0, "ccIndex":I
    if-eqz p1, :cond_1

    .line 5146
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->snapToPage(I)V

    .line 5150
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5151
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 5152
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 5156
    .end local v0    # "ccIndex":I
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    return-void

    .line 5148
    .restart local v0    # "ccIndex":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method moveToCustomScreen(ZI)V
    .locals 4
    .param p1, "animate"    # Z
    .param p2, "screenId"    # I

    .prologue
    .line 5159
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5160
    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher4/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    .line 5161
    .local v0, "ccIndex":I
    if-eqz p1, :cond_1

    .line 5162
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->snapToPage(I)V

    .line 5166
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5167
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 5168
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 5171
    .end local v0    # "ccIndex":I
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    return-void

    .line 5164
    .restart local v0    # "ccIndex":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method moveToDefaultScreen(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 5139
    iget v0, p0, Lcom/android/launcher4/Workspace;->mDefaultPage:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher4/Workspace;->moveToScreen(IZ)V

    .line 5140
    return-void
.end method

.method protected notifyPageSwitchListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1241
    invoke-super {p0}, Lcom/android/launcher4/SmoothPagedView;->notifyPageSwitchListener()V

    .line 1242
    iget v0, p0, Lcom/android/launcher4/Workspace;->mCurrentPage:I

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->setScreen(I)V

    .line 1244
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getNextPage()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher4/Workspace;->mCustomContentShowing:Z

    if-nez v0, :cond_2

    .line 1245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Workspace;->mCustomContentShowing:Z

    .line 1246
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mCustomContentCallbacks:Lcom/android/launcher4/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mCustomContentCallbacks:Lcom/android/launcher4/Launcher$CustomContentCallbacks;

    invoke-interface {v0}, Lcom/android/launcher4/Launcher$CustomContentCallbacks;->onShow()V

    .line 1248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher4/Workspace;->mCustomContentShowTime:J

    .line 1249
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher4/Launcher;->updateVoiceButtonProxyVisible(Z)V

    .line 1260
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1261
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v0

    .line 1262
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v1

    .line 1261
    invoke-virtual {v0, v1}, Lcom/android/launcher4/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1264
    :cond_1
    return-void

    .line 1251
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getNextPage()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    iget-boolean v0, p0, Lcom/android/launcher4/Workspace;->mCustomContentShowing:Z

    if-eqz v0, :cond_0

    .line 1253
    iput-boolean v2, p0, Lcom/android/launcher4/Workspace;->mCustomContentShowing:Z

    .line 1254
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mCustomContentCallbacks:Lcom/android/launcher4/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mCustomContentCallbacks:Lcom/android/launcher4/Launcher$CustomContentCallbacks;

    invoke-interface {v0}, Lcom/android/launcher4/Launcher$CustomContentCallbacks;->onHide()V

    .line 1256
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->resetQSBScroll()V

    .line 1257
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher4/Launcher;->updateVoiceButtonProxyVisible(Z)V

    goto :goto_0
.end method

.method public numCustomPages()I
    .locals 1

    .prologue
    .line 1633
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/launcher4/Workspace;->apps_customepage_count:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1763
    invoke-super {p0}, Lcom/android/launcher4/SmoothPagedView;->onAttachedToWindow()V

    .line 1764
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1765
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->computeScroll()V

    .line 1766
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragController:Lcom/android/launcher4/DragController;

    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 1767
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 493
    instance-of v1, p2, Lcom/android/launcher4/CellLayout;

    if-nez v1, :cond_0

    .line 494
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 495
    const-string v2, "A Workspace can only have CellLayout children."

    .line 494
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p2

    .line 497
    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 498
    .local v0, "cl":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v0, p0}, Lcom/android/launcher4/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 499
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->setClickable(Z)V

    .line 500
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->setImportantForAccessibility(I)V

    .line 501
    invoke-super {p0, p1, p2}, Lcom/android/launcher4/SmoothPagedView;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 502
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1770
    invoke-super {p0}, Lcom/android/launcher4/SmoothPagedView;->onDetachedFromWindow()V

    .line 1771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1772
    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 414
    iput-boolean v1, p0, Lcom/android/launcher4/Workspace;->mIsDragOccuring:Z

    .line 415
    invoke-direct {p0, v1}, Lcom/android/launcher4/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 416
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->unlockScreenOrientation(Z)V

    .line 420
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/UninstallShortcutReceiver;->disableAndFlushUninstallQueue(Landroid/content/Context;)V

    .line 423
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->removeExtraEmptyScreen()V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/Workspace;->mDragSourceInternal:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    .line 425
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->onInteractionEnd()V

    .line 426
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    const/4 v2, 0x0

    .line 3483
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mDragEnforcer:Lcom/android/launcher4/DropTarget$DragEnforcer;

    invoke-virtual {v1}, Lcom/android/launcher4/DropTarget$DragEnforcer;->onDragEnter()V

    .line 3484
    iput-boolean v2, p0, Lcom/android/launcher4/Workspace;->mCreateUserFolderOnDrop:Z

    .line 3485
    iput-boolean v2, p0, Lcom/android/launcher4/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 3487
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher4/Workspace;->mDropToLayout:Lcom/android/launcher4/CellLayout;

    .line 3488
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getCurrentDropLayout()Lcom/android/launcher4/CellLayout;

    move-result-object v0

    .line 3489
    .local v0, "layout":Lcom/android/launcher4/CellLayout;
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setCurrentDropLayout(Lcom/android/launcher4/CellLayout;)V

    .line 3490
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher4/CellLayout;)V

    .line 3495
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherAppState;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3496
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->showOutlines()V

    .line 3498
    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 4
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3545
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragEnforcer:Lcom/android/launcher4/DropTarget$DragEnforcer;

    invoke-virtual {v0}, Lcom/android/launcher4/DropTarget$DragEnforcer;->onDragExit()V

    .line 3550
    iget-boolean v0, p0, Lcom/android/launcher4/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_3

    .line 3551
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3555
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    iput-object v0, p0, Lcom/android/launcher4/Workspace;->mDropToLayout:Lcom/android/launcher4/CellLayout;

    .line 3563
    :goto_0
    iget v0, p0, Lcom/android/launcher4/Workspace;->mDragMode:I

    if-ne v0, v2, :cond_4

    .line 3564
    iput-boolean v2, p0, Lcom/android/launcher4/Workspace;->mCreateUserFolderOnDrop:Z

    .line 3570
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher4/Workspace;->onResetScrollArea()V

    .line 3571
    invoke-virtual {p0, v3}, Lcom/android/launcher4/Workspace;->setCurrentDropLayout(Lcom/android/launcher4/CellLayout;)V

    .line 3572
    invoke-virtual {p0, v3}, Lcom/android/launcher4/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher4/CellLayout;)V

    .line 3574
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mSpringLoadedDragController:Lcom/android/launcher4/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher4/SpringLoadedDragController;->cancel()V

    .line 3576
    iget-boolean v0, p0, Lcom/android/launcher4/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_1

    .line 3577
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hideOutlines()V

    .line 3579
    :cond_1
    return-void

    .line 3557
    :cond_2
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragOverlappingLayout:Lcom/android/launcher4/CellLayout;

    iput-object v0, p0, Lcom/android/launcher4/Workspace;->mDropToLayout:Lcom/android/launcher4/CellLayout;

    goto :goto_0

    .line 3560
    :cond_3
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    iput-object v0, p0, Lcom/android/launcher4/Workspace;->mDropToLayout:Lcom/android/launcher4/CellLayout;

    goto :goto_0

    .line 3565
    :cond_4
    iget v0, p0, Lcom/android/launcher4/Workspace;->mDragMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3566
    iput-boolean v2, p0, Lcom/android/launcher4/Workspace;->mAddToExistingFolderOnDrop:Z

    goto :goto_1
.end method

.method public onDragOver(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 37
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 3835
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher4/Workspace;->mInScrollArea:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher4/Workspace;->mIsSwitchingState:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v4, Lcom/android/launcher4/Workspace$State;->SMALL:Lcom/android/launcher4/Workspace$State;

    if-ne v3, v4, :cond_1

    .line 3963
    :cond_0
    :goto_0
    return-void

    .line 3838
    :cond_1
    new-instance v34, Landroid/graphics/Rect;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Rect;-><init>()V

    .line 3839
    .local v34, "r":Landroid/graphics/Rect;
    const/16 v32, 0x0

    .line 3840
    .local v32, "layout":Lcom/android/launcher4/CellLayout;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/launcher4/ItemInfo;

    .line 3843
    .local v31, "item":Lcom/android/launcher4/ItemInfo;
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    if-ltz v3, :cond_2

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    if-gez v3, :cond_3

    .line 3844
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Improper spans found"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3845
    :cond_3
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher4/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher4/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher4/DropTarget$DragObject;->xOffset:I

    .line 3846
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher4/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v2, p0

    .line 3845
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher4/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher4/DragView;[F)[F

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    .line 3848
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    if-nez v3, :cond_b

    const/16 v18, 0x0

    .line 3850
    .local v18, "child":Landroid/view/View;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->isSmall()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3851
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher4/Launcher;->getHotseat()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher4/Workspace;->isExternalDragWidget(Lcom/android/launcher4/DropTarget$DragObject;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3852
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher4/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher4/DropTarget$DragObject;->y:I

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/launcher4/Workspace;->isPointInSelfOverHotseat(IILandroid/graphics/Rect;)Z

    .line 3856
    :cond_4
    if-nez v32, :cond_5

    .line 3857
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher4/DropTarget$DragObject;->x:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher4/DropTarget$DragObject;->y:I

    int-to-float v7, v7

    .line 3858
    const/4 v8, 0x0

    .line 3857
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v7, v8}, Lcom/android/launcher4/Workspace;->findMatchingPageForDragOver(Lcom/android/launcher4/DragView;FFZ)Lcom/android/launcher4/CellLayout;

    move-result-object v32

    .line 3860
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    move-object/from16 v0, v32

    if-eq v0, v3, :cond_6

    .line 3861
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->setCurrentDropLayout(Lcom/android/launcher4/CellLayout;)V

    .line 3862
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher4/CellLayout;)V

    .line 3864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v4, Lcom/android/launcher4/Workspace$State;->SPRING_LOADED:Lcom/android/launcher4/Workspace$State;

    if-ne v3, v4, :cond_c

    const/16 v30, 0x1

    .line 3865
    .local v30, "isInSpringLoadedMode":Z
    :goto_2
    if-eqz v30, :cond_6

    .line 3866
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/launcher4/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mSpringLoadedDragController:Lcom/android/launcher4/SpringLoadedDragController;

    invoke-virtual {v3}, Lcom/android/launcher4/SpringLoadedDragController;->cancel()V

    .line 3891
    .end local v30    # "isInSpringLoadedMode":Z
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    if-eqz v3, :cond_0

    .line 3893
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v3, v4}, Lcom/android/launcher4/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    .line 3898
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    .line 3897
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v7}, Lcom/android/launcher4/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 3901
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/launcher4/ItemInfo;

    .line 3903
    .local v29, "info":Lcom/android/launcher4/ItemInfo;
    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 3904
    .local v5, "minSpanX":I
    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 3905
    .local v6, "minSpanY":I
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/launcher4/ItemInfo;->minSpanX:I

    if-lez v3, :cond_8

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/launcher4/ItemInfo;->minSpanY:I

    if-lez v3, :cond_8

    .line 3906
    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/launcher4/ItemInfo;->minSpanX:I

    .line 3907
    move-object/from16 v0, v31

    iget v6, v0, Lcom/android/launcher4/ItemInfo;->minSpanY:I

    .line 3910
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v3, v3

    .line 3911
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x1

    aget v4, v4, v7

    float-to-int v4, v4

    .line 3912
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    .line 3910
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher4/Workspace;->findNearestArea(IIIILcom/android/launcher4/CellLayout;[I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 3913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v4, 0x0

    aget v35, v3, v4

    .line 3914
    .local v35, "reorderX":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v4, 0x1

    aget v36, v3, v4

    .line 3916
    .local v36, "reorderY":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v4, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher4/Workspace;->setCurrentDropOverCell(II)V

    .line 3918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    .line 3919
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    .line 3920
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 3918
    invoke-virtual {v3, v4, v7, v8}, Lcom/android/launcher4/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v11

    .line 3922
    .local v11, "targetCellDistance":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    .line 3923
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    .line 3922
    invoke-virtual {v3, v4, v7}, Lcom/android/launcher4/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v12

    .line 3925
    .local v12, "dragOverView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    move-object/from16 v7, p0

    move-object/from16 v8, v29

    invoke-direct/range {v7 .. v12}, Lcom/android/launcher4/Workspace;->manageFolderFeedback(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/CellLayout;[IFLandroid/view/View;)V

    .line 3928
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    .line 3930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v14, v3

    .line 3931
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-int v15, v3

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    move/from16 v16, v0

    .line 3932
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    move-object/from16 v19, v0

    .line 3929
    invoke-virtual/range {v13 .. v19}, Lcom/android/launcher4/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v33

    .line 3934
    .local v33, "nearestDropOccupied":Z
    if-nez v33, :cond_11

    .line 3935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    .line 3936
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v0, v3

    move/from16 v20, v0

    .line 3937
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-int v0, v3

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v4, 0x0

    aget v22, v3, v4

    .line 3938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v4, 0x1

    aget v23, v3, v4

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    move/from16 v24, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    move/from16 v25, v0

    const/16 v26, 0x0

    .line 3939
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    invoke-virtual {v3}, Lcom/android/launcher4/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v27

    .line 3940
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    invoke-virtual {v3}, Lcom/android/launcher4/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v28

    .line 3935
    invoke-virtual/range {v17 .. v28}, Lcom/android/launcher4/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 3955
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/Workspace;->mDragMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    .line 3956
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/Workspace;->mDragMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    .line 3957
    if-nez v33, :cond_0

    .line 3958
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    if-eqz v3, :cond_0

    .line 3959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher4/CellLayout;->revertTempState()V

    goto/16 :goto_0

    .line 3848
    .end local v5    # "minSpanX":I
    .end local v6    # "minSpanY":I
    .end local v11    # "targetCellDistance":F
    .end local v12    # "dragOverView":Landroid/view/View;
    .end local v18    # "child":Landroid/view/View;
    .end local v29    # "info":Lcom/android/launcher4/ItemInfo;
    .end local v33    # "nearestDropOccupied":Z
    .end local v35    # "reorderX":I
    .end local v36    # "reorderY":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-object v0, v3, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v18, v0

    goto/16 :goto_1

    .line 3864
    .restart local v18    # "child":Landroid/view/View;
    :cond_c
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 3869
    .restart local v30    # "isInSpringLoadedMode":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mSpringLoadedDragController:Lcom/android/launcher4/SpringLoadedDragController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v3, v4}, Lcom/android/launcher4/SpringLoadedDragController;->setAlarm(Lcom/android/launcher4/CellLayout;)V

    goto/16 :goto_3

    .line 3876
    .end local v30    # "isInSpringLoadedMode":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher4/Launcher;->getHotseat()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher4/Workspace;->isDragWidget(Lcom/android/launcher4/DropTarget$DragObject;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 3877
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher4/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher4/DropTarget$DragObject;->y:I

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/launcher4/Workspace;->isPointInSelfOverHotseat(IILandroid/graphics/Rect;)Z

    .line 3881
    :cond_f
    if-nez v32, :cond_10

    .line 3882
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getCurrentDropLayout()Lcom/android/launcher4/CellLayout;

    move-result-object v32

    .line 3884
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    move-object/from16 v0, v32

    if-eq v0, v3, :cond_6

    .line 3885
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->setCurrentDropLayout(Lcom/android/launcher4/CellLayout;)V

    .line 3886
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher4/CellLayout;)V

    goto/16 :goto_3

    .line 3941
    .restart local v5    # "minSpanX":I
    .restart local v6    # "minSpanY":I
    .restart local v11    # "targetCellDistance":F
    .restart local v12    # "dragOverView":Landroid/view/View;
    .restart local v29    # "info":Lcom/android/launcher4/ItemInfo;
    .restart local v33    # "nearestDropOccupied":Z
    .restart local v35    # "reorderX":I
    .restart local v36    # "reorderY":I
    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/Workspace;->mDragMode:I

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/Workspace;->mDragMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    .line 3942
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mReorderAlarm:Lcom/android/launcher4/Alarm;

    invoke-virtual {v3}, Lcom/android/launcher4/Alarm;->alarmPending()Z

    move-result v3

    if-nez v3, :cond_9

    .line 3943
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/Workspace;->mLastReorderX:I

    move/from16 v0, v35

    if-ne v3, v0, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/Workspace;->mLastReorderY:I

    move/from16 v0, v36

    if-eq v3, v0, :cond_9

    .line 3948
    :cond_13
    new-instance v2, Lcom/android/launcher4/Workspace$ReorderAlarmListener;

    .line 3949
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, v31

    iget v7, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 3950
    move-object/from16 v0, v31

    iget v8, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    move-object/from16 v3, p0

    move-object/from16 v10, v18

    .line 3948
    invoke-direct/range {v2 .. v10}, Lcom/android/launcher4/Workspace$ReorderAlarmListener;-><init>(Lcom/android/launcher4/Workspace;[FIIIILcom/android/launcher4/DragView;Landroid/view/View;)V

    .line 3951
    .local v2, "listener":Lcom/android/launcher4/Workspace$ReorderAlarmListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mReorderAlarm:Lcom/android/launcher4/Alarm;

    invoke-virtual {v3, v2}, Lcom/android/launcher4/Alarm;->setOnAlarmListener(Lcom/android/launcher4/OnAlarmListener;)V

    .line 3952
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mReorderAlarm:Lcom/android/launcher4/Alarm;

    const-wide/16 v8, 0xfa

    invoke-virtual {v3, v8, v9}, Lcom/android/launcher4/Alarm;->setAlarm(J)V

    goto/16 :goto_4
.end method

.method public onDragStart(Lcom/android/launcher4/DragSource;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "source"    # Lcom/android/launcher4/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Workspace;->mIsDragOccuring:Z

    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher4/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->lockScreenOrientation()V

    .line 397
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->onInteractionBegin()V

    .line 398
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/launcher4/Workspace;->setChildrenBackgroundAlphaMultipliers(F)V

    .line 401
    invoke-static {}, Lcom/android/launcher4/InstallShortcutReceiver;->enableInstallQueue()V

    .line 402
    invoke-static {}, Lcom/android/launcher4/UninstallShortcutReceiver;->enableUninstallQueue()V

    .line 403
    new-instance v0, Lcom/android/launcher4/Workspace$2;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Workspace$2;-><init>(Lcom/android/launcher4/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 411
    return-void
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2048
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 2051
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher4/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2052
    return-void
.end method

.method public onDragStartedWithItem(Lcom/android/launcher4/PendingAddItemInfo;Landroid/graphics/Bitmap;Z)V
    .locals 8
    .param p1, "info"    # Lcom/android/launcher4/PendingAddItemInfo;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "clipAlpha"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2056
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 2058
    .local v2, "canvas":Landroid/graphics/Canvas;
    iget v0, p1, Lcom/android/launcher4/PendingAddItemInfo;->spanX:I

    iget v1, p1, Lcom/android/launcher4/PendingAddItemInfo;->spanY:I

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/android/launcher4/Workspace;->estimateItemSize(IILcom/android/launcher4/ItemInfo;Z)[I

    move-result-object v7

    .line 2061
    .local v7, "size":[I
    const/4 v3, 0x2

    .line 2062
    aget v4, v7, v4

    const/4 v0, 0x1

    aget v5, v7, v0

    move-object v0, p0

    move-object v1, p2

    move v6, p3

    .line 2061
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher4/Workspace;->createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2063
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1802
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher4/Workspace;->mBackgroundAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher4/Workspace;->mDrawBackground:Z

    if-eqz v1, :cond_0

    .line 1803
    iget v1, p0, Lcom/android/launcher4/Workspace;->mBackgroundAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1804
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1805
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getScrollX()I

    move-result v4

    .line 1806
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getMeasuredHeight()I

    move-result v5

    .line 1805
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1807
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1810
    .end local v0    # "alpha":I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher4/SmoothPagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1813
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mBindPages:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1814
    return-void
.end method

.method public onDrop(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 68
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 3237
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher4/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/launcher4/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/launcher4/DropTarget$DragObject;->xOffset:I

    .line 3238
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher4/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v6, p0

    .line 3237
    invoke-direct/range {v6 .. v12}, Lcom/android/launcher4/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher4/DragView;[F)[F

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    .line 3240
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher4/Workspace;->mDropToLayout:Lcom/android/launcher4/CellLayout;

    .line 3243
    .local v9, "dropTargetLayout":Lcom/android/launcher4/CellLayout;
    if-eqz v9, :cond_0

    .line 3244
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v6, v9}, Lcom/android/launcher4/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3249
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    .line 3248
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v6, v8}, Lcom/android/launcher4/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 3253
    :cond_0
    const/16 v67, -0x1

    .line 3254
    .local v67, "snapScreen":I
    const/16 v65, 0x0

    .line 3255
    .local v65, "resizeOnDrop":Z
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    move-object/from16 v0, p0

    if-eq v6, v0, :cond_2

    .line 3256
    const/4 v6, 0x2

    new-array v7, v6, [I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v10, 0x0

    aget v8, v8, v10

    float-to-int v8, v8

    aput v8, v7, v6

    const/4 v6, 0x1

    .line 3257
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v10, 0x1

    aget v8, v8, v10

    float-to-int v8, v8

    aput v8, v7, v6

    .line 3258
    .local v7, "touchXY":[I
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object/from16 v11, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher4/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher4/CellLayout;ZLcom/android/launcher4/DropTarget$DragObject;)V

    .line 3445
    .end local v7    # "touchXY":[I
    :cond_1
    :goto_0
    return-void

    .line 3259
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    if-eqz v6, :cond_1

    .line 3260
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-object v0, v6, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v17, v0

    .line 3262
    .local v17, "cell":Landroid/view/View;
    const/16 v66, 0x0

    .line 3263
    .local v66, "resizeRunnable":Ljava/lang/Runnable;
    if-eqz v9, :cond_10

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/android/launcher4/DropTarget$DragObject;->cancelled:Z

    if-nez v6, :cond_10

    .line 3265
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher4/CellLayout;

    move-result-object v6

    if-eq v6, v9, :cond_3

    const/16 v58, 0x1

    .line 3266
    .local v58, "hasMovedLayouts":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 3267
    invoke-virtual {v6, v9}, Lcom/android/launcher4/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v57

    .line 3268
    .local v57, "hasMovedIntoHotseat":Z
    if-eqz v57, :cond_4

    const/16 v6, -0x65

    :goto_2
    int-to-long v0, v6

    move-wide/from16 v18, v0

    .line 3270
    .local v18, "container":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v8, 0x0

    aget v6, v6, v8

    if-gez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-wide v0, v6, Lcom/android/launcher4/CellLayout$CellInfo;->screenId:J

    move-wide/from16 v38, v0

    .line 3272
    .local v38, "screenId":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget v13, v6, Lcom/android/launcher4/CellLayout$CellInfo;->spanX:I

    .line 3273
    .local v13, "spanX":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget v14, v6, Lcom/android/launcher4/CellLayout$CellInfo;->spanY:I

    .line 3278
    .local v14, "spanY":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    float-to-int v11, v6

    .line 3279
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v6, v6, v8

    float-to-int v12, v6

    .line 3280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    move-object v15, v9

    .line 3278
    invoke-direct/range {v10 .. v16}, Lcom/android/launcher4/Workspace;->findNearestArea(IIIILcom/android/launcher4/CellLayout;[I)[I

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 3282
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v10, 0x1

    aget v8, v8, v10

    .line 3283
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 3281
    invoke-virtual {v9, v6, v8, v10}, Lcom/android/launcher4/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v22

    .line 3288
    .local v22, "distance":F
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher4/Workspace;->mInScrollArea:Z

    if-nez v6, :cond_8

    .line 3290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    move-object/from16 v21, v0

    const/16 v23, 0x0

    .line 3291
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v16, p0

    move-object/from16 v20, v9

    .line 3289
    invoke-virtual/range {v16 .. v25}, Lcom/android/launcher4/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher4/CellLayout;[IFZLcom/android/launcher4/DragView;Ljava/lang/Runnable;)Z

    move-result v6

    .line 3291
    if-eqz v6, :cond_8

    .line 3292
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->stripEmptyScreens()V

    goto/16 :goto_0

    .line 3265
    .end local v13    # "spanX":I
    .end local v14    # "spanY":I
    .end local v18    # "container":J
    .end local v22    # "distance":F
    .end local v38    # "screenId":J
    .end local v57    # "hasMovedIntoHotseat":Z
    .end local v58    # "hasMovedLayouts":Z
    :cond_3
    const/16 v58, 0x0

    goto/16 :goto_1

    .line 3269
    .restart local v57    # "hasMovedIntoHotseat":Z
    .restart local v58    # "hasMovedLayouts":Z
    :cond_4
    const/16 v6, -0x64

    goto/16 :goto_2

    .line 3271
    .restart local v18    # "container":J
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher4/Workspace;->getIdForScreen(Lcom/android/launcher4/CellLayout;)J

    move-result-wide v38

    goto/16 :goto_3

    .line 3272
    .restart local v38    # "screenId":J
    :cond_6
    const/4 v13, 0x1

    goto :goto_4

    .line 3273
    .restart local v13    # "spanX":I
    :cond_7
    const/4 v14, 0x1

    goto :goto_5

    .line 3297
    .restart local v14    # "spanY":I
    .restart local v22    # "distance":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    move-object/from16 v26, v0

    const/16 v29, 0x0

    move-object/from16 v23, p0

    move-object/from16 v24, v17

    move-object/from16 v25, v9

    move/from16 v27, v22

    move-object/from16 v28, p1

    .line 3296
    invoke-virtual/range {v23 .. v29}, Lcom/android/launcher4/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher4/CellLayout;[IFLcom/android/launcher4/DropTarget$DragObject;Z)Z

    move-result v6

    .line 3297
    if-eqz v6, :cond_9

    .line 3298
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->stripEmptyScreens()V

    goto/16 :goto_0

    .line 3305
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Lcom/android/launcher4/ItemInfo;

    .line 3306
    .local v61, "item":Lcom/android/launcher4/ItemInfo;
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    move/from16 v26, v0

    .line 3307
    .local v26, "minSpanX":I
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    move/from16 v27, v0

    .line 3308
    .local v27, "minSpanY":I
    move-object/from16 v0, v61

    iget v6, v0, Lcom/android/launcher4/ItemInfo;->minSpanX:I

    if-lez v6, :cond_a

    move-object/from16 v0, v61

    iget v6, v0, Lcom/android/launcher4/ItemInfo;->minSpanY:I

    if-lez v6, :cond_a

    .line 3309
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->minSpanX:I

    move/from16 v26, v0

    .line 3310
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->minSpanY:I

    move/from16 v27, v0

    .line 3313
    :cond_a
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v32, v0

    .line 3315
    .local v32, "resultSpan":[I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    float-to-int v0, v6

    move/from16 v24, v0

    .line 3316
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v6, v6, v8

    float-to-int v0, v6

    move/from16 v25, v0

    .line 3317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    move-object/from16 v31, v0

    .line 3318
    const/16 v33, 0x1

    move-object/from16 v23, v9

    move/from16 v28, v13

    move/from16 v29, v14

    move-object/from16 v30, v17

    .line 3314
    invoke-virtual/range {v23 .. v33}, Lcom/android/launcher4/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    .line 3320
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v8, 0x0

    aget v6, v6, v8

    if-ltz v6, :cond_11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    if-ltz v6, :cond_11

    const/16 v56, 0x1

    .line 3323
    .local v56, "foundCell":Z
    :goto_6
    if-eqz v56, :cond_c

    .line 3324
    move-object/from16 v0, v17

    instance-of v6, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_c

    .line 3325
    const/4 v6, 0x0

    aget v6, v32, v6

    move-object/from16 v0, v61

    iget v8, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    if-ne v6, v8, :cond_b

    const/4 v6, 0x1

    aget v6, v32, v6

    move-object/from16 v0, v61

    iget v8, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    if-eq v6, v8, :cond_c

    .line 3326
    :cond_b
    const/16 v65, 0x1

    .line 3327
    const/4 v6, 0x0

    aget v6, v32, v6

    move-object/from16 v0, v61

    iput v6, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 3328
    const/4 v6, 0x1

    aget v6, v32, v6

    move-object/from16 v0, v61

    iput v6, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    move-object/from16 v53, v17

    .line 3329
    check-cast v53, Landroid/appwidget/AppWidgetHostView;

    .line 3331
    .local v53, "awhv":Landroid/appwidget/AppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    const/4 v8, 0x0

    aget v8, v32, v8

    const/4 v10, 0x1

    aget v10, v32, v10

    .line 3330
    move-object/from16 v0, v53

    invoke-static {v0, v6, v8, v10}, Lcom/android/launcher4/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher4/Launcher;II)V

    .line 3334
    .end local v53    # "awhv":Landroid/appwidget/AppWidgetHostView;
    :cond_c
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/Workspace;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher4/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v10

    cmp-long v6, v10, v38

    if-eqz v6, :cond_d

    .line 3335
    if-nez v57, :cond_d

    .line 3336
    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/Workspace;->getPageIndexForScreenId(J)I

    move-result v67

    .line 3337
    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->snapToPage(I)V

    .line 3340
    :cond_d
    if-eqz v56, :cond_12

    .line 3341
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/launcher4/ItemInfo;

    .line 3342
    .local v60, "info":Lcom/android/launcher4/ItemInfo;
    if-eqz v58, :cond_e

    .line 3344
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher4/CellLayout;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/launcher4/CellLayout;->removeView(Landroid/view/View;)V

    .line 3345
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v8, 0x0

    aget v40, v6, v8

    .line 3346
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v41, v6, v8

    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    move/from16 v42, v0

    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    move/from16 v43, v0

    move-object/from16 v34, p0

    move-object/from16 v35, v17

    move-wide/from16 v36, v18

    .line 3345
    invoke-virtual/range {v34 .. v43}, Lcom/android/launcher4/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    .line 3351
    :cond_e
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v63

    .line 3350
    check-cast v63, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 3352
    .local v63, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v8, 0x0

    aget v6, v6, v8

    move-object/from16 v0, v63

    iput v6, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellX:I

    move-object/from16 v0, v63

    iput v6, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    .line 3353
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    move-object/from16 v0, v63

    iput v6, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellY:I

    move-object/from16 v0, v63

    iput v6, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    .line 3354
    move-object/from16 v0, v61

    iget v6, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    move-object/from16 v0, v63

    iput v6, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    .line 3355
    move-object/from16 v0, v61

    iget v6, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    move-object/from16 v0, v63

    iput v6, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    .line 3356
    const/4 v6, 0x1

    move-object/from16 v0, v63

    iput-boolean v6, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 3358
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-wide v0, v6, Lcom/android/launcher4/CellLayout$CellInfo;->screenId:J

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v8, 0x0

    aget v44, v6, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v45, v6, v8

    .line 3359
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget v0, v6, Lcom/android/launcher4/CellLayout$CellInfo;->spanX:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget v0, v6, Lcom/android/launcher4/CellLayout$CellInfo;->spanY:I

    move/from16 v47, v0

    move-wide/from16 v40, v18

    .line 3357
    invoke-static/range {v40 .. v47}, Lcom/android/launcher4/LauncherModel;->getCellLayoutChildId(JJIIII)I

    move-result v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    .line 3361
    const-wide/16 v10, -0x65

    cmp-long v6, v18, v10

    if-eqz v6, :cond_f

    .line 3362
    move-object/from16 v0, v17

    instance-of v6, v0, Lcom/android/launcher4/LauncherAppWidgetHostView;

    if-eqz v6, :cond_f

    .line 3363
    move-object/from16 v54, v9

    .local v54, "cellLayout":Lcom/android/launcher4/CellLayout;
    move-object/from16 v59, v17

    .line 3368
    check-cast v59, Lcom/android/launcher4/LauncherAppWidgetHostView;

    .line 3370
    .local v59, "hostView":Lcom/android/launcher4/LauncherAppWidgetHostView;
    invoke-virtual/range {v59 .. v59}, Lcom/android/launcher4/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v64

    .line 3371
    .local v64, "pinfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v64, :cond_f

    .line 3372
    move-object/from16 v0, v64

    iget v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v6, :cond_f

    .line 3373
    new-instance v52, Lcom/android/launcher4/Workspace$8;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    move-object/from16 v2, v60

    move-object/from16 v3, v59

    move-object/from16 v4, v54

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher4/Workspace$8;-><init>(Lcom/android/launcher4/Workspace;Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/LauncherAppWidgetHostView;Lcom/android/launcher4/CellLayout;)V

    .line 3381
    .local v52, "addResizeFrame":Ljava/lang/Runnable;
    new-instance v66, Lcom/android/launcher4/Workspace$9;

    .end local v66    # "resizeRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, v66

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/android/launcher4/Workspace$9;-><init>(Lcom/android/launcher4/Workspace;Ljava/lang/Runnable;)V

    .line 3393
    .end local v52    # "addResizeFrame":Ljava/lang/Runnable;
    .end local v54    # "cellLayout":Lcom/android/launcher4/CellLayout;
    .end local v59    # "hostView":Lcom/android/launcher4/LauncherAppWidgetHostView;
    .end local v64    # "pinfo":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v66    # "resizeRunnable":Ljava/lang/Runnable;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v34, v0

    .line 3394
    move-object/from16 v0, v63

    iget v0, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    move/from16 v40, v0

    move-object/from16 v0, v63

    iget v0, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    move/from16 v41, v0

    .line 3395
    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanX:I

    move/from16 v42, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/android/launcher4/ItemInfo;->spanY:I

    move/from16 v43, v0

    move-object/from16 v35, v60

    move-wide/from16 v36, v18

    .line 3393
    invoke-static/range {v34 .. v43}, Lcom/android/launcher4/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJIIII)V

    .line 3409
    .end local v13    # "spanX":I
    .end local v14    # "spanY":I
    .end local v18    # "container":J
    .end local v22    # "distance":F
    .end local v26    # "minSpanX":I
    .end local v27    # "minSpanY":I
    .end local v32    # "resultSpan":[I
    .end local v38    # "screenId":J
    .end local v56    # "foundCell":Z
    .end local v57    # "hasMovedIntoHotseat":Z
    .end local v58    # "hasMovedLayouts":Z
    .end local v60    # "info":Lcom/android/launcher4/ItemInfo;
    .end local v61    # "item":Lcom/android/launcher4/ItemInfo;
    .end local v63    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    :cond_10
    :goto_7
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v42

    check-cast v42, Lcom/android/launcher4/CellLayout;

    .line 3410
    .local v42, "parent":Lcom/android/launcher4/CellLayout;
    move-object/from16 v55, v66

    .line 3413
    .local v55, "finalResizeRunnable":Ljava/lang/Runnable;
    new-instance v44, Lcom/android/launcher4/Workspace$10;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, v55

    invoke-direct {v0, v1, v2}, Lcom/android/launcher4/Workspace$10;-><init>(Lcom/android/launcher4/Workspace;Ljava/lang/Runnable;)V

    .line 3424
    .local v44, "onCompleteRunnable":Ljava/lang/Runnable;
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/launcher4/Workspace;->mAnimatingViewIntoPlace:Z

    .line 3425
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    invoke-virtual {v6}, Lcom/android/launcher4/DragView;->hasDrawn()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 3426
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/launcher4/ItemInfo;

    .line 3427
    .local v41, "info":Lcom/android/launcher4/ItemInfo;
    move-object/from16 v0, v41

    iget v6, v0, Lcom/android/launcher4/ItemInfo;->itemType:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_14

    .line 3428
    if-eqz v65, :cond_13

    const/16 v45, 0x2

    .line 3430
    .local v45, "animationType":I
    :goto_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    move-object/from16 v43, v0

    .line 3431
    const/16 v47, 0x0

    move-object/from16 v40, p0

    move-object/from16 v46, v17

    .line 3430
    invoke-virtual/range {v40 .. v47}, Lcom/android/launcher4/Workspace;->animateWidgetDrop(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 3443
    .end local v41    # "info":Lcom/android/launcher4/ItemInfo;
    .end local v45    # "animationType":I
    :goto_9
    move-object/from16 v0, v42

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->onDropChild(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3320
    .end local v42    # "parent":Lcom/android/launcher4/CellLayout;
    .end local v44    # "onCompleteRunnable":Ljava/lang/Runnable;
    .end local v55    # "finalResizeRunnable":Ljava/lang/Runnable;
    .restart local v13    # "spanX":I
    .restart local v14    # "spanY":I
    .restart local v18    # "container":J
    .restart local v22    # "distance":F
    .restart local v26    # "minSpanX":I
    .restart local v27    # "minSpanY":I
    .restart local v32    # "resultSpan":[I
    .restart local v38    # "screenId":J
    .restart local v57    # "hasMovedIntoHotseat":Z
    .restart local v58    # "hasMovedLayouts":Z
    .restart local v61    # "item":Lcom/android/launcher4/ItemInfo;
    :cond_11
    const/16 v56, 0x0

    goto/16 :goto_6

    .line 3400
    .restart local v56    # "foundCell":Z
    :cond_12
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v63

    .line 3399
    check-cast v63, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 3401
    .restart local v63    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v8, 0x0

    move-object/from16 v0, v63

    iget v10, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    aput v10, v6, v8

    .line 3402
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    move-object/from16 v0, v63

    iget v10, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    aput v10, v6, v8

    .line 3403
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 3404
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v62

    .line 3403
    check-cast v62, Lcom/android/launcher4/CellLayout;

    .line 3405
    .local v62, "layout":Lcom/android/launcher4/CellLayout;
    move-object/from16 v0, v62

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    goto :goto_7

    .line 3429
    .end local v13    # "spanX":I
    .end local v14    # "spanY":I
    .end local v18    # "container":J
    .end local v22    # "distance":F
    .end local v26    # "minSpanX":I
    .end local v27    # "minSpanY":I
    .end local v32    # "resultSpan":[I
    .end local v38    # "screenId":J
    .end local v56    # "foundCell":Z
    .end local v57    # "hasMovedIntoHotseat":Z
    .end local v58    # "hasMovedLayouts":Z
    .end local v61    # "item":Lcom/android/launcher4/ItemInfo;
    .end local v62    # "layout":Lcom/android/launcher4/CellLayout;
    .end local v63    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    .restart local v41    # "info":Lcom/android/launcher4/ItemInfo;
    .restart local v42    # "parent":Lcom/android/launcher4/CellLayout;
    .restart local v44    # "onCompleteRunnable":Ljava/lang/Runnable;
    .restart local v55    # "finalResizeRunnable":Ljava/lang/Runnable;
    :cond_13
    const/16 v45, 0x0

    goto :goto_8

    .line 3433
    :cond_14
    if-gez v67, :cond_15

    const/16 v49, -0x1

    .line 3435
    .local v49, "duration":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v46

    .line 3436
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    move-object/from16 v47, v0

    move-object/from16 v48, v17

    move-object/from16 v50, v44

    move-object/from16 v51, p0

    .line 3435
    invoke-virtual/range {v46 .. v51}, Lcom/android/launcher4/DragLayer;->animateViewIntoPosition(Lcom/android/launcher4/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto :goto_9

    .line 3434
    .end local v49    # "duration":I
    :cond_15
    const/16 v49, 0x12c

    goto :goto_a

    .line 3440
    .end local v41    # "info":Lcom/android/launcher4/ItemInfo;
    :cond_16
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iput-boolean v6, v0, Lcom/android/launcher4/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 3441
    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher4/DropTarget$DragObject;ZZ)V
    .locals 10
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher4/DropTarget$DragObject;
    .param p3, "isFlingToDelete"    # Z
    .param p4, "success"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 4491
    iget-boolean v0, p0, Lcom/android/launcher4/Workspace;->mDeferDropAfterUninstall:Z

    if-eqz v0, :cond_0

    .line 4492
    new-instance v0, Lcom/android/launcher4/Workspace$14;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/Workspace$14;-><init>(Lcom/android/launcher4/Workspace;Landroid/view/View;Lcom/android/launcher4/DropTarget$DragObject;ZZ)V

    iput-object v0, p0, Lcom/android/launcher4/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    .line 4542
    :goto_0
    return-void

    .line 4501
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    const/4 v6, 0x1

    .line 4503
    .local v6, "beingCalledAfterUninstall":Z
    :goto_1
    if-eqz p4, :cond_8

    if-eqz v6, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher4/Workspace;->mUninstallSuccessful:Z

    if-eqz v0, :cond_8

    .line 4504
    :cond_1
    if-eq p1, p0, :cond_4

    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    if-eqz v0, :cond_4

    .line 4505
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher4/CellLayout;

    move-result-object v9

    .line 4506
    .local v9, "parentCell":Lcom/android/launcher4/CellLayout;
    if-eqz v9, :cond_2

    .line 4507
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v9, v0}, Lcom/android/launcher4/CellLayout;->removeView(Landroid/view/View;)V

    .line 4509
    :cond_2
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher4/DropTarget;

    if-eqz v0, :cond_3

    .line 4510
    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mDragController:Lcom/android/launcher4/DragController;

    .line 4511
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v0, Lcom/android/launcher4/DropTarget;

    invoke-virtual {v2, v0}, Lcom/android/launcher4/DragController;->removeDropTarget(Lcom/android/launcher4/DropTarget;)V

    .line 4518
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->stripEmptyScreens()V

    .line 4526
    .end local v9    # "parentCell":Lcom/android/launcher4/CellLayout;
    :cond_4
    :goto_2
    iget-boolean v0, p2, Lcom/android/launcher4/DropTarget$DragObject;->cancelled:Z

    if-nez v0, :cond_5

    if-eqz v6, :cond_6

    iget-boolean v0, p0, Lcom/android/launcher4/Workspace;->mUninstallSuccessful:Z

    if-nez v0, :cond_6

    .line 4527
    :cond_5
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 4528
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4531
    :cond_6
    new-instance v8, Lcom/android/launcher4/Workspace$15;

    invoke-direct {v8, p0}, Lcom/android/launcher4/Workspace$15;-><init>(Lcom/android/launcher4/Workspace;)V

    .line 4538
    .local v8, "onCompleteRunnable":Ljava/lang/Runnable;
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 4540
    iput-object v4, p0, Lcom/android/launcher4/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 4541
    iput-object v4, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    goto :goto_0

    .end local v6    # "beingCalledAfterUninstall":Z
    .end local v8    # "onCompleteRunnable":Ljava/lang/Runnable;
    :cond_7
    move v6, v1

    .line 4501
    goto :goto_1

    .line 4520
    .restart local v6    # "beingCalledAfterUninstall":Z
    :cond_8
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    if-eqz v0, :cond_4

    .line 4523
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-wide v2, v0, Lcom/android/launcher4/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher4/Workspace;->getScreenWithId(J)Lcom/android/launcher4/CellLayout;

    move-result-object v7

    .line 4524
    .local v7, "cellLayout":Lcom/android/launcher4/CellLayout;
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v7, v0}, Lcom/android/launcher4/CellLayout;->onDropChild(Landroid/view/View;)V

    goto :goto_2
.end method

.method protected onEndReordering()V
    .locals 6

    .prologue
    .line 2102
    invoke-super {p0}, Lcom/android/launcher4/SmoothPagedView;->onEndReordering()V

    .line 2104
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hideOutlines()V

    .line 2105
    iget-object v3, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2106
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v1

    .line 2107
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 2112
    invoke-static {}, Lcom/android/launcher4/Launcher;->getModel()Lcom/android/launcher4/LauncherModel;

    move-result-object v3

    .line 2113
    iget-object v4, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v5, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher4/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2116
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->enableLayoutTransitions()V

    .line 2117
    return-void

    .line 2108
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 2109
    .local v0, "cl":Lcom/android/launcher4/CellLayout;
    iget-object v3, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->getIdForScreen(Lcom/android/launcher4/CellLayout;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onEnterScrollArea(III)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "direction"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4811
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher4/LauncherAppState;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v0, v5

    .line 4812
    .local v0, "isPortrait":Z
    :goto_0
    iget-object v7, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher4/Launcher;->getHotseat()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    .line 4813
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 4814
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher4/Launcher;->getHotseat()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4815
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4848
    .end local v3    # "r":Landroid/graphics/Rect;
    :cond_0
    :goto_1
    return v5

    .end local v0    # "isPortrait":Z
    :cond_1
    move v0, v6

    .line 4811
    goto :goto_0

    .line 4820
    .restart local v0    # "isPortrait":Z
    :cond_2
    const/4 v4, 0x0

    .line 4821
    .local v4, "result":Z
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isSmall()Z

    move-result v7

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/android/launcher4/Workspace;->mIsSwitchingState:Z

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getOpenFolder()Lcom/android/launcher4/Folder;

    move-result-object v7

    if-nez v7, :cond_4

    .line 4822
    iput-boolean v6, p0, Lcom/android/launcher4/Workspace;->mInScrollArea:Z

    .line 4824
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getNextPage()I

    move-result v7

    .line 4825
    if-nez p3, :cond_3

    const/4 v6, -0x1

    .line 4824
    :cond_3
    add-int v2, v7, v6

    .line 4828
    .local v2, "page":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/launcher4/Workspace;->setCurrentDropLayout(Lcom/android/launcher4/CellLayout;)V

    .line 4830
    if-ltz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 4833
    invoke-virtual {p0, v2}, Lcom/android/launcher4/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x12d

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 4837
    invoke-virtual {p0, v2}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/CellLayout;

    .line 4838
    .local v1, "layout":Lcom/android/launcher4/CellLayout;
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher4/CellLayout;)V

    .line 4844
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->invalidate()V

    .line 4845
    const/4 v4, 0x1

    .end local v1    # "layout":Lcom/android/launcher4/CellLayout;
    .end local v2    # "page":I
    :cond_4
    move v5, v4

    .line 4848
    goto :goto_1
.end method

.method public onExitScrollArea()Z
    .locals 3

    .prologue
    .line 4853
    const/4 v1, 0x0

    .line 4854
    .local v1, "result":Z
    iget-boolean v2, p0, Lcom/android/launcher4/Workspace;->mInScrollArea:Z

    if-eqz v2, :cond_0

    .line 4855
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->invalidate()V

    .line 4856
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getCurrentDropLayout()Lcom/android/launcher4/CellLayout;

    move-result-object v0

    .line 4857
    .local v0, "layout":Lcom/android/launcher4/CellLayout;
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setCurrentDropLayout(Lcom/android/launcher4/CellLayout;)V

    .line 4858
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher4/CellLayout;)V

    .line 4860
    const/4 v1, 0x1

    .line 4861
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher4/Workspace;->mInScrollArea:Z

    .line 4863
    .end local v0    # "layout":Lcom/android/launcher4/CellLayout;
    :cond_0
    return v1
.end method

.method public onFlingToDelete(Lcom/android/launcher4/DropTarget$DragObject;IILandroid/graphics/PointF;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "vec"    # Landroid/graphics/PointF;

    .prologue
    .line 4739
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    .prologue
    .line 4744
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1067
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_0

    .line 1083
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher4/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1069
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher4/Workspace;->mXDown:F

    .line 1070
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher4/Workspace;->mYDown:F

    .line 1071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher4/Workspace;->mTouchDownTime:J

    goto :goto_0

    .line 1075
    :sswitch_1
    iget v1, p0, Lcom/android/launcher4/Workspace;->mTouchState:I

    if-nez v1, :cond_0

    .line 1076
    iget v1, p0, Lcom/android/launcher4/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 1078
    .local v0, "currentPage":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1079
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1067
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher4/Launcher;ZZ)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher4/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 2707
    invoke-direct {p0}, Lcom/android/launcher4/Workspace;->onTransitionEnd()V

    .line 2708
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher4/Launcher;ZZ)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher4/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 2691
    invoke-direct {p0}, Lcom/android/launcher4/Workspace;->onTransitionPrepare()V

    .line 2692
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher4/Launcher;ZZ)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher4/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 2697
    return-void
.end method

.method public onLauncherTransitionStep(Lcom/android/launcher4/Launcher;F)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher4/Launcher;
    .param p2, "t"    # F

    .prologue
    .line 2701
    iput p2, p0, Lcom/android/launcher4/Workspace;->mTransitionProgress:F

    .line 2702
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1792
    iget-boolean v0, p0, Lcom/android/launcher4/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher4/Workspace;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher4/Workspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mWallpaperOffset:Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1794
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mWallpaperOffset:Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 1796
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher4/SmoothPagedView;->onLayout(ZIIII)V

    .line 1797
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 3

    .prologue
    .line 1167
    invoke-super {p0}, Lcom/android/launcher4/SmoothPagedView;->onPageBeginMoving()V

    .line 1169
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1170
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher4/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1185
    :goto_0
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherAppState;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1186
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->showOutlines()V

    .line 1193
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher4/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-nez v1, :cond_1

    .line 1194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 1198
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 1172
    :cond_2
    iget v1, p0, Lcom/android/launcher4/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1174
    iget v1, p0, Lcom/android/launcher4/Workspace;->mCurrentPage:I

    iget v2, p0, Lcom/android/launcher4/Workspace;->mNextPage:I

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher4/Workspace;->enableChildrenCache(II)V

    goto :goto_0

    .line 1180
    :cond_3
    iget v1, p0, Lcom/android/launcher4/Workspace;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/launcher4/Workspace;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher4/Workspace;->enableChildrenCache(II)V

    goto :goto_0

    .line 1195
    .restart local v0    # "i":I
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/CellLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/launcher4/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 1194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onPageEndMoving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1201
    invoke-super {p0}, Lcom/android/launcher4/SmoothPagedView;->onPageEndMoving()V

    .line 1203
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1204
    invoke-direct {p0, v1}, Lcom/android/launcher4/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1209
    :goto_0
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragController:Lcom/android/launcher4/DragController;

    invoke-virtual {v0}, Lcom/android/launcher4/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1210
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragController:Lcom/android/launcher4/DragController;

    invoke-virtual {v0}, Lcom/android/launcher4/DragController;->forceTouchMove()V

    .line 1224
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1226
    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 1229
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 1230
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1231
    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 1233
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher4/Workspace;->mStripScreensOnPageStopMoving:Z

    if-eqz v0, :cond_3

    .line 1234
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->stripEmptyScreens()V

    .line 1235
    iput-boolean v1, p0, Lcom/android/launcher4/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 1237
    :cond_3
    return-void

    .line 1206
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->clearChildrenCache()V

    goto :goto_0

    .line 1219
    :cond_5
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hideOutlines()V

    goto :goto_1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1823
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher4/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1824
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getOpenFolder()Lcom/android/launcher4/Folder;

    move-result-object v0

    .line 1825
    .local v0, "openFolder":Lcom/android/launcher4/Folder;
    if-eqz v0, :cond_0

    .line 1827
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher4/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1833
    .end local v0    # "openFolder":Lcom/android/launcher4/Folder;
    :goto_0
    return v1

    .line 1829
    .restart local v0    # "openFolder":Lcom/android/launcher4/Folder;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher4/SmoothPagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 1833
    .end local v0    # "openFolder":Lcom/android/launcher4/Folder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 4752
    invoke-super {p0, p1}, Lcom/android/launcher4/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4753
    iget v0, p0, Lcom/android/launcher4/Workspace;->mCurrentPage:I

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->setScreen(I)V

    .line 4754
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 1775
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1779
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getPageIndicatorClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 1780
    .local v1, "listener":Landroid/view/View$OnClickListener;
    if-eqz v1, :cond_0

    .line 1781
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getPageIndicator()Lcom/android/launcher4/PageIndicator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher4/PageIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1784
    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1785
    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1784
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1786
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    sput-boolean v2, Lcom/android/launcher4/Workspace;->sAccessibilityEnabled:Z

    .line 1787
    return-void
.end method

.method protected onStartReordering()V
    .locals 0

    .prologue
    .line 2095
    invoke-super {p0}, Lcom/android/launcher4/SmoothPagedView;->onStartReordering()V

    .line 2096
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->showOutlines()V

    .line 2098
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->disableLayoutTransitions()V

    .line 2099
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1035
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1036
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher4/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/android/launcher4/Workspace;->mCurrentPage:I

    if-ne v0, v1, :cond_1

    .line 1035
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onUninstallActivityReturned(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 4550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/Workspace;->mDeferDropAfterUninstall:Z

    .line 4551
    iput-boolean p1, p0, Lcom/android/launcher4/Workspace;->mUninstallSuccessful:Z

    .line 4552
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4553
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4555
    :cond_0
    return-void
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1958
    iget-object v8, p0, Lcom/android/launcher4/Workspace;->mTempCell:[I

    .line 1959
    .local v8, "position":[I
    invoke-virtual {p0, v8}, Lcom/android/launcher4/Workspace;->getLocationOnScreen([I)V

    .line 1961
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 1962
    .local v7, "pointerIndex":I
    aget v0, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v5

    .line 1963
    aget v0, v8, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v4

    .line 1965
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1967
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1968
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "android.wallpaper.tap"

    .line 1970
    :goto_0
    aget v3, v8, v5

    aget v4, v8, v4

    const/4 v6, 0x0

    .line 1966
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1971
    return-void

    .line 1969
    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/Launcher;->onWindowVisibilityChanged(I)V

    .line 1053
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 1759
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Workspace;->acceleratedOverScroll(F)V

    .line 1760
    return-void
.end method

.method protected reinflateWidgetsIfNecessary()V
    .locals 10

    .prologue
    .line 1087
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v1

    .line 1088
    .local v1, "clCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1110
    return-void

    .line 1089
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 1090
    .local v0, "cl":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v7

    .line 1091
    .local v7, "swc":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    invoke-virtual {v7}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v4

    .line 1092
    .local v4, "itemCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-lt v5, v4, :cond_1

    .line 1088
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1093
    :cond_1
    invoke-virtual {v7, v5}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1095
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher4/LauncherAppWidgetInfo;

    if-eqz v9, :cond_2

    .line 1097
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1096
    check-cast v3, Lcom/android/launcher4/LauncherAppWidgetInfo;

    .line 1098
    .local v3, "info":Lcom/android/launcher4/LauncherAppWidgetInfo;
    iget-object v6, v3, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v6, Lcom/android/launcher4/LauncherAppWidgetHostView;

    .line 1099
    .local v6, "lahv":Lcom/android/launcher4/LauncherAppWidgetHostView;
    if-eqz v6, :cond_2

    .line 1100
    invoke-virtual {v6}, Lcom/android/launcher4/LauncherAppWidgetHostView;->orientationChangedSincedInflation()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1101
    iget-object v9, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v9, v3}, Lcom/android/launcher4/Launcher;->removeAppWidget(Lcom/android/launcher4/LauncherAppWidgetInfo;)V

    .line 1104
    invoke-virtual {v0, v6}, Lcom/android/launcher4/CellLayout;->removeView(Landroid/view/View;)V

    .line 1105
    iget-object v9, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v9, v3}, Lcom/android/launcher4/Launcher;->bindAppWidget(Lcom/android/launcher4/LauncherAppWidgetInfo;)V

    .line 1092
    .end local v3    # "info":Lcom/android/launcher4/LauncherAppWidgetInfo;
    .end local v6    # "lahv":Lcom/android/launcher4/LauncherAppWidgetHostView;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public removeAllWorkspaceScreens()V
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->disableLayoutTransitions()V

    .line 545
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->removeCustomContentPage()V

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->removeAllViews()V

    .line 551
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 552
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 555
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->enableLayoutTransitions()V

    .line 556
    return-void
.end method

.method public removeCustomContentPage()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x12d

    .line 690
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher4/Workspace;->getScreenWithId(J)Lcom/android/launcher4/CellLayout;

    move-result-object v0

    .line 691
    .local v0, "customScreen":Lcom/android/launcher4/CellLayout;
    if-nez v0, :cond_0

    .line 718
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 699
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->removeView(Landroid/view/View;)V

    .line 701
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mCustomContentCallbacks:Lcom/android/launcher4/Launcher$CustomContentCallbacks;

    if-eqz v1, :cond_1

    .line 702
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mCustomContentCallbacks:Lcom/android/launcher4/Launcher$CustomContentCallbacks;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/launcher4/Launcher$CustomContentCallbacks;->onScrollProgressChanged(F)V

    .line 703
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mCustomContentCallbacks:Lcom/android/launcher4/Launcher$CustomContentCallbacks;

    invoke-interface {v1}, Lcom/android/launcher4/Launcher$CustomContentCallbacks;->onHide()V

    .line 706
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher4/Workspace;->mCustomContentCallbacks:Lcom/android/launcher4/Launcher$CustomContentCallbacks;

    .line 709
    iget v1, p0, Lcom/android/launcher4/Workspace;->mOriginalDefaultPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/launcher4/Workspace;->mDefaultPage:I

    .line 712
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher4/Launcher;->updateCustomContentHintVisibility()V

    .line 713
    iget v1, p0, Lcom/android/launcher4/Workspace;->mRestorePage:I

    const/16 v2, -0x3e9

    if-eq v1, v2, :cond_2

    .line 714
    iget v1, p0, Lcom/android/launcher4/Workspace;->mRestorePage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/launcher4/Workspace;->mRestorePage:I

    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method public removeExtraEmptyScreen()V
    .locals 6

    .prologue
    const-wide/16 v4, -0xc9

    .line 780
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hasExtraEmptyScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 782
    .local v0, "cl":Lcom/android/launcher4/CellLayout;
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 784
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->removeView(Landroid/view/View;)V

    .line 786
    .end local v0    # "cl":Lcom/android/launcher4/CellLayout;
    :cond_0
    return-void
.end method

.method removeItemsByApplicationInfo(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5011
    .local p1, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5012
    .local v0, "cns":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5017
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->removeItemsByComponentName(Ljava/util/HashSet;)V

    .line 5018
    return-void

    .line 5012
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/AppInfo;

    .line 5013
    .local v1, "info":Lcom/android/launcher4/AppInfo;
    iget-object v3, v1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method removeItemsByComponentName(Ljava/util/HashSet;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5021
    .local p1, "componentNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v8

    .line 5022
    .local v8, "cellLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/CellLayout;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5091
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->stripEmptyScreens()V

    .line 5092
    return-void

    .line 5022
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher4/CellLayout;

    .line 5023
    .local v14, "layoutParent":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v14}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v13

    .line 5025
    .local v13, "layout":Landroid/view/ViewGroup;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 5026
    .local v6, "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher4/ItemInfo;Landroid/view/View;>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v12, v2, :cond_4

    .line 5034
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5035
    .local v5, "childrenToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 5036
    .local v4, "folderAppsToRemove":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher4/FolderInfo;Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutInfo;>;>;"
    new-instance v1, Lcom/android/launcher4/Workspace$17;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher4/Workspace$17;-><init>(Lcom/android/launcher4/Workspace;Ljava/util/HashSet;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 5062
    .local v1, "filter":Lcom/android/launcher4/LauncherModel$ItemInfoFilter;
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/launcher4/LauncherModel;->filterItemInfos(Ljava/util/Collection;Lcom/android/launcher4/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    .line 5065
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 5074
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 5084
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 5085
    invoke-virtual {v13}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5086
    invoke-virtual {v13}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 5027
    .end local v1    # "filter":Lcom/android/launcher4/LauncherModel$ItemInfoFilter;
    .end local v4    # "folderAppsToRemove":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher4/FolderInfo;Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutInfo;>;>;"
    .end local v5    # "childrenToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5028
    .local v16, "view":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .line 5029
    .local v15, "object":Ljava/lang/Object;
    instance-of v2, v15, Lcom/android/launcher4/ItemInfo;

    if-eqz v2, :cond_5

    .line 5030
    check-cast v15, Lcom/android/launcher4/ItemInfo;

    .end local v15    # "object":Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5026
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 5065
    .end local v16    # "view":Landroid/view/View;
    .restart local v1    # "filter":Lcom/android/launcher4/LauncherModel$ItemInfoFilter;
    .restart local v4    # "folderAppsToRemove":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher4/FolderInfo;Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutInfo;>;>;"
    .restart local v5    # "childrenToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher4/FolderInfo;

    .line 5067
    .local v10, "folder":Lcom/android/launcher4/FolderInfo;
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 5068
    .local v7, "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher4/ShortcutInfo;

    .line 5069
    .local v11, "info":Lcom/android/launcher4/ShortcutInfo;
    invoke-virtual {v10, v11}, Lcom/android/launcher4/FolderInfo;->remove(Lcom/android/launcher4/ShortcutInfo;)V

    goto :goto_3

    .line 5074
    .end local v7    # "appsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutInfo;>;"
    .end local v10    # "folder":Lcom/android/launcher4/FolderInfo;
    .end local v11    # "info":Lcom/android/launcher4/ShortcutInfo;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 5078
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v14, v9}, Lcom/android/launcher4/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 5079
    instance-of v3, v9, Lcom/android/launcher4/DropTarget;

    if-eqz v3, :cond_3

    .line 5080
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Workspace;->mDragController:Lcom/android/launcher4/DragController;

    check-cast v9, Lcom/android/launcher4/DropTarget;

    .end local v9    # "child":Landroid/view/View;
    invoke-virtual {v3, v9}, Lcom/android/launcher4/DragController;->removeDropTarget(Lcom/android/launcher4/DropTarget;)V

    goto :goto_2
.end method

.method removeItemsByPackageName(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4968
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 4969
    .local v9, "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v9, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4972
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 4973
    .local v5, "infos":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/launcher4/ItemInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4974
    .local v2, "cns":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 4975
    .local v0, "cellLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/CellLayout;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 4986
    new-instance v3, Lcom/android/launcher4/Workspace$16;

    invoke-direct {v3, p0, v9, v2}, Lcom/android/launcher4/Workspace$16;-><init>(Lcom/android/launcher4/Workspace;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 4997
    .local v3, "filter":Lcom/android/launcher4/LauncherModel$ItemInfoFilter;
    invoke-static {v5, v3}, Lcom/android/launcher4/LauncherModel;->filterItemInfos(Ljava/util/Collection;Lcom/android/launcher4/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    .line 5000
    invoke-virtual {p0, v2}, Lcom/android/launcher4/Workspace;->removeItemsByComponentName(Ljava/util/HashSet;)V

    .line 5001
    return-void

    .line 4975
    .end local v3    # "filter":Lcom/android/launcher4/LauncherModel$ItemInfoFilter;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher4/CellLayout;

    .line 4976
    .local v7, "layoutParent":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v6

    .line 4977
    .local v6, "layout":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4978
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 4979
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4980
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 4981
    .local v8, "object":Ljava/lang/Object;
    instance-of v12, v8, Lcom/android/launcher4/ItemInfo;

    if-eqz v12, :cond_2

    .line 4982
    check-cast v8, Lcom/android/launcher4/ItemInfo;

    .end local v8    # "object":Ljava/lang/Object;
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4978
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public resetFinalScrollForPageChange(I)V
    .locals 2
    .param p1, "pageIndex"    # I

    .prologue
    .line 3461
    if-ltz p1, :cond_0

    .line 3462
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 3463
    .local v0, "cl":Lcom/android/launcher4/CellLayout;
    iget v1, p0, Lcom/android/launcher4/Workspace;->mSavedScrollX:I

    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->setScrollX(I)V

    .line 3464
    iget v1, p0, Lcom/android/launcher4/Workspace;->mSavedTranslationX:F

    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->setTranslationX(F)V

    .line 3465
    iget v1, p0, Lcom/android/launcher4/Workspace;->mSavedRotationY:F

    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->setRotationY(F)V

    .line 3467
    .end local v0    # "cl":Lcom/android/launcher4/CellLayout;
    :cond_0
    return-void
.end method

.method public resetTransitionTransform(Lcom/android/launcher4/CellLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/android/launcher4/CellLayout;

    .prologue
    .line 4437
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4438
    iget v0, p0, Lcom/android/launcher4/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setScaleX(F)V

    .line 4439
    iget v0, p0, Lcom/android/launcher4/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setScaleY(F)V

    .line 4441
    :cond_0
    return-void
.end method

.method public restoreInstanceStateForChild(I)V
    .locals 3
    .param p1, "child"    # I

    .prologue
    .line 4768
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 4769
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4770
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 4771
    .local v0, "cl":Lcom/android/launcher4/CellLayout;
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    .line 4773
    .end local v0    # "cl":Lcom/android/launcher4/CellLayout;
    :cond_0
    return-void
.end method

.method public restoreInstanceStateForRemainingPages()V
    .locals 4

    .prologue
    .line 4776
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v0

    .line 4777
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 4782
    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4783
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher4/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 4784
    return-void

    .line 4778
    :cond_0
    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4779
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->restoreInstanceStateForChild(I)V

    .line 4777
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method saveWorkspaceScreenToDb(Lcom/android/launcher4/CellLayout;)V
    .locals 17
    .param p1, "cl"    # Lcom/android/launcher4/CellLayout;

    .prologue
    .line 4692
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    .line 4694
    .local v12, "count":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher4/Workspace;->getIdForScreen(Lcom/android/launcher4/CellLayout;)J

    move-result-wide v6

    .line 4695
    .local v6, "screenId":J
    const/16 v11, -0x64

    .line 4698
    .local v11, "container":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher4/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4699
    const-wide/16 v6, -0x1

    .line 4700
    const/16 v11, -0x65

    .line 4703
    :cond_0
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-lt v14, v12, :cond_1

    .line 4729
    return-void

    .line 4704
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 4706
    .local v16, "v":Landroid/view/View;
    const/4 v3, 0x0

    .line 4707
    .local v3, "info":Lcom/android/launcher4/ItemInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .line 4708
    .local v15, "so":Ljava/lang/Object;
    instance-of v2, v15, Lcom/android/launcher4/ItemInfo;

    if-eqz v2, :cond_2

    move-object v3, v15

    .line 4709
    check-cast v3, Lcom/android/launcher4/ItemInfo;

    .line 4714
    :cond_2
    if-eqz v3, :cond_3

    .line 4715
    iget v8, v3, Lcom/android/launcher4/ItemInfo;->cellX:I

    .line 4716
    .local v8, "cellX":I
    iget v9, v3, Lcom/android/launcher4/ItemInfo;->cellY:I

    .line 4721
    .local v9, "cellY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    int-to-long v4, v11

    .line 4722
    const/4 v10, 0x0

    .line 4721
    invoke-static/range {v2 .. v10}, Lcom/android/launcher4/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJIIZ)V

    .line 4724
    .end local v8    # "cellX":I
    .end local v9    # "cellY":I
    :cond_3
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/launcher4/FolderIcon;

    if-eqz v2, :cond_4

    move-object/from16 v13, v16

    .line 4725
    check-cast v13, Lcom/android/launcher4/FolderIcon;

    .line 4726
    .local v13, "fi":Lcom/android/launcher4/FolderIcon;
    invoke-virtual {v13}, Lcom/android/launcher4/FolderIcon;->getFolder()Lcom/android/launcher4/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/Folder;->addItemLocationsInDatabase()V

    .line 4703
    .end local v13    # "fi":Lcom/android/launcher4/FolderIcon;
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_0
.end method

.method saveWorkspaceToDb()V
    .locals 3

    .prologue
    .line 4684
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v1

    .line 4685
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 4689
    return-void

    .line 4686
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 4687
    .local v0, "cl":Lcom/android/launcher4/CellLayout;
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->saveWorkspaceScreenToDb(Lcom/android/launcher4/CellLayout;)V

    .line 4685
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected screenScrolled(I)V
    .locals 14
    .param p1, "screenCenter"    # I

    .prologue
    .line 1704
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isLayoutRtl()Z

    move-result v3

    .line 1705
    .local v3, "isRtl":Z
    invoke-super {p0, p1}, Lcom/android/launcher4/SmoothPagedView;->screenScrolled(I)V

    .line 1707
    invoke-direct {p0, p1}, Lcom/android/launcher4/Workspace;->updatePageAlphaValues(I)V

    .line 1708
    invoke-direct {p0, p1}, Lcom/android/launcher4/Workspace;->updateStateForCustomContent(I)V

    .line 1709
    invoke-direct {p0}, Lcom/android/launcher4/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1711
    iget v12, p0, Lcom/android/launcher4/Workspace;->mOverScrollX:I

    if-gez v12, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isLayoutRtl()Z

    move-result v12

    if-nez v12, :cond_6

    .line 1712
    :cond_0
    iget v12, p0, Lcom/android/launcher4/Workspace;->mOverScrollX:I

    iget v13, p0, Lcom/android/launcher4/Workspace;->mMaxScrollX:I

    if-le v12, v13, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1711
    :cond_1
    const/4 v10, 0x0

    .line 1713
    .local v10, "shouldOverScroll":Z
    :goto_0
    if-eqz v10, :cond_a

    .line 1714
    const/4 v1, 0x0

    .line 1715
    .local v1, "index":I
    const/4 v6, 0x0

    .line 1716
    .local v6, "pivotX":F
    const/high16 v4, 0x3e800000    # 0.25f

    .line 1717
    .local v4, "leftBiasedPivot":F
    const/high16 v7, 0x3f400000    # 0.75f

    .line 1718
    .local v7, "rightBiasedPivot":F
    const/4 v5, 0x0

    .line 1719
    .local v5, "lowerIndex":I
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v12

    add-int/lit8 v11, v12, -0x1

    .line 1721
    .local v11, "upperIndex":I
    iget v12, p0, Lcom/android/launcher4/Workspace;->mOverScrollX:I

    if-gez v12, :cond_7

    const/4 v2, 0x1

    .line 1722
    .local v2, "isLeftPage":Z
    :goto_1
    if-nez v3, :cond_2

    if-nez v2, :cond_3

    :cond_2
    if-eqz v3, :cond_8

    if-nez v2, :cond_8

    :cond_3
    const/4 v1, 0x0

    .line 1724
    :goto_2
    if-eqz v2, :cond_9

    const/high16 v6, 0x3f400000    # 0.75f

    .line 1726
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 1728
    .local v0, "cl":Lcom/android/launcher4/CellLayout;
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher4/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v9

    .line 1729
    .local v9, "scrollProgress":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual {v0, v12, v2}, Lcom/android/launcher4/CellLayout;->setOverScrollAmount(FZ)V

    .line 1730
    const/high16 v12, -0x3e400000    # -24.0f

    mul-float v8, v12, v9

    .line 1735
    .local v8, "rotation":F
    iget-boolean v12, p0, Lcom/android/launcher4/Workspace;->mOverscrollTransformsSet:Z

    if-eqz v12, :cond_4

    .line 1736
    iget v12, p0, Lcom/android/launcher4/Workspace;->mLastOverscrollPivotX:F

    invoke-static {v12, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-eqz v12, :cond_5

    .line 1737
    :cond_4
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/launcher4/Workspace;->mOverscrollTransformsSet:Z

    .line 1738
    iput v6, p0, Lcom/android/launcher4/Workspace;->mLastOverscrollPivotX:F

    .line 1739
    iget v12, p0, Lcom/android/launcher4/Workspace;->mDensity:F

    iget v13, p0, Lcom/android/launcher4/Workspace;->mCameraDistance:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    invoke-virtual {v0, v12}, Lcom/android/launcher4/CellLayout;->setCameraDistance(F)V

    .line 1740
    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v6

    invoke-virtual {v0, v12}, Lcom/android/launcher4/CellLayout;->setPivotX(F)V

    .line 1741
    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    invoke-virtual {v0, v12}, Lcom/android/launcher4/CellLayout;->setPivotY(F)V

    .line 1742
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lcom/android/launcher4/CellLayout;->setOverscrollTransformsDirty(Z)V

    .line 1755
    .end local v0    # "cl":Lcom/android/launcher4/CellLayout;
    .end local v1    # "index":I
    .end local v2    # "isLeftPage":Z
    .end local v4    # "leftBiasedPivot":F
    .end local v5    # "lowerIndex":I
    .end local v6    # "pivotX":F
    .end local v7    # "rightBiasedPivot":F
    .end local v8    # "rotation":F
    .end local v9    # "scrollProgress":F
    .end local v11    # "upperIndex":I
    :cond_5
    :goto_4
    return-void

    .line 1711
    .end local v10    # "shouldOverScroll":Z
    :cond_6
    const/4 v10, 0x1

    goto :goto_0

    .line 1721
    .restart local v1    # "index":I
    .restart local v4    # "leftBiasedPivot":F
    .restart local v5    # "lowerIndex":I
    .restart local v6    # "pivotX":F
    .restart local v7    # "rightBiasedPivot":F
    .restart local v10    # "shouldOverScroll":Z
    .restart local v11    # "upperIndex":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2    # "isLeftPage":Z
    :cond_8
    move v1, v11

    .line 1723
    goto :goto_2

    .line 1724
    :cond_9
    const/high16 v6, 0x3e800000    # 0.25f

    goto :goto_3

    .line 1747
    .end local v1    # "index":I
    .end local v2    # "isLeftPage":Z
    .end local v4    # "leftBiasedPivot":F
    .end local v5    # "lowerIndex":I
    .end local v6    # "pivotX":F
    .end local v7    # "rightBiasedPivot":F
    .end local v11    # "upperIndex":I
    :cond_a
    iget-boolean v12, p0, Lcom/android/launcher4/Workspace;->mOverscrollTransformsSet:Z

    if-eqz v12, :cond_5

    .line 1748
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/launcher4/Workspace;->mOverscrollTransformsSet:Z

    .line 1749
    sget v12, Lcom/android/launcher4/Workspace;->apps_customepage_count:I

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {p0, v12}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher4/CellLayout;

    .line 1750
    invoke-virtual {v12}, Lcom/android/launcher4/CellLayout;->resetOverscrollTransforms()V

    .line 1751
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {p0, v12}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher4/CellLayout;

    .line 1752
    invoke-virtual {v12}, Lcom/android/launcher4/CellLayout;->resetOverscrollTransforms()V

    goto :goto_4
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 4788
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isSmall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher4/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 4789
    invoke-super {p0}, Lcom/android/launcher4/SmoothPagedView;->scrollLeft()V

    .line 4791
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getOpenFolder()Lcom/android/launcher4/Folder;

    move-result-object v0

    .line 4792
    .local v0, "openFolder":Lcom/android/launcher4/Folder;
    if-eqz v0, :cond_1

    .line 4793
    invoke-virtual {v0}, Lcom/android/launcher4/Folder;->completeDragExit()V

    .line 4795
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 4799
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isSmall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher4/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 4800
    invoke-super {p0}, Lcom/android/launcher4/SmoothPagedView;->scrollRight()V

    .line 4802
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getOpenFolder()Lcom/android/launcher4/Folder;

    move-result-object v0

    .line 4803
    .local v0, "openFolder":Lcom/android/launcher4/Folder;
    if-eqz v0, :cond_1

    .line 4804
    invoke-virtual {v0}, Lcom/android/launcher4/Folder;->completeDragExit()V

    .line 4806
    :cond_1
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1570
    iget v0, p0, Lcom/android/launcher4/Workspace;->mBackgroundAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1571
    iput p1, p0, Lcom/android/launcher4/Workspace;->mBackgroundAlpha:F

    .line 1572
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->invalidate()V

    .line 1574
    :cond_0
    return-void
.end method

.method public setChildrenOutlineAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 1515
    iput p1, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineAlpha:F

    .line 1516
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1520
    return-void

    .line 1517
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 1518
    .local v0, "cl":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v0, p1}, Lcom/android/launcher4/CellLayout;->setBackgroundAlpha(F)V

    .line 1516
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method setCurrentDragOverlappingLayout(Lcom/android/launcher4/CellLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher4/CellLayout;

    .prologue
    .line 3596
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragOverlappingLayout:Lcom/android/launcher4/CellLayout;

    if-eqz v0, :cond_0

    .line 3597
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragOverlappingLayout:Lcom/android/launcher4/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->setIsDragOverlapping(Z)V

    .line 3599
    :cond_0
    iput-object p1, p0, Lcom/android/launcher4/Workspace;->mDragOverlappingLayout:Lcom/android/launcher4/CellLayout;

    .line 3600
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragOverlappingLayout:Lcom/android/launcher4/CellLayout;

    if-eqz v0, :cond_1

    .line 3601
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragOverlappingLayout:Lcom/android/launcher4/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->setIsDragOverlapping(Z)V

    .line 3603
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->invalidate()V

    .line 3604
    return-void
.end method

.method setCurrentDropLayout(Lcom/android/launcher4/CellLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher4/CellLayout;

    .prologue
    const/4 v1, -0x1

    .line 3582
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    if-eqz v0, :cond_0

    .line 3583
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->revertTempState()V

    .line 3584
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->onDragExit()V

    .line 3586
    :cond_0
    iput-object p1, p0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    .line 3587
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    if-eqz v0, :cond_1

    .line 3588
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDragTargetLayout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->onDragEnter()V

    .line 3590
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher4/Workspace;->cleanupReorder(Z)V

    .line 3591
    invoke-direct {p0}, Lcom/android/launcher4/Workspace;->cleanupFolderCreation()V

    .line 3592
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher4/Workspace;->setCurrentDropOverCell(II)V

    .line 3593
    return-void
.end method

.method setCurrentDropOverCell(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3607
    iget v0, p0, Lcom/android/launcher4/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher4/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_1

    .line 3608
    :cond_0
    iput p1, p0, Lcom/android/launcher4/Workspace;->mDragOverX:I

    .line 3609
    iput p2, p0, Lcom/android/launcher4/Workspace;->mDragOverY:I

    .line 3610
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setDragMode(I)V

    .line 3612
    :cond_1
    return-void
.end method

.method setDragMode(I)V
    .locals 2
    .param p1, "dragMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 3615
    iget v0, p0, Lcom/android/launcher4/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_1

    .line 3616
    if-nez p1, :cond_2

    .line 3617
    invoke-direct {p0}, Lcom/android/launcher4/Workspace;->cleanupAddToFolder()V

    .line 3621
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher4/Workspace;->cleanupReorder(Z)V

    .line 3622
    invoke-direct {p0}, Lcom/android/launcher4/Workspace;->cleanupFolderCreation()V

    .line 3633
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/launcher4/Workspace;->mDragMode:I

    .line 3635
    :cond_1
    return-void

    .line 3623
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 3624
    invoke-direct {p0, v1}, Lcom/android/launcher4/Workspace;->cleanupReorder(Z)V

    .line 3625
    invoke-direct {p0}, Lcom/android/launcher4/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    .line 3626
    :cond_3
    if-ne p1, v1, :cond_4

    .line 3627
    invoke-direct {p0}, Lcom/android/launcher4/Workspace;->cleanupAddToFolder()V

    .line 3628
    invoke-direct {p0, v1}, Lcom/android/launcher4/Workspace;->cleanupReorder(Z)V

    goto :goto_0

    .line 3629
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 3630
    invoke-direct {p0}, Lcom/android/launcher4/Workspace;->cleanupAddToFolder()V

    .line 3631
    invoke-direct {p0}, Lcom/android/launcher4/Workspace;->cleanupFolderCreation()V

    goto :goto_0
.end method

.method public setFinalScrollForPageChange(I)V
    .locals 4
    .param p1, "pageIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 3448
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 3449
    .local v0, "cl":Lcom/android/launcher4/CellLayout;
    if-eqz v0, :cond_0

    .line 3450
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getScrollX()I

    move-result v2

    iput v2, p0, Lcom/android/launcher4/Workspace;->mSavedScrollX:I

    .line 3451
    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getTranslationX()F

    move-result v2

    iput v2, p0, Lcom/android/launcher4/Workspace;->mSavedTranslationX:F

    .line 3452
    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getRotationY()F

    move-result v2

    iput v2, p0, Lcom/android/launcher4/Workspace;->mSavedRotationY:F

    .line 3453
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Workspace;->getScrollForPage(I)I

    move-result v1

    .line 3454
    .local v1, "newX":I
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Workspace;->setScrollX(I)V

    .line 3455
    invoke-virtual {v0, v3}, Lcom/android/launcher4/CellLayout;->setTranslationX(F)V

    .line 3456
    invoke-virtual {v0, v3}, Lcom/android/launcher4/CellLayout;->setRotationY(F)V

    .line 3458
    .end local v1    # "newX":I
    :cond_0
    return-void
.end method

.method public setFinalTransitionTransform(Lcom/android/launcher4/CellLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/android/launcher4/CellLayout;

    .prologue
    .line 4429
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4430
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher4/Workspace;->mCurrentScale:F

    .line 4431
    iget v0, p0, Lcom/android/launcher4/Workspace;->mNewScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setScaleX(F)V

    .line 4432
    iget v0, p0, Lcom/android/launcher4/Workspace;->mNewScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->setScaleY(F)V

    .line 4434
    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 360
    return-void
.end method

.method protected setWallpaperDimension()V
    .locals 5

    .prologue
    .line 1271
    invoke-static {}, Lcom/android/launcher4/WallpaperCropActivity;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    .line 1272
    .local v1, "spKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 1273
    const/4 v3, 0x0

    .line 1272
    invoke-virtual {v2, v1, v3}, Lcom/android/launcher4/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1275
    .local v0, "sp":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher4/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 1276
    iget-object v4, p0, Lcom/android/launcher4/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1274
    invoke-static {v2, v0, v3, v4}, Lcom/android/launcher4/WallpaperPickerActivity;->suggestWallpaperDimension(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/view/WindowManager;Landroid/app/WallpaperManager;)V

    .line 1277
    return-void
.end method

.method setup(Lcom/android/launcher4/DragController;)V
    .locals 2
    .param p1, "dragController"    # Lcom/android/launcher4/DragController;

    .prologue
    .line 4476
    new-instance v0, Lcom/android/launcher4/SpringLoadedDragController;

    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher4/SpringLoadedDragController;-><init>(Lcom/android/launcher4/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher4/Workspace;->mSpringLoadedDragController:Lcom/android/launcher4/SpringLoadedDragController;

    .line 4477
    iput-object p1, p0, Lcom/android/launcher4/Workspace;->mDragController:Lcom/android/launcher4/DragController;

    .line 4482
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher4/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 4483
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->setWallpaperDimension()V

    .line 4484
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 505
    move-object v0, p1

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 506
    .local v0, "cl":Lcom/android/launcher4/CellLayout;
    invoke-super {p0, p1}, Lcom/android/launcher4/SmoothPagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 507
    iget-boolean v1, p0, Lcom/android/launcher4/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 508
    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 509
    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getBackgroundAlpha()F

    move-result v1

    .line 506
    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method shouldVoiceButtonProxyBeVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2184
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isOnOrMovingToCustomContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2190
    :cond_0
    :goto_0
    return v0

    .line 2187
    :cond_1
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v2, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    if-ne v1, v2, :cond_0

    .line 2190
    const/4 v0, 0x1

    goto :goto_0
.end method

.method showCustomContentIfNecessary()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2730
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v3, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    .line 2731
    .local v0, "show":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2732
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v4, -0x12d

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher4/CellLayout;->setVisibility(I)V

    .line 2735
    :cond_0
    return-void

    .end local v0    # "show":Z
    :cond_1
    move v0, v2

    .line 2730
    goto :goto_0
.end method

.method showOutlines()V
    .locals 4

    .prologue
    .line 1479
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher4/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2

    .line 1480
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1482
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1483
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1485
    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 1484
    invoke-static {p0, v0, v1}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 1486
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 1487
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1488
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1490
    :cond_2
    return-void
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    .prologue
    .line 1509
    iget-boolean v0, p0, Lcom/android/launcher4/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1510
    iget v0, p0, Lcom/android/launcher4/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->snapToPage(I)V

    .line 1512
    :cond_0
    return-void
.end method

.method protected snapToPage(ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1283
    :cond_0
    iput-object p2, p0, Lcom/android/launcher4/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 1284
    const/16 v0, 0x3b6

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher4/Workspace;->snapToPage(II)V

    .line 1285
    return-void
.end method

.method protected snapToScreenId(JLjava/lang/Runnable;)V
    .locals 1
    .param p1, "screenId"    # J
    .param p3, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1288
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher4/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher4/Workspace;->snapToPage(ILjava/lang/Runnable;)V

    .line 1289
    return-void
.end method

.method startDrag(Lcom/android/launcher4/CellLayout$CellInfo;)V
    .locals 4
    .param p1, "cellInfo"    # Lcom/android/launcher4/CellLayout$CellInfo;

    .prologue
    .line 2898
    iget-object v1, p1, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2902
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2919
    :goto_0
    return-void

    .line 2906
    :cond_0
    iput-object p1, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    .line 2907
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2908
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/CellLayout;

    .line 2909
    .local v2, "layout":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v2, v1}, Lcom/android/launcher4/CellLayout;->prepareChildForDrag(Landroid/view/View;)V

    .line 2911
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 2912
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2914
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 2917
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x2

    invoke-direct {p0, v1, v0, v3}, Lcom/android/launcher4/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher4/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2918
    invoke-virtual {p0, v1, p0}, Lcom/android/launcher4/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher4/DragSource;)V

    goto :goto_0
.end method

.method public stripEmptyScreens()V
    .locals 14

    .prologue
    const-wide/16 v12, -0xc9

    .line 851
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isPageMoving()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 853
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/launcher4/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getNextPage()I

    move-result v1

    .line 858
    .local v1, "currentPage":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v5, "removeScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 869
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->numCustomPages()I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 871
    .local v3, "minScreens":I
    const/4 v4, 0x0

    .line 872
    .local v4, "pageShift":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 891
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 893
    invoke-static {}, Lcom/android/launcher4/Launcher;->getModel()Lcom/android/launcher4/LauncherModel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 894
    iget-object v8, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    .line 893
    invoke-virtual {v6, v7, v8}, Lcom/android/launcher4/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 897
    :cond_3
    if-ltz v4, :cond_0

    .line 898
    sub-int v6, v1, v4

    invoke-virtual {p0, v6}, Lcom/android/launcher4/Workspace;->setCurrentPage(I)V

    goto :goto_0

    .line 859
    .end local v3    # "minScreens":I
    .end local v4    # "pageShift":I
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 860
    .local v2, "id":Ljava/lang/Long;
    iget-object v7, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 861
    .local v0, "cl":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v7

    if-nez v7, :cond_2

    .line 862
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 872
    .end local v0    # "cl":Lcom/android/launcher4/CellLayout;
    .end local v2    # "id":Ljava/lang/Long;
    .restart local v3    # "minScreens":I
    .restart local v4    # "pageShift":I
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 873
    .restart local v2    # "id":Ljava/lang/Long;
    iget-object v7, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 874
    .restart local v0    # "cl":Lcom/android/launcher4/CellLayout;
    iget-object v7, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget-object v7, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 876
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->getChildCount()I

    move-result v7

    if-le v7, v3, :cond_7

    .line 877
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-ge v7, v1, :cond_6

    .line 878
    add-int/lit8 v4, v4, 0x1

    .line 880
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/android/launcher4/CellLayout;->setBackgroundAlpha(F)V

    .line 881
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Workspace;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 886
    :cond_7
    iget-object v7, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    iget-object v7, p0, Lcom/android/launcher4/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 4733
    const/4 v0, 0x1

    return v0
.end method

.method public syncPageItems(IZ)V
    .locals 0
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 5202
    return-void
.end method

.method public syncPages()V
    .locals 0

    .prologue
    .line 5198
    return-void
.end method

.method public transitionStateShouldAllowDrop()Z
    .locals 2

    .prologue
    .line 2996
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher4/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v1, Lcom/android/launcher4/Workspace$State;->SMALL:Lcom/android/launcher4/Workspace$State;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateCustomContentVisibility()V
    .locals 4

    .prologue
    .line 2722
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v2, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    .line 2723
    .local v0, "visibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher4/Workspace;->hasCustomContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2724
    iget-object v1, p0, Lcom/android/launcher4/Workspace;->mWorkspaceScreens:Ljava/util/HashMap;

    const-wide/16 v2, -0x12d

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/CellLayout;

    invoke-virtual {v1, v0}, Lcom/android/launcher4/CellLayout;->setVisibility(I)V

    .line 2727
    :cond_0
    return-void

    .line 2722
    .end local v0    # "visibility":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public updateInteractionForState()V
    .locals 2

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mState:Lcom/android/launcher4/Workspace$State;

    sget-object v1, Lcom/android/launcher4/Workspace$State;->NORMAL:Lcom/android/launcher4/Workspace$State;

    if-eq v0, v1, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->onInteractionBegin()V

    .line 2199
    :goto_0
    return-void

    .line 2197
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->onInteractionEnd()V

    goto :goto_0
.end method

.method updateItemLocationsInDatabase(Lcom/android/launcher4/CellLayout;)V
    .locals 14
    .param p1, "cl"    # Lcom/android/launcher4/CellLayout;

    .prologue
    .line 4558
    invoke-virtual {p1}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 4560
    .local v11, "count":I
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Workspace;->getIdForScreen(Lcom/android/launcher4/CellLayout;)J

    move-result-wide v4

    .line 4561
    .local v4, "screenId":J
    const/16 v10, -0x64

    .line 4563
    .local v10, "container":I
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4564
    const-wide/16 v4, -0x1

    .line 4565
    const/16 v10, -0x65

    .line 4568
    :cond_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-lt v12, v11, :cond_1

    .line 4580
    return-void

    .line 4569
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 4570
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/ItemInfo;

    .line 4573
    .local v1, "info":Lcom/android/launcher4/ItemInfo;
    if-eqz v1, :cond_2

    iget-boolean v0, v1, Lcom/android/launcher4/ItemInfo;->requiresDbUpdate:Z

    if-eqz v0, :cond_2

    .line 4574
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/launcher4/ItemInfo;->requiresDbUpdate:Z

    .line 4575
    iget-object v0, p0, Lcom/android/launcher4/Workspace;->mLauncher:Lcom/android/launcher4/Launcher;

    int-to-long v2, v10

    .line 4576
    iget v6, v1, Lcom/android/launcher4/ItemInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher4/ItemInfo;->cellY:I

    iget v8, v1, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 4577
    iget v9, v1, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 4575
    invoke-static/range {v0 .. v9}, Lcom/android/launcher4/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJIIII)V

    .line 4568
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5095
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v4

    .line 5096
    .local v4, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_1

    .line 5122
    return-void

    .line 5096
    :cond_1
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher4/ShortcutAndWidgetContainer;

    .line 5097
    .local v9, "layout":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    invoke-virtual {v9}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 5098
    .local v3, "childCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    if-ge v7, v3, :cond_0

    .line 5099
    invoke-virtual {v9, v7}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 5100
    .local v13, "view":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 5102
    .local v12, "tag":Ljava/lang/Object;
    instance-of v14, v12, Lcom/android/launcher4/ItemInfo;

    if-eqz v14, :cond_2

    move-object v14, v12

    .line 5104
    check-cast v14, Lcom/android/launcher4/ItemInfo;

    invoke-static {v14}, Lcom/android/launcher4/LauncherModel;->isShortcutInfoUpdateable(Lcom/android/launcher4/ItemInfo;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v5, v12

    .line 5105
    check-cast v5, Lcom/android/launcher4/ShortcutInfo;

    .line 5107
    .local v5, "info":Lcom/android/launcher4/ShortcutInfo;
    iget-object v6, v5, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 5108
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 5109
    .local v10, "name":Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5110
    .local v2, "appCount":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_1
    if-lt v8, v2, :cond_3

    .line 5098
    .end local v2    # "appCount":I
    .end local v5    # "info":Lcom/android/launcher4/ShortcutInfo;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "k":I
    .end local v10    # "name":Landroid/content/ComponentName;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5111
    .restart local v2    # "appCount":I
    .restart local v5    # "info":Lcom/android/launcher4/ShortcutInfo;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v8    # "k":I
    .restart local v10    # "name":Landroid/content/ComponentName;
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/AppInfo;

    .line 5112
    .local v1, "app":Lcom/android/launcher4/AppInfo;
    iget-object v14, v1, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v14, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v11, v13

    .line 5113
    check-cast v11, Lcom/android/launcher4/BubbleTextView;

    .line 5114
    .local v11, "shortcut":Lcom/android/launcher4/BubbleTextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher4/Workspace;->mIconCache:Lcom/android/launcher4/IconCache;

    invoke-virtual {v5, v14}, Lcom/android/launcher4/ShortcutInfo;->updateIcon(Lcom/android/launcher4/IconCache;)V

    .line 5115
    iget-object v14, v1, Lcom/android/launcher4/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v5, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 5116
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher4/Workspace;->mIconCache:Lcom/android/launcher4/IconCache;

    invoke-virtual {v11, v5, v14}, Lcom/android/launcher4/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher4/ShortcutInfo;Lcom/android/launcher4/IconCache;)V

    .line 5110
    .end local v11    # "shortcut":Lcom/android/launcher4/BubbleTextView;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher4/CellLayout;[IF)Z
    .locals 7
    .param p1, "dragInfo"    # Ljava/lang/Object;
    .param p2, "target"    # Lcom/android/launcher4/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3129
    iget v5, p0, Lcom/android/launcher4/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v5, p4, v5

    if-lez v5, :cond_1

    .line 3148
    :cond_0
    :goto_0
    return v3

    .line 3131
    :cond_1
    aget v5, p3, v3

    aget v6, p3, v4

    invoke-virtual {p2, v5, v6}, Lcom/android/launcher4/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 3133
    .local v0, "dropOverView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 3135
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 3134
    check-cast v2, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 3136
    .local v2, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iget-boolean v5, v2, Lcom/android/launcher4/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v5, :cond_2

    .line 3137
    iget v5, v2, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v2, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    if-ne v5, v6, :cond_0

    iget v5, v2, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellY:I

    iget v6, v2, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v5, v6, :cond_0

    .line 3142
    .end local v2    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    :cond_2
    instance-of v5, v0, Lcom/android/launcher4/FolderIcon;

    if-eqz v5, :cond_0

    move-object v1, v0

    .line 3143
    check-cast v1, Lcom/android/launcher4/FolderIcon;

    .line 3144
    .local v1, "fi":Lcom/android/launcher4/FolderIcon;
    invoke-virtual {v1, p1}, Lcom/android/launcher4/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 3145
    goto :goto_0
.end method

.method willCreateUserFolder(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/CellLayout;[IFZ)Z
    .locals 9
    .param p1, "info"    # Lcom/android/launcher4/ItemInfo;
    .param p2, "target"    # Lcom/android/launcher4/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "considerTimeout"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3098
    iget v7, p0, Lcom/android/launcher4/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v7, p4, v7

    if-lez v7, :cond_1

    .line 3124
    :cond_0
    :goto_0
    return v6

    .line 3100
    :cond_1
    aget v7, p3, v6

    aget v8, p3, v5

    invoke-virtual {p2, v7, v8}, Lcom/android/launcher4/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 3102
    .local v1, "dropOverView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 3104
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3103
    check-cast v3, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 3105
    .local v3, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iget-boolean v7, v3, Lcom/android/launcher4/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v7, :cond_2

    .line 3106
    iget v7, v3, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellX:I

    iget v8, v3, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    if-ne v7, v8, :cond_0

    iget v7, v3, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellY:I

    iget v8, v3, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v7, v8, :cond_0

    .line 3111
    .end local v3    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    .line 3112
    .local v2, "hasntMoved":Z
    iget-object v7, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    if-eqz v7, :cond_3

    .line 3113
    iget-object v7, p0, Lcom/android/launcher4/Workspace;->mDragInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    iget-object v7, v7, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne v1, v7, :cond_5

    move v2, v5

    .line 3116
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 3117
    if-eqz p5, :cond_4

    iget-boolean v7, p0, Lcom/android/launcher4/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v7, :cond_0

    .line 3121
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v0, v7, Lcom/android/launcher4/ShortcutInfo;

    .line 3122
    .local v0, "aboveShortcut":Z
    iget v7, p1, Lcom/android/launcher4/ItemInfo;->itemType:I

    if-eqz v7, :cond_6

    iget v7, p1, Lcom/android/launcher4/ItemInfo;->itemType:I

    if-eq v7, v5, :cond_6

    move v4, v6

    .line 3124
    .local v4, "willBecomeShortcut":Z
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    move v6, v5

    goto :goto_0

    .end local v0    # "aboveShortcut":Z
    .end local v4    # "willBecomeShortcut":Z
    :cond_5
    move v2, v6

    .line 3113
    goto :goto_1

    .restart local v0    # "aboveShortcut":Z
    :cond_6
    move v4, v5

    .line 3122
    goto :goto_2
.end method
