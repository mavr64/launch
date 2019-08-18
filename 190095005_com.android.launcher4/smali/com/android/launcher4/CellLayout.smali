.class public Lcom/android/launcher4/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/CellLayout$CellAndSpan;,
        Lcom/android/launcher4/CellLayout$CellInfo;,
        Lcom/android/launcher4/CellLayout$CellLayoutAnimationController;,
        Lcom/android/launcher4/CellLayout$ItemConfiguration;,
        Lcom/android/launcher4/CellLayout$LayoutParams;,
        Lcom/android/launcher4/CellLayout$ReorderHintAnimation;,
        Lcom/android/launcher4/CellLayout$ViewCluster;
    }
.end annotation


# static fields
.field private static final DEBUG_VISUALIZE_OCCUPIED:Z = false

.field private static final DESTRUCTIVE_REORDER:Z = false

.field private static final INVALID_DIRECTION:I = -0x64

.field static final LANDSCAPE:I = 0x0

.field public static final MODE_ACCEPT_DROP:I = 0x3

.field public static final MODE_DRAG_OVER:I = 0x0

.field public static final MODE_ON_DROP:I = 0x1

.field public static final MODE_ON_DROP_EXTERNAL:I = 0x2

.field static final PORTRAIT:I = 0x1

.field private static final REORDER_ANIMATION_DURATION:I = 0x96

.field private static final REORDER_HINT_MAGNITUDE:F = 0.12f

.field static final TAG:Ljava/lang/String; = "CellLayout"

.field private static final sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private FOREGROUND_ALPHA_DAMPER:F

.field private mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher4/CellLayout$CellInfo;

.field private mCellWidth:I

.field private mCountX:I

.field private mCountY:I

.field private mDirectionVector:[I

.field private final mDragCell:[I

.field private mDragEnforcer:Lcom/android/launcher4/DropTarget$DragEnforcer;

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher4/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Rect;

.field private mDragging:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mFixedCellHeight:I

.field private mFixedCellWidth:I

.field private mFixedHeight:I

.field private mFixedWidth:I

.field private mFolderLeaveBehindCell:[I

.field private mFolderOuterRings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/FolderIcon$FolderRingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundAlpha:I

.field private mForegroundPadding:I

.field private mForegroundRect:Landroid/graphics/Rect;

.field private mHeightGap:I

.field private mHotseatScale:F

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIntersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragOverlapping:Z

.field private mIsHotseat:Z

.field private mItemPlacementDirty:Z

.field private mLastDownOnOccupiedCell:Z

.field private mLauncher:Lcom/android/launcher4/Launcher;

.field private mMaxGap:I

.field private mNormalBackground:Landroid/graphics/drawable/Drawable;

.field mOccupied:[[Z

.field private mOccupiedRect:Landroid/graphics/Rect;

.field private mOriginalHeightGap:I

.field private mOriginalWidthGap:I

.field private mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverScrollLeft:Landroid/graphics/drawable/Drawable;

.field private mOverScrollRight:Landroid/graphics/drawable/Drawable;

.field private mPressedOrFocusedIcon:Lcom/android/launcher4/BubbleTextView;

.field mPreviousReorderDirection:[I

.field private final mRect:Landroid/graphics/Rect;

.field private mReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher4/CellLayout$LayoutParams;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mReorderHintAnimationMagnitude:F

.field private mScrollingTransformsDirty:Z

.field private mShakeAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/launcher4/CellLayout$ReorderHintAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

.field mTempLocation:[I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTempRectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mTmpOccupied:[[Z

.field private final mTmpPoint:[I

.field private final mTmpXY:[I

.field mUseActiveGlowBackground:Z

.field private mWidthGap:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 175
    sput-object v0, Lcom/android/launcher4/CellLayout;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    .line 177
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher4/CellLayout;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 188
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher4/CellLayout;->mScrollingTransformsDirty:Z

    .line 81
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 82
    new-instance v5, Lcom/android/launcher4/CellLayout$CellInfo;

    invoke-direct {v5}, Lcom/android/launcher4/CellLayout$CellInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mCellInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    .line 86
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mTmpXY:[I

    .line 87
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mTmpPoint:[I

    .line 88
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    .line 92
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher4/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 97
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mFolderLeaveBehindCell:[I

    .line 99
    const v5, 0x3f266666    # 0.65f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->FOREGROUND_ALPHA_DAMPER:F

    .line 100
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mForegroundAlpha:I

    .line 102
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 114
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mFixedWidth:I

    .line 115
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mFixedHeight:I

    .line 118
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher4/CellLayout;->mIsDragOverlapping:Z

    .line 119
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher4/CellLayout;->mUseActiveGlowBackground:Z

    .line 123
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 124
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v5

    new-array v5, v5, [F

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mDragOutlineAlphas:[F

    .line 126
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v5

    new-array v5, v5, [Lcom/android/launcher4/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher4/InterruptibleInOutAnimator;

    .line 129
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mDragOutlineCurrent:I

    .line 130
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 135
    new-instance v5, Ljava/util/HashMap;

    .line 134
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 137
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    .line 139
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher4/CellLayout;->mItemPlacementDirty:Z

    .line 142
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mDragCell:[I

    .line 144
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher4/CellLayout;->mDragging:Z

    .line 149
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher4/CellLayout;->mIsHotseat:Z

    .line 150
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mHotseatScale:F

    .line 166
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 167
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    .line 168
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mDirectionVector:[I

    .line 169
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mPreviousReorderDirection:[I

    .line 173
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 1327
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 189
    new-instance v5, Lcom/android/launcher4/DropTarget$DragEnforcer;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/launcher4/DropTarget$DragEnforcer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mDragEnforcer:Lcom/android/launcher4/DropTarget$DragEnforcer;

    .line 193
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher4/CellLayout;->setWillNotDraw(Z)V

    .line 194
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher4/CellLayout;->setClipToPadding(Z)V

    move-object/from16 v5, p1

    .line 195
    check-cast v5, Lcom/android/launcher4/Launcher;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 197
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v18

    .line 198
    .local v18, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v21

    .line 199
    .local v21, "grid":Lcom/android/launcher4/DeviceProfile;
    sget-object v5, Lcom/android/launcher4/R$styleable;->CellLayout:[I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v5, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 201
    .local v17, "a":Landroid/content/res/TypedArray;
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    .line 202
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mFixedCellHeight:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mFixedCellHeight:I

    .line 203
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mOriginalWidthGap:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    .line 204
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mOriginalHeightGap:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    .line 205
    const v5, 0x7fffffff

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mMaxGap:I

    .line 206
    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    float-to-int v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mCountX:I

    .line 207
    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/launcher4/DeviceProfile;->numRows:F

    float-to-int v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mCountY:I

    .line 209
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/CellLayout;->mCountY:I

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mOccupied:[[Z

    .line 210
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/CellLayout;->mCountY:I

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    .line 211
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/CellLayout;->mPreviousReorderDirection:[I

    const/4 v6, 0x0

    const/16 v7, -0x64

    aput v7, v5, v6

    .line 212
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/CellLayout;->mPreviousReorderDirection:[I

    const/4 v6, 0x1

    const/16 v7, -0x64

    aput v7, v5, v6

    .line 214
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher4/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 219
    .local v23, "res":Landroid/content/res/Resources;
    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/launcher4/DeviceProfile;->hotseatIconSize:F

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/launcher4/DeviceProfile;->iconSize:F

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mHotseatScale:F

    .line 221
    const v5, 0x7f020670

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .line 222
    const v5, 0x7f020671

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    .line 224
    const v5, 0x7f020653

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    .line 225
    const v5, 0x7f020654

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    .line 227
    const v5, 0x7f0d000c

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 226
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mForegroundPadding:I

    .line 229
    const v5, 0x3df5c28f    # 0.12f

    .line 230
    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/launcher4/DeviceProfile;->iconSizePx:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 229
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher4/CellLayout;->mReorderHintAnimationMagnitude:F

    .line 232
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 233
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 236
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x40200000    # 2.5f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 237
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/CellLayout;->mDragCell:[I

    const/4 v8, 0x1

    const/4 v10, -0x1

    aput v10, v7, v8

    aput v10, v5, v6

    .line 238
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v5

    move/from16 v0, v22

    if-lt v0, v5, :cond_0

    .line 246
    const v5, 0x7f0b0013

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    .line 247
    .local v19, "duration":I
    const/16 v20, 0x0

    .line 248
    .local v20, "fromAlphaValue":F
    const v5, 0x7f0b0014

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v9, v5

    .line 250
    .local v9, "toAlphaValue":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/CellLayout;->mDragOutlineAlphas:[F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([FF)V

    .line 252
    const/16 v22, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher4/InterruptibleInOutAnimator;

    array-length v5, v5

    move/from16 v0, v22

    if-lt v0, v5, :cond_1

    .line 292
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    .line 293
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    .line 295
    new-instance v5, Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    .line 296
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    .line 297
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher4/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CellLayout;->mCountY:I

    move/from16 v16, v0

    .line 296
    invoke-virtual/range {v10 .. v16}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 299
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher4/CellLayout;->addView(Landroid/view/View;)V

    .line 300
    return-void

    .line 239
    .end local v9    # "toAlphaValue":F
    .end local v19    # "duration":I
    .end local v20    # "fromAlphaValue":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v6, v7, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v5, v22

    .line 238
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 254
    .restart local v9    # "toAlphaValue":F
    .restart local v19    # "duration":I
    .restart local v20    # "fromAlphaValue":F
    :cond_1
    new-instance v4, Lcom/android/launcher4/InterruptibleInOutAnimator;

    move/from16 v0, v19

    int-to-long v6, v0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher4/InterruptibleInOutAnimator;-><init>(Landroid/view/View;JFF)V

    .line 255
    .local v4, "anim":Lcom/android/launcher4/InterruptibleInOutAnimator;
    invoke-virtual {v4}, Lcom/android/launcher4/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    move/from16 v24, v22

    .line 257
    .local v24, "thisIndex":I
    invoke-virtual {v4}, Lcom/android/launcher4/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/launcher4/CellLayout$1;

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v6, v0, v4, v1}, Lcom/android/launcher4/CellLayout$1;-><init>(Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/InterruptibleInOutAnimator;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 281
    invoke-virtual {v4}, Lcom/android/launcher4/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/launcher4/CellLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4}, Lcom/android/launcher4/CellLayout$2;-><init>(Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/InterruptibleInOutAnimator;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher4/InterruptibleInOutAnimator;

    aput-object v4, v5, v22

    .line 252
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 97
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$1(Lcom/android/launcher4/CellLayout;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    return v0
.end method

.method static synthetic access$2(Lcom/android/launcher4/CellLayout;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    return v0
.end method

.method static synthetic access$3(Lcom/android/launcher4/CellLayout;)[I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mTmpPoint:[I

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/launcher4/CellLayout;)F
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mReorderHintAnimationMagnitude:F

    return v0
.end method

.method static synthetic access$5(Lcom/android/launcher4/CellLayout;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/launcher4/CellLayout;)[F
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/launcher4/CellLayout;)[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8(Lcom/android/launcher4/CellLayout;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher4/CellLayout$ItemConfiguration;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "currentState"    # Lcom/android/launcher4/CellLayout$ItemConfiguration;

    .prologue
    .line 1557
    iget-object v0, p4, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 1558
    .local v9, "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    const/4 v10, 0x0

    .line 1559
    .local v10, "success":Z
    iget v1, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher4/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 1560
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/launcher4/CellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 1562
    iget v1, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher4/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1564
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ltz v0, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    .line 1566
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    .line 1567
    const/4 v10, 0x1

    .line 1569
    :cond_0
    iget v1, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher4/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 1570
    return v10
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Z
    .locals 25
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "dragView"    # Landroid/view/View;
    .param p5, "currentState"    # Lcom/android/launcher4/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher4/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1905
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v22, 0x1

    .line 1957
    :cond_0
    return v22

    .line 1907
    :cond_1
    const/16 v22, 0x0

    .line 1908
    .local v22, "success":Z
    const/16 v17, 0x0

    .line 1910
    .local v17, "boundingRect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1920
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1925
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    .line 1926
    .local v7, "blockOccupied":[[Z
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .line 1927
    .local v23, "top":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    .line 1930
    .local v21, "left":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher4/CellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 1937
    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 1938
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    move-object/from16 v16, v0

    move-object/from16 v8, p0

    move-object/from16 v13, p3

    move-object v15, v7

    .line 1937
    invoke-direct/range {v8 .. v16}, Lcom/android/launcher4/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_2

    .line 1942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v19, v2, v3

    .line 1943
    .local v19, "deltaX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v20, v2, v3

    .line 1944
    .local v20, "deltaY":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1949
    const/16 v22, 0x1

    .line 1953
    .end local v19    # "deltaX":I
    .end local v20    # "deltaY":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 1954
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 1955
    .local v18, "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    move-object/from16 v0, v18

    iget v9, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v11, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    const/4 v14, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/launcher4/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_4

    .line 1910
    .end local v7    # "blockOccupied":[[Z
    .end local v18    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    .end local v21    # "left":I
    .end local v23    # "top":I
    .end local v24    # "v":Landroid/view/View;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 1911
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 1912
    .restart local v18    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    if-nez v17, :cond_4

    .line 1913
    new-instance v17, Landroid/graphics/Rect;

    .end local v17    # "boundingRect":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, v8

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1914
    .restart local v17    # "boundingRect":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 1915
    :cond_4
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    goto/16 :goto_0

    .line 1920
    .end local v18    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    .end local v24    # "v":Landroid/view/View;
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 1921
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 1922
    .restart local v18    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher4/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto/16 :goto_1

    .line 1930
    .end local v18    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    .end local v24    # "v":Landroid/view/View;
    .restart local v7    # "blockOccupied":[[Z
    .restart local v21    # "left":I
    .restart local v23    # "top":I
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 1931
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 1932
    .restart local v18    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    sub-int v3, v2, v21

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    sub-int v4, v2, v23

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher4/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto/16 :goto_2

    .line 1944
    .end local v18    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    .end local v24    # "v":Landroid/view/View;
    .restart local v19    # "deltaX":I
    .restart local v20    # "deltaY":I
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 1945
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 1946
    .restart local v18    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    add-int v3, v3, v19

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    .line 1947
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    add-int v3, v3, v20

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    goto/16 :goto_3
.end method

.method private animateItemsToSolution(Lcom/android/launcher4/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .locals 15
    .param p1, "solution"    # Lcom/android/launcher4/CellLayout$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;
    .param p3, "commitDragView"    # Z

    .prologue
    .line 2223
    iget-object v14, p0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    .line 2224
    .local v14, "occupied":[[Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    iget v1, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    if-lt v12, v1, :cond_1

    .line 2230
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 2231
    .local v11, "childCount":I
    const/4 v12, 0x0

    :goto_1
    if-lt v12, v11, :cond_3

    .line 2241
    if-eqz p3, :cond_0

    .line 2242
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewX:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewY:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2243
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewSpanY:I

    const/4 v9, 0x1

    move-object v3, p0

    move-object v8, v14

    .line 2242
    invoke-direct/range {v3 .. v9}, Lcom/android/launcher4/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2245
    :cond_0
    return-void

    .line 2225
    .end local v11    # "childCount":I
    :cond_1
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    iget v1, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    if-lt v13, v1, :cond_2

    .line 2224
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2226
    :cond_2
    aget-object v1, v14, v12

    const/4 v3, 0x0

    aput-boolean v3, v1, v13

    .line 2225
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2232
    .end local v13    # "j":I
    .restart local v11    # "childCount":I
    :cond_3
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v12}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2233
    .local v2, "child":Landroid/view/View;
    move-object/from16 v0, p2

    if-ne v2, v0, :cond_5

    .line 2231
    :cond_4
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2234
    :cond_5
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 2235
    .local v10, "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    if-eqz v10, :cond_4

    .line 2236
    iget v3, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v4, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    const/16 v5, 0x96

    const/4 v6, 0x0

    .line 2237
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 2236
    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher4/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2238
    iget v4, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    const/4 v9, 0x1

    move-object v3, p0

    move-object v8, v14

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher4/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_3
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Z
    .locals 5
    .param p2, "occupied"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "ignoreView"    # Landroid/view/View;
    .param p5, "solution"    # Lcom/android/launcher4/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher4/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "intersectingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1969
    aget v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget v4, p3, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v1, :cond_2

    .line 1972
    aget v0, p3, v1

    .line 1973
    .local v0, "temp":I
    aput v2, p3, v1

    .line 1975
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher4/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 1976
    if-eqz v3, :cond_1

    .line 2058
    .end local v0    # "temp":I
    :cond_0
    :goto_0
    return v1

    .line 1979
    .restart local v0    # "temp":I
    :cond_1
    aput v0, p3, v1

    .line 1980
    aget v0, p3, v2

    .line 1981
    aput v2, p3, v2

    .line 1983
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher4/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 1984
    if-nez v3, :cond_0

    .line 1988
    aput v0, p3, v2

    .line 1991
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 1992
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 1993
    aget v0, p3, v1

    .line 1994
    aput v2, p3, v1

    .line 1995
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher4/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 1996
    if-nez v3, :cond_0

    .line 2000
    aput v0, p3, v1

    .line 2001
    aget v0, p3, v2

    .line 2002
    aput v2, p3, v2

    .line 2003
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher4/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 2004
    if-nez v3, :cond_0

    .line 2008
    aput v0, p3, v2

    .line 2009
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2010
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    :goto_1
    move v1, v2

    .line 2058
    goto :goto_0

    .line 2015
    .end local v0    # "temp":I
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher4/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 2016
    if-nez v3, :cond_0

    .line 2020
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2021
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2022
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher4/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 2023
    if-nez v3, :cond_0

    .line 2027
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2028
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2034
    aget v0, p3, v1

    .line 2035
    .restart local v0    # "temp":I
    aget v3, p3, v2

    aput v3, p3, v1

    .line 2036
    aput v0, p3, v2

    .line 2037
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher4/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 2038
    if-nez v3, :cond_0

    .line 2043
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2044
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2045
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher4/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 2046
    if-nez v3, :cond_0

    .line 2050
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2051
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2054
    aget v0, p3, v1

    .line 2055
    aget v3, p3, v2

    aput v3, p3, v1

    .line 2056
    aput v0, p3, v2

    goto :goto_1
.end method

.method private beginOrAdjustHintAnimations(Lcom/android/launcher4/CellLayout$ItemConfiguration;Landroid/view/View;I)V
    .locals 13
    .param p1, "solution"    # Lcom/android/launcher4/CellLayout$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;
    .param p3, "delay"    # I

    .prologue
    .line 2249
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v10

    .line 2250
    .local v10, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-lt v11, v10, :cond_0

    .line 2261
    return-void

    .line 2251
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v11}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2252
    .local v2, "child":Landroid/view/View;
    if-ne v2, p2, :cond_2

    .line 2250
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2253
    :cond_2
    iget-object v1, p1, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 2254
    .local v9, "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 2255
    .local v12, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    if-eqz v9, :cond_1

    .line 2256
    new-instance v0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;

    iget v3, v12, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iget v4, v12, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    .line 2257
    iget v5, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v6, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v7, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    iget v8, v9, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    move-object v1, p0

    .line 2256
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;-><init>(Lcom/android/launcher4/CellLayout;Landroid/view/View;IIIIII)V

    .line 2258
    .local v0, "rha":Lcom/android/launcher4/CellLayout$ReorderHintAnimation;
    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->animate()V

    goto :goto_1
.end method

.method private clearOccupiedCells()V
    .locals 4

    .prologue
    .line 3070
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    if-lt v0, v2, :cond_0

    .line 3075
    return-void

    .line 3071
    :cond_0
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_1
    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    if-lt v1, v2, :cond_1

    .line 3070
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3072
    :cond_1
    iget-object v2, p0, Lcom/android/launcher4/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 3071
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private clearTagCellInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 777
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mCellInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    .line 778
    .local v0, "cellInfo":Lcom/android/launcher4/CellLayout$CellInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 779
    iput v2, v0, Lcom/android/launcher4/CellLayout$CellInfo;->cellX:I

    .line 780
    iput v2, v0, Lcom/android/launcher4/CellLayout$CellInfo;->cellY:I

    .line 781
    iput v3, v0, Lcom/android/launcher4/CellLayout$CellInfo;->spanX:I

    .line 782
    iput v3, v0, Lcom/android/launcher4/CellLayout$CellInfo;->spanY:I

    .line 783
    invoke-virtual {p0, v0}, Lcom/android/launcher4/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 784
    return-void
.end method

.method private commitTempPlacement()V
    .locals 8

    .prologue
    .line 2386
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    if-lt v2, v6, :cond_0

    .line 2391
    iget-object v6, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v6}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 2392
    .local v1, "childCount":I
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_2

    .line 2409
    iget-object v6, p0, Lcom/android/launcher4/CellLayout;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/launcher4/Workspace;->updateItemLocationsInDatabase(Lcom/android/launcher4/CellLayout;)V

    .line 2410
    return-void

    .line 2387
    .end local v1    # "childCount":I
    :cond_0
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget v6, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    if-lt v4, v6, :cond_1

    .line 2386
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2388
    :cond_1
    iget-object v6, p0, Lcom/android/launcher4/CellLayout;->mOccupied:[[Z

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    aget-object v7, v7, v2

    aget-boolean v7, v7, v4

    aput-boolean v7, v6, v4

    .line 2387
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2393
    .end local v4    # "j":I
    .restart local v1    # "childCount":I
    :cond_2
    iget-object v6, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v6, v2}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2394
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 2395
    .local v5, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/ItemInfo;

    .line 2398
    .local v3, "info":Lcom/android/launcher4/ItemInfo;
    if-eqz v3, :cond_5

    .line 2399
    iget v6, v3, Lcom/android/launcher4/ItemInfo;->cellX:I

    iget v7, v5, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellX:I

    if-ne v6, v7, :cond_3

    iget v6, v3, Lcom/android/launcher4/ItemInfo;->cellY:I

    iget v7, v5, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v6, v7, :cond_3

    .line 2400
    iget v6, v3, Lcom/android/launcher4/ItemInfo;->spanX:I

    iget v7, v5, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v6, v7, :cond_3

    iget v6, v3, Lcom/android/launcher4/ItemInfo;->spanY:I

    iget v7, v5, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v6, v7, :cond_4

    .line 2401
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/android/launcher4/ItemInfo;->requiresDbUpdate:Z

    .line 2403
    :cond_4
    iget v6, v5, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellX:I

    iput v6, v5, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iput v6, v3, Lcom/android/launcher4/ItemInfo;->cellX:I

    .line 2404
    iget v6, v5, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellY:I

    iput v6, v5, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    iput v6, v3, Lcom/android/launcher4/ItemInfo;->cellY:I

    .line 2405
    iget v6, v5, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    iput v6, v3, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 2406
    iget v6, v5, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    iput v6, v3, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 2392
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private completeAndClearReorderHintAnimations()V
    .locals 3

    .prologue
    .line 2379
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2382
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2383
    return-void

    .line 2379
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;

    .line 2380
    .local v0, "a":Lcom/android/launcher4/CellLayout$ReorderHintAnimation;
    invoke-static {v0}, Lcom/android/launcher4/CellLayout$ReorderHintAnimation;->access$0(Lcom/android/launcher4/CellLayout$ReorderHintAnimation;)V

    goto :goto_0
.end method

.method private computeDirectionVector(FF[I)V
    .locals 8
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F
    .param p3, "result"    # [I

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    .line 2120
    div-float v2, p2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 2122
    .local v0, "angle":D
    aput v4, p3, v4

    .line 2123
    aput v4, p3, v5

    .line 2124
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_0

    .line 2125
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v4

    .line 2127
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_1

    .line 2128
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v5

    .line 2130
    :cond_1
    return-void
.end method

.method private copyCurrentStateToSolution(Lcom/android/launcher4/CellLayout$ItemConfiguration;Z)V
    .locals 10
    .param p1, "solution"    # Lcom/android/launcher4/CellLayout$ItemConfiguration;
    .param p2, "temp"    # Z

    .prologue
    .line 2181
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v7

    .line 2182
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v7, :cond_0

    .line 2193
    return-void

    .line 2183
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v8}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2184
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 2186
    .local v9, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    if-eqz p2, :cond_1

    .line 2187
    new-instance v0, Lcom/android/launcher4/CellLayout$CellAndSpan;

    iget v2, v9, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v9, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellY:I

    iget v4, v9, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v9, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/CellLayout$CellAndSpan;-><init>(Lcom/android/launcher4/CellLayout;IIII)V

    .line 2191
    .local v0, "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    :goto_1
    invoke-virtual {p1, v6, v0}, Lcom/android/launcher4/CellLayout$ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher4/CellLayout$CellAndSpan;)V

    .line 2182
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2189
    .end local v0    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    :cond_1
    new-instance v0, Lcom/android/launcher4/CellLayout$CellAndSpan;

    iget v2, v9, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iget v3, v9, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    iget v4, v9, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v9, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/CellLayout$CellAndSpan;-><init>(Lcom/android/launcher4/CellLayout;IIII)V

    .restart local v0    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    goto :goto_1
.end method

.method private copyOccupiedArray([[Z)V
    .locals 4
    .param p1, "occupied"    # [[Z

    .prologue
    .line 2133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    if-lt v0, v2, :cond_0

    .line 2138
    return-void

    .line 2134
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    if-lt v1, v2, :cond_1

    .line 2133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2135
    :cond_1
    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/android/launcher4/CellLayout;->mOccupied:[[Z

    aget-object v3, v3, v0

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    .line 2134
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private copySolutionToTempState(Lcom/android/launcher4/CellLayout$ItemConfiguration;Landroid/view/View;)V
    .locals 13
    .param p1, "solution"    # Lcom/android/launcher4/CellLayout$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 2196
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    if-lt v10, v0, :cond_0

    .line 2202
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v9

    .line 2203
    .local v9, "childCount":I
    const/4 v10, 0x0

    :goto_1
    if-lt v10, v9, :cond_2

    .line 2216
    iget v1, p1, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewX:I

    iget v2, p1, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewY:I

    iget v3, p1, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2217
    iget v4, p1, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewSpanY:I

    iget-object v5, p0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    move-object v0, p0

    .line 2216
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher4/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2218
    return-void

    .line 2197
    .end local v9    # "childCount":I
    :cond_0
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    if-lt v11, v0, :cond_1

    .line 2196
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2198
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    aget-object v0, v0, v10

    const/4 v1, 0x0

    aput-boolean v1, v0, v11

    .line 2197
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2204
    .end local v11    # "j":I
    .restart local v9    # "childCount":I
    :cond_2
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v10}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2205
    .local v8, "child":Landroid/view/View;
    if-ne v8, p2, :cond_4

    .line 2203
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2206
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 2207
    .local v12, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iget-object v0, p1, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 2208
    .local v7, "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    if-eqz v7, :cond_3

    .line 2209
    iget v0, v7, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iput v0, v12, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellX:I

    .line 2210
    iget v0, v7, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iput v0, v12, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellY:I

    .line 2211
    iget v0, v7, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    iput v0, v12, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    .line 2212
    iget v0, v7, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    iput v0, v12, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    .line 2213
    iget v1, v7, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v2, v7, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v3, v7, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    iget v4, v7, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher4/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_3
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 21
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "direction"    # [I
    .param p6, "occupied"    # [[Z
    .param p7, "blockOccupied"    # [[Z
    .param p8, "result"    # [I

    .prologue
    .line 1506
    if-eqz p8, :cond_1

    move-object/from16 v6, p8

    .line 1507
    .local v6, "bestXY":[I
    :goto_0
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 1508
    .local v5, "bestDistance":F
    const/high16 v4, -0x80000000

    .line 1510
    .local v4, "bestDirectionScore":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher4/CellLayout;->mCountX:I

    .line 1511
    .local v7, "countX":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher4/CellLayout;->mCountY:I

    .line 1513
    .local v8, "countY":I
    const/16 v17, 0x0

    .local v17, "y":I
    :goto_1
    add-int/lit8 v18, p4, -0x1

    sub-int v18, v8, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    .line 1548
    const v18, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v18, v5, v18

    if-nez v18, :cond_0

    .line 1549
    const/16 v18, 0x0

    const/16 v19, -0x1

    aput v19, v6, v18

    .line 1550
    const/16 v18, 0x1

    const/16 v19, -0x1

    aput v19, v6, v18

    .line 1552
    :cond_0
    return-object v6

    .line 1506
    .end local v4    # "bestDirectionScore":I
    .end local v5    # "bestDistance":F
    .end local v6    # "bestXY":[I
    .end local v7    # "countX":I
    .end local v8    # "countY":I
    .end local v17    # "y":I
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v6, v0, [I

    goto :goto_0

    .line 1515
    .restart local v4    # "bestDirectionScore":I
    .restart local v5    # "bestDistance":F
    .restart local v6    # "bestXY":[I
    .restart local v7    # "countX":I
    .restart local v8    # "countY":I
    .restart local v17    # "y":I
    :cond_2
    const/16 v16, 0x0

    .local v16, "x":I
    :goto_2
    add-int/lit8 v18, p3, -0x1

    sub-int v18, v7, v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 1513
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1517
    :cond_3
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    move/from16 v0, p3

    if-lt v14, v0, :cond_8

    .line 1526
    sub-int v18, v16, p1

    sub-int v19, v16, p1

    mul-int v18, v18, v19

    sub-int v19, v17, p2

    sub-int v20, v17, p2

    mul-int v19, v19, v20

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v12, v0

    .line 1527
    .local v12, "distance":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher4/CellLayout;->mTmpPoint:[I

    .line 1528
    .local v9, "curDirection":[I
    sub-int v18, v16, p1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-int v19, v17, p2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v9}, Lcom/android/launcher4/CellLayout;->computeDirectionVector(FF[I)V

    .line 1531
    const/16 v18, 0x0

    aget v18, p5, v18

    const/16 v19, 0x0

    aget v19, v9, v19

    mul-int v18, v18, v19

    .line 1532
    const/16 v19, 0x1

    aget v19, p5, v19

    const/16 v20, 0x1

    aget v20, v9, v20

    mul-int v19, v19, v20

    .line 1531
    add-int v10, v18, v19

    .line 1533
    .local v10, "curDirectionScore":I
    const/4 v13, 0x0

    .line 1534
    .local v13, "exactDirectionOnly":Z
    const/16 v18, 0x0

    aget v18, p5, v18

    const/16 v19, 0x0

    aget v19, v9, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1535
    const/16 v18, 0x0

    aget v18, p5, v18

    const/16 v19, 0x0

    aget v19, v9, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1534
    const/4 v11, 0x1

    .line 1536
    .local v11, "directionMatches":Z
    :goto_4
    if-nez v11, :cond_4

    if-nez v13, :cond_5

    .line 1537
    :cond_4
    invoke-static {v12, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-ltz v18, :cond_6

    :cond_5
    invoke-static {v12, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-nez v18, :cond_7

    .line 1538
    if-le v10, v4, :cond_7

    .line 1539
    :cond_6
    move v5, v12

    .line 1540
    move v4, v10

    .line 1541
    const/16 v18, 0x0

    aput v16, v6, v18

    .line 1542
    const/16 v18, 0x1

    aput v17, v6, v18

    .line 1515
    .end local v9    # "curDirection":[I
    .end local v10    # "curDirectionScore":I
    .end local v11    # "directionMatches":Z
    .end local v12    # "distance":F
    .end local v13    # "exactDirectionOnly":Z
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 1518
    :cond_8
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_5
    move/from16 v0, p4

    if-lt v15, v0, :cond_9

    .line 1517
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1519
    :cond_9
    add-int v18, v16, v14

    aget-object v18, p6, v18

    add-int v19, v17, v15

    aget-boolean v18, v18, v19

    if-eqz v18, :cond_a

    if-eqz p7, :cond_7

    aget-object v18, p7, v14

    aget-boolean v18, v18, v15

    if-nez v18, :cond_7

    .line 1518
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 1534
    .end local v15    # "j":I
    .restart local v9    # "curDirection":[I
    .restart local v10    # "curDirectionScore":I
    .restart local v12    # "distance":F
    .restart local v13    # "exactDirectionOnly":Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_4
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8
    .param p0, "vacant"    # [I
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "xCount"    # I
    .param p4, "yCount"    # I
    .param p5, "occupied"    # [[Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3048
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    if-lt v4, p4, :cond_0

    move v6, v5

    .line 3066
    :goto_1
    return v6

    .line 3049
    :cond_0
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_2
    if-lt v3, p3, :cond_1

    .line 3048
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3050
    :cond_1
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_3

    move v0, v5

    .line 3051
    .local v0, "available":Z
    :goto_3
    move v1, v3

    .local v1, "i":I
    :goto_4
    add-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_2

    if-lt v3, p3, :cond_4

    .line 3058
    :cond_2
    if-eqz v0, :cond_8

    .line 3059
    aput v3, p0, v5

    .line 3060
    aput v4, p0, v6

    goto :goto_1

    .end local v0    # "available":Z
    .end local v1    # "i":I
    :cond_3
    move v0, v6

    .line 3050
    goto :goto_3

    .line 3052
    .restart local v0    # "available":Z
    .restart local v1    # "i":I
    :cond_4
    move v2, v4

    .local v2, "j":I
    :goto_5
    add-int v7, v4, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_5

    if-lt v4, p4, :cond_6

    .line 3051
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3053
    :cond_6
    if-eqz v0, :cond_7

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_7

    move v0, v6

    .line 3054
    :goto_6
    if-eqz v0, :cond_2

    .line 3052
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    move v0, v5

    .line 3053
    goto :goto_6

    .line 3049
    .end local v2    # "j":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 26
    .param p1, "dragViewCenterX"    # I
    .param p2, "dragViewCenterY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "resultDirection"    # [I

    .prologue
    .line 2453
    const/4 v2, 0x2

    new-array v7, v2, [I

    .local v7, "targetDestination":[I
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 2455
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher4/CellLayout;->findNearestArea(IIII[I)[I

    .line 2456
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 2457
    .local v13, "dragRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v9, v7, v2

    const/4 v2, 0x1

    aget v10, v7, v2

    move-object/from16 v8, p0

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher4/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2458
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2460
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 2461
    .local v20, "dropRegionRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v15, v7, v2

    const/4 v2, 0x1

    aget v16, v7, v2

    .line 2462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v14, p0

    move/from16 v17, p3

    move/from16 v18, p4

    move-object/from16 v19, p5

    .line 2461
    invoke-direct/range {v14 .. v21}, Lcom/android/launcher4/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2464
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v24

    .line 2465
    .local v24, "dropRegionSpanX":I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v25

    .line 2467
    .local v25, "dropRegionSpanY":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v18

    .line 2468
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v19

    move-object/from16 v15, p0

    .line 2467
    invoke-virtual/range {v15 .. v20}, Lcom/android/launcher4/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2470
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, v2, p1

    div-int v22, v2, p3

    .line 2471
    .local v22, "deltaX":I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, v2, p2

    div-int v23, v2, p4

    .line 2473
    .local v23, "deltaY":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/CellLayout;->mCountX:I

    move/from16 v0, v24

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/CellLayout;->mCountX:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 2474
    :cond_0
    const/16 v22, 0x0

    .line 2476
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/CellLayout;->mCountY:I

    move/from16 v0, v25

    if-eq v0, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/CellLayout;->mCountY:I

    move/from16 v0, p4

    if-ne v0, v2, :cond_3

    .line 2477
    :cond_2
    const/16 v23, 0x0

    .line 2480
    :cond_3
    if-nez v22, :cond_4

    if-nez v23, :cond_4

    .line 2482
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, p6, v2

    .line 2483
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, p6, v2

    .line 2487
    :goto_0
    return-void

    .line 2485
    :cond_4
    move/from16 v0, v22

    int-to-float v2, v0

    move/from16 v0, v23

    int-to-float v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v2, v3, v1}, Lcom/android/launcher4/CellLayout;->computeDirectionVector(FF[I)V

    goto :goto_0
.end method

.method static getMetrics(Landroid/graphics/Rect;IIII)V
    .locals 5
    .param p0, "metrics"    # Landroid/graphics/Rect;
    .param p1, "paddedMeasureWidth"    # I
    .param p2, "paddedMeasureHeight"    # I
    .param p3, "countX"    # I
    .param p4, "countY"    # I

    .prologue
    const/4 v4, 0x0

    .line 922
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 923
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 924
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    invoke-virtual {v1, p1, p3}, Lcom/android/launcher4/DeviceProfile;->calculateCellWidth(II)I

    move-result v2

    .line 925
    invoke-virtual {v1, p2, p4}, Lcom/android/launcher4/DeviceProfile;->calculateCellHeight(II)I

    move-result v3

    .line 924
    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 926
    return-void
.end method

.method private getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "boundingRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2492
    .local p7, "intersectingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p6, :cond_0

    .line 2493
    add-int v7, p1, p3

    add-int v8, p2, p4

    move-object/from16 v0, p6

    invoke-virtual {v0, p1, p2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2495
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->clear()V

    .line 2496
    new-instance v5, Landroid/graphics/Rect;

    add-int v7, p1, p3

    add-int v8, p2, p4

    invoke-direct {v5, p1, p2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2497
    .local v5, "r0":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2498
    .local v6, "r1":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v7}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 2499
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_1

    .line 2511
    return-void

    .line 2500
    :cond_1
    iget-object v7, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v7, v3}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2501
    .local v1, "child":Landroid/view/View;
    move-object/from16 v0, p5

    if-ne v1, v0, :cond_3

    .line 2499
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2502
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 2503
    .local v4, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iget v7, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iget v8, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    iget v9, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iget v10, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v9, v10

    iget v10, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    iget v11, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2504
    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2505
    iget-object v7, p0, Lcom/android/launcher4/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2506
    if-eqz p6, :cond_2

    .line 2507
    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method private invalidateBubbleTextView(Lcom/android/launcher4/BubbleTextView;)V
    .locals 6
    .param p1, "icon"    # Lcom/android/launcher4/BubbleTextView;

    .prologue
    .line 338
    invoke-virtual {p1}, Lcom/android/launcher4/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v0

    .line 339
    .local v0, "padding":I
    invoke-virtual {p1}, Lcom/android/launcher4/BubbleTextView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 340
    invoke-virtual {p1}, Lcom/android/launcher4/BubbleTextView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 341
    invoke-virtual {p1}, Lcom/android/launcher4/BubbleTextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 342
    invoke-virtual {p1}, Lcom/android/launcher4/BubbleTextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    .line 339
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher4/CellLayout;->invalidate(IIII)V

    .line 343
    return-void
.end method

.method private lazyInitTempRectStack()V
    .locals 3

    .prologue
    .line 1329
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 1334
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 1331
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mTempRectStack:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private markCellsForRect(Landroid/graphics/Rect;[[ZZ)V
    .locals 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "occupied"    # [[Z
    .param p3, "value"    # Z

    .prologue
    .line 1961
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher4/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 1962
    return-void
.end method

.method private markCellsForView(IIII[[ZZ)V
    .locals 3
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "occupied"    # [[Z
    .param p6, "value"    # Z

    .prologue
    .line 3102
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 3108
    :cond_0
    return-void

    .line 3103
    :cond_1
    move v0, p1

    .local v0, "x":I
    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_0

    .line 3104
    move v1, p2

    .local v1, "y":I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    if-lt v1, v2, :cond_3

    .line 3103
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3105
    :cond_3
    aget-object v2, p5, v0

    aput-boolean p6, v2, v1

    .line 3104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Z
    .locals 20
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "dragView"    # Landroid/view/View;
    .param p5, "currentState"    # Lcom/android/launcher4/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher4/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1811
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v11, Lcom/android/launcher4/CellLayout$ViewCluster;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v11, v0, v1, v2}, Lcom/android/launcher4/CellLayout$ViewCluster;-><init>(Lcom/android/launcher4/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher4/CellLayout$ItemConfiguration;)V

    .line 1812
    .local v11, "cluster":Lcom/android/launcher4/CellLayout$ViewCluster;
    invoke-virtual {v11}, Lcom/android/launcher4/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 1815
    .local v12, "clusterRect":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 1819
    .local v13, "fail":Z
    const/4 v3, 0x0

    aget v3, p3, v3

    if-gez v3, :cond_1

    .line 1820
    const/16 v18, 0x0

    .line 1821
    .local v18, "whichEdge":I
    iget v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v16, v3, v4

    .line 1834
    .local v16, "pushDistance":I
    :goto_0
    if-gtz v16, :cond_4

    .line 1835
    const/4 v14, 0x0

    .line 1900
    :cond_0
    return v14

    .line 1822
    .end local v16    # "pushDistance":I
    .end local v18    # "whichEdge":I
    :cond_1
    const/4 v3, 0x0

    aget v3, p3, v3

    if-lez v3, :cond_2

    .line 1823
    const/16 v18, 0x2

    .line 1824
    .restart local v18    # "whichEdge":I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v12, Landroid/graphics/Rect;->left:I

    sub-int v16, v3, v4

    .line 1825
    .restart local v16    # "pushDistance":I
    goto :goto_0

    .end local v16    # "pushDistance":I
    .end local v18    # "whichEdge":I
    :cond_2
    const/4 v3, 0x1

    aget v3, p3, v3

    if-gez v3, :cond_3

    .line 1826
    const/16 v18, 0x1

    .line 1827
    .restart local v18    # "whichEdge":I
    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v16, v3, v4

    .line 1828
    .restart local v16    # "pushDistance":I
    goto :goto_0

    .line 1829
    .end local v16    # "pushDistance":I
    .end local v18    # "whichEdge":I
    :cond_3
    const/16 v18, 0x3

    .line 1830
    .restart local v18    # "whichEdge":I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    sub-int v16, v3, v4

    .restart local v16    # "pushDistance":I
    goto :goto_0

    .line 1839
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1847
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher4/CellLayout$ItemConfiguration;->save()V

    .line 1852
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/launcher4/CellLayout$ViewCluster;->sortConfigurationForEdgePush(I)V

    .line 1854
    :goto_2
    if-lez v16, :cond_5

    if-eqz v13, :cond_7

    .line 1882
    :cond_5
    const/4 v14, 0x0

    .line 1883
    .local v14, "foundSolution":Z
    invoke-virtual {v11}, Lcom/android/launcher4/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 1887
    if-nez v13, :cond_b

    iget v3, v12, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_b

    iget v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/CellLayout;->mCountX:I

    if-gt v3, v4, :cond_b

    iget v3, v12, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_b

    .line 1888
    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/CellLayout;->mCountY:I

    if-gt v3, v4, :cond_b

    .line 1889
    const/4 v14, 0x1

    .line 1895
    :goto_3
    iget-object v3, v11, Lcom/android/launcher4/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 1896
    .local v17, "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 1897
    .local v10, "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    iget v4, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher4/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_4

    .line 1839
    .end local v10    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    .end local v14    # "foundSolution":Z
    .end local v17    # "v":Landroid/view/View;
    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 1840
    .restart local v17    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 1841
    .restart local v10    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    iget v4, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher4/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto/16 :goto_1

    .line 1855
    .end local v10    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    .end local v17    # "v":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_8
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1875
    :goto_6
    add-int/lit8 v16, v16, -0x1

    .line 1879
    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0, v3}, Lcom/android/launcher4/CellLayout$ViewCluster;->shift(II)V

    goto/16 :goto_2

    .line 1855
    :cond_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 1859
    .restart local v17    # "v":Landroid/view/View;
    iget-object v3, v11, Lcom/android/launcher4/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_8

    .line 1860
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/android/launcher4/CellLayout$ViewCluster;->isViewTouchingEdge(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1861
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 1862
    .local v15, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iget-boolean v3, v15, Lcom/android/launcher4/CellLayout$LayoutParams;->canReorder:Z

    if-nez v3, :cond_a

    .line 1864
    const/4 v13, 0x1

    .line 1865
    goto :goto_6

    .line 1867
    :cond_a
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/launcher4/CellLayout$ViewCluster;->addView(Landroid/view/View;)V

    .line 1868
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 1871
    .restart local v10    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    iget v4, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher4/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_5

    .line 1891
    .end local v10    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    .end local v15    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    .end local v17    # "v":Landroid/view/View;
    .restart local v14    # "foundSolution":Z
    :cond_b
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher4/CellLayout$ItemConfiguration;->restore()V

    goto/16 :goto_3
.end method

.method private rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Z
    .locals 14
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "direction"    # [I
    .param p6, "ignoreView"    # Landroid/view/View;
    .param p7, "solution"    # Lcom/android/launcher4/CellLayout$ItemConfiguration;

    .prologue
    .line 2064
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 2112
    :goto_0
    return v2

    .line 2066
    :cond_1
    iget-object v2, p0, Lcom/android/launcher4/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2067
    iget-object v2, p0, Lcom/android/launcher4/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    move/from16 v0, p2

    invoke-virtual {v2, p1, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2070
    if-eqz p6, :cond_2

    .line 2071
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 2072
    .local v8, "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    if-eqz v8, :cond_2

    .line 2073
    iput p1, v8, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    .line 2074
    move/from16 v0, p2

    iput v0, v8, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    .line 2077
    .end local v8    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    :cond_2
    new-instance v11, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    move/from16 v0, p2

    invoke-direct {v11, p1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2078
    .local v11, "r0":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2079
    .local v12, "r1":Landroid/graphics/Rect;
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2095
    iget-object v3, p0, Lcom/android/launcher4/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher4/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher4/CellLayout;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Z

    move-result v2

    .line 2096
    if-eqz v2, :cond_6

    .line 2097
    const/4 v2, 0x1

    goto :goto_0

    .line 2079
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 2080
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p6

    if-eq v9, v0, :cond_3

    .line 2081
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 2082
    .restart local v8    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 2083
    .local v10, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iget v3, v8, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v4, v8, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v5, v8, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v6, v8, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    iget v6, v8, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v7, v8, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, v7

    invoke-virtual {v12, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2084
    invoke-static {v11, v12}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2085
    iget-boolean v3, v10, Lcom/android/launcher4/CellLayout$LayoutParams;->canReorder:Z

    if-nez v3, :cond_5

    .line 2086
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2088
    :cond_5
    iget-object v3, p0, Lcom/android/launcher4/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2101
    .end local v8    # "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    :cond_6
    iget-object v3, p0, Lcom/android/launcher4/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher4/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher4/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Z

    move-result v2

    .line 2102
    if-eqz v2, :cond_7

    .line 2103
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2107
    :cond_7
    iget-object v2, p0, Lcom/android/launcher4/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2112
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2107
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 2108
    .local v13, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/android/launcher4/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-direct {p0, v13, v3, v0, v1}, Lcom/android/launcher4/CellLayout;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher4/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2109
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static rectToCell(II[I)[I
    .locals 10
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "result"    # [I

    .prologue
    .line 2976
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 2977
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 2978
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    iget-boolean v8, v1, Lcom/android/launcher4/DeviceProfile;->isLandscape:Z

    if-eqz v8, :cond_0

    .line 2979
    const/4 v8, 0x0

    .line 2978
    :goto_0
    invoke-virtual {v1, v8}, Lcom/android/launcher4/DeviceProfile;->getWorkspacePadding(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 2983
    .local v2, "padding":Landroid/graphics/Rect;
    iget v8, v1, Lcom/android/launcher4/DeviceProfile;->widthPx:I

    .line 2984
    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    float-to-int v9, v9

    .line 2983
    invoke-virtual {v1, v8, v9}, Lcom/android/launcher4/DeviceProfile;->calculateCellWidth(II)I

    move-result v4

    .line 2985
    .local v4, "parentWidth":I
    iget v8, v1, Lcom/android/launcher4/DeviceProfile;->heightPx:I

    .line 2986
    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/android/launcher4/DeviceProfile;->numRows:F

    float-to-int v9, v9

    .line 2985
    invoke-virtual {v1, v8, v9}, Lcom/android/launcher4/DeviceProfile;->calculateCellHeight(II)I

    move-result v3

    .line 2987
    .local v3, "parentHeight":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2990
    .local v5, "smallerSize":I
    int-to-float v8, p0

    int-to-float v9, v5

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    .line 2991
    .local v6, "spanX":I
    int-to-float v8, p1

    int-to-float v9, v5

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    .line 2993
    .local v7, "spanY":I
    if-nez p2, :cond_1

    .line 2994
    const/4 v8, 0x2

    new-array p2, v8, [I

    .end local p2    # "result":[I
    const/4 v8, 0x0

    aput v6, p2, v8

    const/4 v8, 0x1

    aput v7, p2, v8

    .line 2998
    :goto_1
    return-object p2

    .line 2979
    .end local v2    # "padding":Landroid/graphics/Rect;
    .end local v3    # "parentHeight":I
    .end local v4    # "parentWidth":I
    .end local v5    # "smallerSize":I
    .end local v6    # "spanX":I
    .end local v7    # "spanY":I
    .restart local p2    # "result":[I
    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    .line 2996
    .restart local v2    # "padding":Landroid/graphics/Rect;
    .restart local v3    # "parentHeight":I
    .restart local v4    # "parentWidth":I
    .restart local v5    # "smallerSize":I
    .restart local v6    # "spanX":I
    .restart local v7    # "spanY":I
    :cond_1
    const/4 v8, 0x0

    aput v6, p2, v8

    .line 2997
    const/4 v8, 0x1

    aput v7, p2, v8

    goto :goto_1
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1337
    .local p1, "used":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    return-void

    .line 1338
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher4/CellLayout$LayoutParams;Z)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "childId"    # I
    .param p4, "params"    # Lcom/android/launcher4/CellLayout$LayoutParams;
    .param p5, "markCells"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 608
    move-object v1, p4

    .line 611
    .local v1, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    instance-of v2, p1, Lcom/android/launcher4/BubbleTextView;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 612
    check-cast v0, Lcom/android/launcher4/BubbleTextView;

    .line 613
    .local v0, "bubbleChild":Lcom/android/launcher4/BubbleTextView;
    iget-boolean v2, p0, Lcom/android/launcher4/CellLayout;->mIsHotseat:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/launcher4/BubbleTextView;->setTextVisibility(Z)V

    .line 616
    .end local v0    # "bubbleChild":Lcom/android/launcher4/BubbleTextView;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getChildrenScale()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 617
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getChildrenScale()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 623
    iget v2, v1, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    if-ltz v2, :cond_5

    iget v2, v1, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iget v5, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    add-int/lit8 v5, v5, -0x1

    if-gt v2, v5, :cond_5

    iget v2, v1, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    if-ltz v2, :cond_5

    iget v2, v1, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    iget v5, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    add-int/lit8 v5, v5, -0x1

    if-gt v2, v5, :cond_5

    .line 626
    iget v2, v1, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v2, :cond_1

    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    iput v2, v1, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    .line 627
    :cond_1
    iget v2, v1, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v2, :cond_2

    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    iput v2, v1, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    .line 629
    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 631
    iget-object v2, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 633
    if-eqz p5, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/launcher4/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 637
    :cond_3
    :goto_1
    return v4

    .restart local v0    # "bubbleChild":Lcom/android/launcher4/BubbleTextView;
    :cond_4
    move v2, v4

    .line 613
    goto :goto_0

    .end local v0    # "bubbleChild":Lcom/android/launcher4/BubbleTextView;
    :cond_5
    move v4, v3

    .line 637
    goto :goto_1
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "duration"    # I
    .param p5, "delay"    # I
    .param p6, "permanent"    # Z
    .param p7, "adjustOccupied"    # Z

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v10

    .line 1087
    .local v10, "clc":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    iget-object v12, p0, Lcom/android/launcher4/CellLayout;->mOccupied:[[Z

    .line 1088
    .local v12, "occupied":[[Z
    if-nez p6, :cond_0

    .line 1089
    iget-object v12, p0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    .line 1092
    :cond_0
    invoke-virtual {v10, p1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 1093
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 1094
    .local v4, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher4/ItemInfo;

    .line 1097
    .local v11, "info":Lcom/android/launcher4/ItemInfo;
    iget-object v2, p0, Lcom/android/launcher4/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1098
    iget-object v2, p0, Lcom/android/launcher4/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 1099
    iget-object v2, p0, Lcom/android/launcher4/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    :cond_1
    iget v5, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->x:I

    .line 1103
    .local v5, "oldX":I
    iget v7, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->y:I

    .line 1104
    .local v7, "oldY":I
    if-eqz p7, :cond_2

    .line 1105
    iget v2, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    aget-object v2, v12, v2

    iget v3, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    const/4 v9, 0x0

    aput-boolean v9, v2, v3

    .line 1106
    aget-object v2, v12, p2

    const/4 v3, 0x1

    aput-boolean v3, v2, p3

    .line 1108
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1109
    if-eqz p6, :cond_3

    .line 1110
    move/from16 v0, p2

    iput v0, v11, Lcom/android/launcher4/ItemInfo;->cellX:I

    move/from16 v0, p2

    iput v0, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    .line 1111
    move/from16 v0, p3

    iput v0, v11, Lcom/android/launcher4/ItemInfo;->cellY:I

    move/from16 v0, p3

    iput v0, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    .line 1116
    :goto_0
    invoke-virtual {v10, v4}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->setupLp(Lcom/android/launcher4/CellLayout$LayoutParams;)V

    .line 1117
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1118
    iget v6, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->x:I

    .line 1119
    .local v6, "newX":I
    iget v8, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->y:I

    .line 1121
    .local v8, "newY":I
    iput v5, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->x:I

    .line 1122
    iput v7, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->y:I

    .line 1125
    if-ne v5, v6, :cond_4

    if-ne v7, v8, :cond_4

    .line 1126
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1127
    const/4 v2, 0x1

    .line 1165
    .end local v4    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    .end local v5    # "oldX":I
    .end local v6    # "newX":I
    .end local v7    # "oldY":I
    .end local v8    # "newY":I
    .end local v11    # "info":Lcom/android/launcher4/ItemInfo;
    :goto_1
    return v2

    .line 1113
    .restart local v4    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    .restart local v5    # "oldX":I
    .restart local v7    # "oldY":I
    .restart local v11    # "info":Lcom/android/launcher4/ItemInfo;
    :cond_3
    move/from16 v0, p2

    iput v0, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellX:I

    .line 1114
    move/from16 v0, p3

    iput v0, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_0

    .line 1130
    .restart local v6    # "newX":I
    .restart local v8    # "newY":I
    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v2}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 1131
    .local v13, "va":Landroid/animation/ValueAnimator;
    move/from16 v0, p4

    int-to-long v2, v0

    invoke-virtual {v13, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1132
    iget-object v2, p0, Lcom/android/launcher4/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    new-instance v2, Lcom/android/launcher4/CellLayout$3;

    move-object v3, p0

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher4/CellLayout$3;-><init>(Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v13, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1143
    new-instance v2, Lcom/android/launcher4/CellLayout$4;

    invoke-direct {v2, p0, v4, p1}, Lcom/android/launcher4/CellLayout$4;-><init>(Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/CellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v13, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1161
    move/from16 v0, p5

    int-to-long v2, v0

    invoke-virtual {v13, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1162
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    .line 1163
    const/4 v2, 0x1

    goto :goto_1

    .line 1165
    .end local v4    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    .end local v5    # "oldX":I
    .end local v6    # "newX":I
    .end local v7    # "oldY":I
    .end local v8    # "newY":I
    .end local v11    # "info":Lcom/android/launcher4/ItemInfo;
    .end local v13    # "va":Landroid/animation/ValueAnimator;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 1130
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public buildHardwareLayer()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->buildLayer()V

    .line 308
    return-void
.end method

.method public calculateSpans(Lcom/android/launcher4/ItemInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/launcher4/ItemInfo;

    .prologue
    const/4 v4, 0x1

    .line 3015
    instance-of v3, p1, Lcom/android/launcher4/LauncherAppWidgetInfo;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 3016
    check-cast v3, Lcom/android/launcher4/LauncherAppWidgetInfo;

    iget v1, v3, Lcom/android/launcher4/LauncherAppWidgetInfo;->minWidth:I

    .local v1, "minWidth":I
    move-object v3, p1

    .line 3017
    check-cast v3, Lcom/android/launcher4/LauncherAppWidgetInfo;

    iget v0, v3, Lcom/android/launcher4/LauncherAppWidgetInfo;->minHeight:I

    .line 3026
    .local v0, "minHeight":I
    :goto_0
    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/android/launcher4/CellLayout;->rectToCell(II[I)[I

    move-result-object v2

    .line 3027
    .local v2, "spans":[I
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, p1, Lcom/android/launcher4/ItemInfo;->spanX:I

    .line 3028
    aget v3, v2, v4

    iput v3, p1, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 3029
    .end local v0    # "minHeight":I
    .end local v1    # "minWidth":I
    .end local v2    # "spans":[I
    :goto_1
    return-void

    .line 3018
    :cond_0
    instance-of v3, p1, Lcom/android/launcher4/PendingAddWidgetInfo;

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 3019
    check-cast v3, Lcom/android/launcher4/PendingAddWidgetInfo;

    iget v1, v3, Lcom/android/launcher4/PendingAddWidgetInfo;->minWidth:I

    .restart local v1    # "minWidth":I
    move-object v3, p1

    .line 3020
    check-cast v3, Lcom/android/launcher4/PendingAddWidgetInfo;

    iget v0, v3, Lcom/android/launcher4/PendingAddWidgetInfo;->minHeight:I

    .line 3021
    .restart local v0    # "minHeight":I
    goto :goto_0

    .line 3023
    .end local v0    # "minHeight":I
    .end local v1    # "minWidth":I
    :cond_1
    iput v4, p1, Lcom/android/launcher4/ItemInfo;->spanY:I

    iput v4, p1, Lcom/android/launcher4/ItemInfo;->spanX:I

    goto :goto_1
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 579
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 582
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getChildCount()I

    move-result v1

    .line 583
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 587
    return-void

    .line 584
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher4/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 585
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 583
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public cellSpansToSize(II)[I
    .locals 5
    .param p1, "hSpans"    # I
    .param p2, "vSpans"    # I

    .prologue
    .line 3002
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 3003
    .local v0, "size":[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 3004
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    mul-int/2addr v2, p2

    add-int/lit8 v3, p2, -0x1

    iget v4, p0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 3005
    return-object v0
.end method

.method cellToCenterPoint(II[I)V
    .locals 6
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "result"    # [I

    .prologue
    const/4 v3, 0x1

    .line 847
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 848
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 5
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "result"    # [I

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 832
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingTop()I

    move-result v1

    .line 834
    .local v1, "vStartPadding":I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aput v3, p3, v2

    .line 835
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    aput v3, p3, v2

    .line 836
    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/Rect;)V
    .locals 13
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "cellHSpan"    # I
    .param p4, "cellVSpan"    # I
    .param p5, "resultRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2950
    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    .line 2951
    .local v2, "cellWidth":I
    iget v1, p0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    .line 2952
    .local v1, "cellHeight":I
    iget v8, p0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    .line 2953
    .local v8, "widthGap":I
    iget v5, p0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    .line 2955
    .local v5, "heightGap":I
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingLeft()I

    move-result v3

    .line 2956
    .local v3, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingTop()I

    move-result v6

    .line 2958
    .local v6, "vStartPadding":I
    mul-int v11, p3, v2

    add-int/lit8 v12, p3, -0x1

    mul-int/2addr v12, v8

    add-int v7, v11, v12

    .line 2959
    .local v7, "width":I
    mul-int v11, p4, v1

    add-int/lit8 v12, p4, -0x1

    mul-int/2addr v12, v5

    add-int v4, v11, v12

    .line 2961
    .local v4, "height":I
    add-int v11, v2, v8

    mul-int/2addr v11, p1

    add-int v9, v3, v11

    .line 2962
    .local v9, "x":I
    add-int v11, v1, v5

    mul-int/2addr v11, p2

    add-int v10, v6, v11

    .line 2964
    .local v10, "y":I
    add-int v11, v9, v7

    add-int v12, v10, v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 2965
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3135
    instance-of v0, p1, Lcom/android/launcher4/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 6

    .prologue
    .line 1263
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mDragOutlineCurrent:I

    .line 1264
    .local v0, "oldIndex":I
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher4/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher4/InterruptibleInOutAnimator;->animateOut()V

    .line 1265
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher4/CellLayout;->mDragCell:[I

    const/4 v4, 0x1

    const/4 v5, -0x1

    aput v5, v3, v4

    aput v5, v1, v2

    .line 1266
    return-void
.end method

.method public clearFolderLeaveBehind()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 563
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 564
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 565
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->invalidate()V

    .line 566
    return-void
.end method

.method createArea(IIIIIILandroid/view/View;[I[II)[I
    .locals 17
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "dragView"    # Landroid/view/View;
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I
    .param p10, "mode"    # I

    .prologue
    .line 2572
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher4/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p8

    .line 2574
    if-nez p9, :cond_0

    .line 2575
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 p9, v0

    .line 2581
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, p10

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    move/from16 v0, p10

    if-ne v0, v2, :cond_a

    .line 2582
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, -0x64

    if-eq v2, v3, :cond_a

    .line 2583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/CellLayout;->mDirectionVector:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/CellLayout;->mPreviousReorderDirection:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    .line 2584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/CellLayout;->mDirectionVector:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/CellLayout;->mPreviousReorderDirection:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    .line 2586
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_3

    .line 2587
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    const/16 v4, -0x64

    aput v4, v2, v3

    .line 2588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x1

    const/16 v4, -0x64

    aput v4, v2, v3

    .line 2597
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher4/CellLayout;->mDirectionVector:[I

    const/4 v11, 0x1

    new-instance v12, Lcom/android/launcher4/CellLayout$ItemConfiguration;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lcom/android/launcher4/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/CellLayout$ItemConfiguration;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p7

    .line 2596
    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher4/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher4/CellLayout$ItemConfiguration;)Lcom/android/launcher4/CellLayout$ItemConfiguration;

    move-result-object v16

    .line 2601
    .local v16, "swapSolution":Lcom/android/launcher4/CellLayout$ItemConfiguration;
    new-instance v10, Lcom/android/launcher4/CellLayout$ItemConfiguration;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2}, Lcom/android/launcher4/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/CellLayout$ItemConfiguration;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 2600
    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher4/CellLayout;->findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Lcom/android/launcher4/CellLayout$ItemConfiguration;

    move-result-object v15

    .line 2603
    .local v15, "noShuffleSolution":Lcom/android/launcher4/CellLayout$ItemConfiguration;
    const/4 v13, 0x0

    .line 2604
    .local v13, "finalSolution":Lcom/android/launcher4/CellLayout$ItemConfiguration;
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher4/CellLayout$ItemConfiguration;->area()I

    move-result v2

    invoke-virtual {v15}, Lcom/android/launcher4/CellLayout$ItemConfiguration;->area()I

    move-result v3

    if-lt v2, v3, :cond_b

    .line 2605
    move-object/from16 v13, v16

    .line 2610
    :cond_4
    :goto_1
    const/4 v14, 0x1

    .line 2612
    .local v14, "foundSolution":Z
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher4/CellLayout;->setUseTempCoords(Z)V

    .line 2615
    if-eqz v13, :cond_e

    .line 2616
    const/4 v2, 0x0

    iget v3, v13, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewX:I

    aput v3, p8, v2

    .line 2617
    const/4 v2, 0x1

    iget v3, v13, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewY:I

    aput v3, p8, v2

    .line 2618
    const/4 v2, 0x0

    iget v3, v13, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewSpanX:I

    aput v3, p9, v2

    .line 2619
    const/4 v2, 0x1

    iget v3, v13, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewSpanY:I

    aput v3, p9, v2

    .line 2624
    if-eqz p10, :cond_5

    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_7

    .line 2626
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1}, Lcom/android/launcher4/CellLayout;->copySolutionToTempState(Lcom/android/launcher4/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2628
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher4/CellLayout;->setItemPlacementDirty(Z)V

    .line 2629
    const/4 v2, 0x1

    move/from16 v0, p10

    if-ne v0, v2, :cond_c

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1, v2}, Lcom/android/launcher4/CellLayout;->animateItemsToSolution(Lcom/android/launcher4/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2632
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_d

    .line 2633
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->commitTempPlacement()V

    .line 2634
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->completeAndClearReorderHintAnimations()V

    .line 2635
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher4/CellLayout;->setItemPlacementDirty(Z)V

    .line 2646
    :cond_7
    :goto_3
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_8

    if-nez v14, :cond_9

    .line 2647
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher4/CellLayout;->setUseTempCoords(Z)V

    .line 2650
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2651
    return-object p8

    .line 2591
    .end local v13    # "finalSolution":Lcom/android/launcher4/CellLayout$ItemConfiguration;
    .end local v14    # "foundSolution":Z
    .end local v15    # "noShuffleSolution":Lcom/android/launcher4/CellLayout$ItemConfiguration;
    .end local v16    # "swapSolution":Lcom/android/launcher4/CellLayout$ItemConfiguration;
    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/CellLayout;->mDirectionVector:[I

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher4/CellLayout;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    .line 2592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/CellLayout;->mDirectionVector:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    .line 2593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/CellLayout;->mDirectionVector:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    goto/16 :goto_0

    .line 2606
    .restart local v13    # "finalSolution":Lcom/android/launcher4/CellLayout$ItemConfiguration;
    .restart local v15    # "noShuffleSolution":Lcom/android/launcher4/CellLayout$ItemConfiguration;
    .restart local v16    # "swapSolution":Lcom/android/launcher4/CellLayout$ItemConfiguration;
    :cond_b
    iget-boolean v2, v15, Lcom/android/launcher4/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_4

    .line 2607
    move-object v13, v15

    goto/16 :goto_1

    .line 2629
    .restart local v14    # "foundSolution":Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_2

    .line 2638
    :cond_d
    const/16 v2, 0x96

    .line 2637
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1, v2}, Lcom/android/launcher4/CellLayout;->beginOrAdjustHintAnimations(Lcom/android/launcher4/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_3

    .line 2642
    :cond_e
    const/4 v14, 0x0

    .line 2643
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, p9, v5

    aput v6, p9, v4

    aput v6, p8, v3

    aput v6, p8, v2

    goto :goto_3
.end method

.method createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 22
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "direction"    # [I
    .param p7, "commit"    # Z

    .prologue
    .line 2540
    const/4 v4, 0x2

    new-array v9, v4, [I

    .local v9, "pixelXY":[I
    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 2541
    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher4/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2544
    const/4 v4, 0x0

    aget v11, v9, v4

    const/4 v4, 0x1

    aget v12, v9, v4

    .line 2545
    const/16 v19, 0x1

    new-instance v20, Lcom/android/launcher4/CellLayout$ItemConfiguration;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/launcher4/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/CellLayout$ItemConfiguration;)V

    move-object/from16 v10, p0

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p6

    move-object/from16 v18, p5

    .line 2544
    invoke-virtual/range {v10 .. v20}, Lcom/android/launcher4/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher4/CellLayout$ItemConfiguration;)Lcom/android/launcher4/CellLayout$ItemConfiguration;

    move-result-object v21

    .line 2547
    .local v21, "swapSolution":Lcom/android/launcher4/CellLayout$ItemConfiguration;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher4/CellLayout;->setUseTempCoords(Z)V

    .line 2548
    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v4, :cond_0

    .line 2552
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher4/CellLayout;->copySolutionToTempState(Lcom/android/launcher4/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2553
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher4/CellLayout;->setItemPlacementDirty(Z)V

    .line 2554
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    move/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher4/CellLayout;->animateItemsToSolution(Lcom/android/launcher4/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2556
    if-eqz p7, :cond_1

    .line 2557
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->commitTempPlacement()V

    .line 2558
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->completeAndClearReorderHintAnimations()V

    .line 2559
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher4/CellLayout;->setItemPlacementDirty(Z)V

    .line 2564
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v4}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2566
    :cond_0
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->isSolution:Z

    return v4

    .line 2562
    :cond_1
    const/16 v4, 0x96

    .line 2561
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher4/CellLayout;->beginOrAdjustHintAnimations(Lcom/android/launcher4/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 538
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 539
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mForegroundAlpha:I

    if-lez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 541
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 543
    :cond_0
    return-void
.end method

.method public enableHardwareLayer(Z)V
    .locals 3
    .param p1, "hasLayer"    # Z

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    sget-object v2, Lcom/android/launcher4/CellLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 304
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method estimateDropCell(IIII[I)V
    .locals 7
    .param p1, "originX"    # I
    .param p2, "originY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1178
    iget v1, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    .line 1179
    .local v1, "countX":I
    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    .line 1183
    .local v2, "countY":I
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher4/CellLayout;->pointToCellRounded(II[I)V

    .line 1186
    aget v4, p5, v5

    add-int/2addr v4, p3

    sub-int v3, v4, v1

    .line 1187
    .local v3, "rightOverhang":I
    if-lez v3, :cond_0

    .line 1188
    aget v4, p5, v5

    sub-int/2addr v4, v3

    aput v4, p5, v5

    .line 1190
    :cond_0
    aget v4, p5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v5

    .line 1191
    aget v4, p5, v6

    add-int/2addr v4, p4

    sub-int v0, v4, v2

    .line 1192
    .local v0, "bottomOverhang":I
    if-lez v0, :cond_1

    .line 1193
    aget v4, p5, v6

    sub-int/2addr v4, v0

    aput v4, p5, v6

    .line 1195
    :cond_1
    aget v4, p5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v6

    .line 1196
    return-void
.end method

.method existsEmptyCell()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2778
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher4/CellLayout;->findCellForSpan([III)Z

    move-result v0

    return v0
.end method

.method findCellForSpan([III)Z
    .locals 8
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    const/4 v4, -0x1

    .line 2795
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher4/CellLayout;->mOccupied:[[Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher4/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z

    move-result v0

    return v0
.end method

.method findCellForSpanIgnoring([IIILandroid/view/View;)Z
    .locals 8
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "ignoreView"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 2809
    .line 2810
    iget-object v7, p0, Lcom/android/launcher4/CellLayout;->mOccupied:[[Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move-object v6, p4

    .line 2809
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher4/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersects([IIIII)Z
    .locals 8
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "intersectX"    # I
    .param p5, "intersectY"    # I

    .prologue
    .line 2827
    .line 2828
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher4/CellLayout;->mOccupied:[[Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2827
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher4/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z
    .locals 13
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "intersectX"    # I
    .param p5, "intersectY"    # I
    .param p6, "ignoreView"    # Landroid/view/View;
    .param p7, "occupied"    # [[Z

    .prologue
    .line 2837
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    .line 2839
    const/4 v4, 0x0

    .line 2841
    .local v4, "foundCell":Z
    :goto_0
    const/4 v7, 0x0

    .line 2842
    .local v7, "startX":I
    if-ltz p4, :cond_0

    .line 2843
    add-int/lit8 v11, p2, -0x1

    sub-int v11, p4, v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2845
    :cond_0
    iget v11, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    add-int/lit8 v12, p2, -0x1

    sub-int v2, v11, v12

    .line 2846
    .local v2, "endX":I
    if-ltz p4, :cond_1

    .line 2847
    add-int/lit8 v11, p2, -0x1

    add-int v12, p4, v11

    const/4 v11, 0x1

    if-ne p2, v11, :cond_5

    const/4 v11, 0x1

    :goto_1
    add-int/2addr v11, v12

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2849
    :cond_1
    const/4 v8, 0x0

    .line 2850
    .local v8, "startY":I
    if-ltz p5, :cond_2

    .line 2851
    add-int/lit8 v11, p3, -0x1

    sub-int v11, p5, v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2853
    :cond_2
    iget v11, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    add-int/lit8 v12, p3, -0x1

    sub-int v3, v11, v12

    .line 2854
    .local v3, "endY":I
    if-ltz p5, :cond_3

    .line 2855
    add-int/lit8 v11, p3, -0x1

    add-int v12, p5, v11

    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_6

    const/4 v11, 0x1

    :goto_2
    add-int/2addr v11, v12

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2858
    :cond_3
    move v10, v8

    .local v10, "y":I
    :goto_3
    if-ge v10, v3, :cond_4

    if-eqz v4, :cond_7

    .line 2879
    :cond_4
    const/4 v11, -0x1

    move/from16 v0, p4

    if-ne v0, v11, :cond_d

    const/4 v11, -0x1

    move/from16 v0, p5

    if-ne v0, v11, :cond_d

    .line 2891
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    .line 2892
    return v4

    .line 2847
    .end local v3    # "endY":I
    .end local v8    # "startY":I
    .end local v10    # "y":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 2855
    .restart local v3    # "endY":I
    .restart local v8    # "startY":I
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 2860
    .restart local v10    # "y":I
    :cond_7
    move v9, v7

    .local v9, "x":I
    :goto_4
    if-lt v9, v2, :cond_8

    .line 2858
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2861
    :cond_8
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    if-lt v5, p2, :cond_a

    .line 2871
    if-eqz p1, :cond_9

    .line 2872
    const/4 v11, 0x0

    aput v9, p1, v11

    .line 2873
    const/4 v11, 0x1

    aput v10, p1, v11

    .line 2875
    :cond_9
    const/4 v4, 0x1

    .line 2876
    goto :goto_5

    .line 2862
    :cond_a
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_7
    move/from16 v0, p3

    if-lt v6, v0, :cond_b

    .line 2861
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 2863
    :cond_b
    add-int v11, v9, v5

    aget-object v11, p7, v11

    add-int v12, v10, v6

    aget-boolean v11, v11, v12

    if-eqz v11, :cond_c

    .line 2866
    add-int/2addr v9, v5

    .line 2860
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2862
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 2884
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v9    # "x":I
    :cond_d
    const/16 p4, -0x1

    .line 2885
    const/16 p5, -0x1

    .line 2840
    goto/16 :goto_0
.end method

.method findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Lcom/android/launcher4/CellLayout$ItemConfiguration;
    .locals 11
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "dragView"    # Landroid/view/View;
    .param p8, "solution"    # Lcom/android/launcher4/CellLayout$ItemConfiguration;

    .prologue
    .line 2422
    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 2423
    .local v9, "result":[I
    const/4 v1, 0x2

    new-array v10, v1, [I

    .line 2424
    .local v10, "resultSpan":[I
    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher4/CellLayout;->findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I

    .line 2426
    const/4 v1, 0x0

    aget v1, v9, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    aget v1, v9, v1

    if-ltz v1, :cond_0

    .line 2427
    const/4 v1, 0x0

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/android/launcher4/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher4/CellLayout$ItemConfiguration;Z)V

    .line 2428
    const/4 v1, 0x0

    aget v1, v9, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewX:I

    .line 2429
    const/4 v1, 0x1

    aget v1, v9, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewY:I

    .line 2430
    const/4 v1, 0x0

    aget v1, v10, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2431
    const/4 v1, 0x1

    aget v1, v10, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewSpanY:I

    .line 2432
    const/4 v1, 0x1

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2436
    :goto_0
    return-object p8

    .line 2434
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0
.end method

.method findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I
    .locals 32
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "ignoreView"    # Landroid/view/View;
    .param p8, "ignoreOccupied"    # Z
    .param p9, "result"    # [I
    .param p10, "resultSpan"    # [I
    .param p11, "occupied"    # [[Z

    .prologue
    .line 1361
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->lazyInitTempRectStack()V

    .line 1363
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    .line 1368
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int/lit8 v28, p5, -0x1

    mul-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 p1, v0

    .line 1369
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int/lit8 v28, p6, -0x1

    mul-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 p2, v0

    .line 1372
    if-eqz p9, :cond_1

    move-object/from16 v7, p9

    .line 1373
    .local v7, "bestXY":[I
    :goto_0
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1374
    .local v4, "bestDistance":D
    new-instance v6, Landroid/graphics/Rect;

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1375
    .local v6, "bestRect":Landroid/graphics/Rect;
    new-instance v21, Ljava/util/Stack;

    invoke-direct/range {v21 .. v21}, Ljava/util/Stack;-><init>()V

    .line 1377
    .local v21, "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher4/CellLayout;->mCountX:I

    .line 1378
    .local v10, "countX":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher4/CellLayout;->mCountY:I

    .line 1380
    .local v11, "countY":I
    if-lez p3, :cond_0

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    if-lez p6, :cond_0

    .line 1381
    move/from16 v0, p5

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    move/from16 v0, p6

    move/from16 v1, p4

    if-ge v0, v1, :cond_2

    .line 1479
    :cond_0
    :goto_1
    return-object v7

    .line 1372
    .end local v4    # "bestDistance":D
    .end local v6    # "bestRect":Landroid/graphics/Rect;
    .end local v7    # "bestXY":[I
    .end local v10    # "countX":I
    .end local v11    # "countY":I
    .end local v21    # "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :cond_1
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v7, v0, [I

    goto :goto_0

    .line 1385
    .restart local v4    # "bestDistance":D
    .restart local v6    # "bestRect":Landroid/graphics/Rect;
    .restart local v7    # "bestXY":[I
    .restart local v10    # "countX":I
    .restart local v11    # "countY":I
    .restart local v21    # "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :cond_2
    const/16 v24, 0x0

    .local v24, "y":I
    :goto_2
    add-int/lit8 v26, p4, -0x1

    sub-int v26, v11, v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_4

    .line 1471
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    .line 1474
    const-wide v26, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v26, v4, v26

    if-nez v26, :cond_3

    .line 1475
    const/16 v26, 0x0

    const/16 v27, -0x1

    aput v27, v7, v26

    .line 1476
    const/16 v26, 0x1

    const/16 v27, -0x1

    aput v27, v7, v26

    .line 1478
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/launcher4/CellLayout;->recycleTempRects(Ljava/util/Stack;)V

    goto :goto_1

    .line 1387
    :cond_4
    const/16 v22, 0x0

    .local v22, "x":I
    :goto_3
    add-int/lit8 v26, p3, -0x1

    sub-int v26, v10, v26

    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_5

    .line 1385
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 1388
    :cond_5
    const/16 v25, -0x1

    .line 1389
    .local v25, "ySize":I
    const/16 v23, -0x1

    .line 1390
    .local v23, "xSize":I
    if-eqz p8, :cond_6

    .line 1392
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, p3

    if-lt v0, v1, :cond_c

    .line 1399
    move/from16 v23, p3

    .line 1400
    move/from16 v25, p4

    .line 1405
    const/16 v18, 0x1

    .line 1406
    .local v18, "incX":Z
    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_e

    const/4 v13, 0x1

    .line 1407
    .local v13, "hitMaxX":Z
    :goto_5
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_f

    const/16 v16, 0x1

    .line 1408
    .local v16, "hitMaxY":Z
    :goto_6
    if-eqz v13, :cond_10

    if-eqz v16, :cond_10

    .line 1434
    const/16 v18, 0x1

    .line 1435
    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_1c

    const/4 v13, 0x1

    .line 1436
    :goto_7
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_6

    .line 1438
    .end local v13    # "hitMaxX":Z
    .end local v16    # "hitMaxY":Z
    .end local v17    # "i":I
    .end local v18    # "incX":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/CellLayout;->mTmpXY:[I

    .line 1439
    .local v8, "cellXY":[I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/launcher4/CellLayout;->cellToCenterPoint(II[I)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mTempRectStack:Ljava/util/Stack;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 1445
    .local v12, "currentRect":Landroid/graphics/Rect;
    add-int v26, v22, v23

    add-int v27, v24, v25

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1446
    const/4 v9, 0x0

    .line 1447
    .local v9, "contained":Z
    invoke-virtual/range {v21 .. v21}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_7
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_1d

    .line 1453
    :goto_8
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    const/16 v26, 0x0

    aget v26, v8, v26

    sub-int v26, v26, p1

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    .line 1455
    const/16 v28, 0x1

    aget v28, v8, v28

    sub-int v28, v28, p2

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v28

    .line 1454
    add-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 1457
    .local v14, "distance":D
    cmpg-double v26, v14, v4

    if-gtz v26, :cond_8

    if-eqz v9, :cond_9

    .line 1458
    :cond_8
    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 1459
    :cond_9
    move-wide v4, v14

    .line 1460
    const/16 v26, 0x0

    aput v22, v7, v26

    .line 1461
    const/16 v26, 0x1

    aput v24, v7, v26

    .line 1462
    if-eqz p10, :cond_a

    .line 1463
    const/16 v26, 0x0

    aput v23, p10, v26

    .line 1464
    const/16 v26, 0x1

    aput v25, p10, v26

    .line 1466
    :cond_a
    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1387
    .end local v8    # "cellXY":[I
    .end local v9    # "contained":Z
    .end local v12    # "currentRect":Landroid/graphics/Rect;
    .end local v14    # "distance":D
    :cond_b
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 1393
    .restart local v17    # "i":I
    :cond_c
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_9
    move/from16 v0, v19

    move/from16 v1, p4

    if-lt v0, v1, :cond_d

    .line 1392
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    .line 1394
    :cond_d
    add-int v26, v22, v17

    aget-object v26, p11, v26

    add-int v27, v24, v19

    aget-boolean v26, v26, v27

    if-nez v26, :cond_b

    .line 1393
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 1406
    .end local v19    # "j":I
    .restart local v18    # "incX":Z
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 1407
    .restart local v13    # "hitMaxX":Z
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 1409
    .restart local v16    # "hitMaxY":Z
    :cond_10
    if-eqz v18, :cond_15

    if-nez v13, :cond_15

    .line 1410
    const/16 v19, 0x0

    .restart local v19    # "j":I
    :goto_a
    move/from16 v0, v19

    move/from16 v1, v25

    if-lt v0, v1, :cond_12

    .line 1416
    if-nez v13, :cond_11

    .line 1417
    add-int/lit8 v23, v23, 0x1

    .line 1430
    .end local v19    # "j":I
    :cond_11
    :goto_b
    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_19

    const/16 v26, 0x1

    :goto_c
    or-int v13, v13, v26

    .line 1431
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_1a

    const/16 v26, 0x1

    :goto_d
    or-int v16, v16, v26

    .line 1432
    if-eqz v18, :cond_1b

    const/16 v18, 0x0

    :goto_e
    goto/16 :goto_6

    .line 1411
    .restart local v19    # "j":I
    :cond_12
    add-int v26, v22, v23

    add-int/lit8 v27, v10, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_13

    add-int v26, v22, v23

    aget-object v26, p11, v26

    add-int v27, v24, v19

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_14

    .line 1413
    :cond_13
    const/4 v13, 0x1

    .line 1410
    :cond_14
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 1419
    .end local v19    # "j":I
    :cond_15
    if-nez v16, :cond_11

    .line 1420
    const/16 v17, 0x0

    :goto_f
    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_16

    .line 1426
    if-nez v16, :cond_11

    .line 1427
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 1421
    :cond_16
    add-int v26, v24, v25

    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_17

    add-int v26, v22, v17

    aget-object v26, p11, v26

    add-int v27, v24, v25

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_18

    .line 1423
    :cond_17
    const/16 v16, 0x1

    .line 1420
    :cond_18
    add-int/lit8 v17, v17, 0x1

    goto :goto_f

    .line 1430
    :cond_19
    const/16 v26, 0x0

    goto :goto_c

    .line 1431
    :cond_1a
    const/16 v26, 0x0

    goto :goto_d

    .line 1432
    :cond_1b
    const/16 v18, 0x1

    goto :goto_e

    .line 1435
    :cond_1c
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 1447
    .end local v13    # "hitMaxX":Z
    .end local v16    # "hitMaxY":Z
    .end local v17    # "i":I
    .end local v18    # "incX":Z
    .restart local v8    # "cellXY":[I
    .restart local v9    # "contained":Z
    .restart local v12    # "currentRect":Landroid/graphics/Rect;
    :cond_1d
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Rect;

    .line 1448
    .local v20, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 1449
    const/4 v9, 0x1

    .line 1450
    goto/16 :goto_8
.end method

.method findNearestArea(IIIILandroid/view/View;Z[I)[I
    .locals 12
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "ignoreView"    # Landroid/view/View;
    .param p6, "ignoreOccupied"    # Z
    .param p7, "result"    # [I

    .prologue
    .line 1323
    .line 1324
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/launcher4/CellLayout;->mOccupied:[[Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 1323
    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher4/CellLayout;->findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestArea(IIII[I)[I
    .locals 8
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    .line 2774
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher4/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I
    .locals 12
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "ignoreView"    # Landroid/view/View;
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I

    .prologue
    .line 2755
    const/4 v8, 0x1

    .line 2756
    iget-object v11, p0, Lcom/android/launcher4/CellLayout;->mOccupied:[[Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 2755
    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher4/CellLayout;->findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIIII[I[I)[I
    .locals 10
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "result"    # [I
    .param p8, "resultSpan"    # [I

    .prologue
    .line 1303
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher4/CellLayout;->findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIILandroid/view/View;[I)[I
    .locals 8
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "ignoreView"    # Landroid/view/View;
    .param p6, "result"    # [I

    .prologue
    .line 2735
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher4/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIII[I)[I
    .locals 7
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    .line 1283
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher4/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3130
    new-instance v0, Lcom/android/launcher4/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher4/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3140
    new-instance v0, Lcom/android/launcher4/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher4/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundAlphaMultiplier()F
    .locals 1

    .prologue
    .line 1056
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mBackgroundAlphaMultiplier:F

    return v0
.end method

.method getCellHeight()I
    .locals 1

    .prologue
    .line 895
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    return v0
.end method

.method getCellWidth()I
    .locals 1

    .prologue
    .line 891
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenScale()F
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/launcher4/CellLayout;->mIsHotseat:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher4/CellLayout;->mHotseatScale:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method getContentRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 907
    if-nez p1, :cond_0

    .line 908
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "r":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 910
    .restart local p1    # "r":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingLeft()I

    move-result v1

    .line 911
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingTop()I

    move-result v3

    .line 912
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 913
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 914
    .local v0, "bottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 915
    return-object p1
.end method

.method getCountX()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    return v0
.end method

.method getCountY()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 3

    .prologue
    .line 3116
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 3117
    iget v1, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    mul-int/2addr v1, v2

    .line 3116
    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    .prologue
    .line 3111
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 3112
    iget v1, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    mul-int/2addr v1, v2

    .line 3111
    add-int/2addr v0, v1

    return v0
.end method

.method public getDistanceFromCell(FF[I)F
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "cell"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 884
    aget v1, p3, v4

    aget v2, p3, v5

    iget-object v3, p0, Lcom/android/launcher4/CellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher4/CellLayout;->cellToCenterPoint(II[I)V

    .line 885
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mTmpPoint:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sub-float v1, p1, v1

    float-to-double v2, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 886
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mTmpPoint:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sub-float v1, p2, v1

    float-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 885
    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 887
    .local v0, "distance":F
    return v0
.end method

.method getHeightGap()I
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    return v0
.end method

.method getIsDragOverlapping()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/android/launcher4/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;
    .locals 1

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1075
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/ShortcutAndWidgetContainer;

    .line 1077
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTag()Lcom/android/launcher4/CellLayout$CellInfo;
    .locals 1

    .prologue
    .line 787
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout$CellInfo;

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getTag()Lcom/android/launcher4/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVacantCell([III)Z
    .locals 6
    .param p1, "vacant"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    .line 3042
    iget v3, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    iget-object v5, p0, Lcom/android/launcher4/CellLayout;->mOccupied:[[Z

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher4/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0
.end method

.method getWidthGap()I
    .locals 1

    .prologue
    .line 899
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    return v0
.end method

.method public hideFolderAccept(Lcom/android/launcher4/FolderIcon$FolderRingAnimator;)V
    .locals 1
    .param p1, "fra"    # Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->invalidate()V

    .line 554
    return-void
.end method

.method isItemPlacementDirty()Z
    .locals 1

    .prologue
    .line 2658
    iget-boolean v0, p0, Lcom/android/launcher4/CellLayout;->mItemPlacementDirty:Z

    return v0
.end method

.method isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 8
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "result"    # [I

    .prologue
    .line 2515
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p6

    .line 2516
    const/4 v0, 0x0

    aget v1, p6, v0

    const/4 v0, 0x1

    aget v2, p6, v0

    const/4 v6, 0x0

    .line 2517
    iget-object v7, p0, Lcom/android/launcher4/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2516
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher4/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2518
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOccupied(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3121
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    .line 3122
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mOccupied:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0

    .line 3124
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position exceeds the bound of this CellLayout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 3329
    iget-boolean v0, p0, Lcom/android/launcher4/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3083
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mOccupied:[[Z

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher4/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    .line 3084
    return-void
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;[[Z)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "occupied"    # [[Z

    .prologue
    .line 3086
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_1

    .line 3089
    :cond_0
    :goto_0
    return-void

    .line 3087
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 3088
    .local v7, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iget v1, v7, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher4/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3092
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mOccupied:[[Z

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher4/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    .line 3093
    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "occupied"    # [[Z

    .prologue
    .line 3095
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_1

    .line 3098
    :cond_0
    :goto_0
    return-void

    .line 3096
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 3097
    .local v7, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iget v1, v7, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher4/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 694
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 695
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher4/Workspace;

    if-eqz v1, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/Workspace;

    .line 697
    .local v0, "workspace":Lcom/android/launcher4/Workspace;
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mCellInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher4/Workspace;->getIdForScreen(Lcom/android/launcher4/CellLayout;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/launcher4/CellLayout$CellInfo;->screenId:J

    .line 699
    .end local v0    # "workspace":Lcom/android/launcher4/Workspace;
    :cond_0
    return-void
.end method

.method onDragEnter()V
    .locals 1

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mDragEnforcer:Lcom/android/launcher4/DropTarget$DragEnforcer;

    invoke-virtual {v0}, Lcom/android/launcher4/DropTarget$DragEnforcer;->onDragEnter()V

    .line 2902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/CellLayout;->mDragging:Z

    .line 2903
    return-void
.end method

.method onDragExit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2909
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mDragEnforcer:Lcom/android/launcher4/DropTarget$DragEnforcer;

    invoke-virtual {v0}, Lcom/android/launcher4/DropTarget$DragEnforcer;->onDragExit()V

    .line 2913
    iget-boolean v0, p0, Lcom/android/launcher4/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    .line 2914
    iput-boolean v4, p0, Lcom/android/launcher4/CellLayout;->mDragging:Z

    .line 2918
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mDragCell:[I

    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    aput v3, v0, v4

    .line 2919
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher4/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/launcher4/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher4/InterruptibleInOutAnimator;->animateOut()V

    .line 2920
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher4/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher4/CellLayout;->mDragOutlineCurrent:I

    .line 2921
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->revertTempState()V

    .line 2922
    invoke-virtual {p0, v4}, Lcom/android/launcher4/CellLayout;->setIsDragOverlapping(Z)V

    .line 2923
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 411
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CellLayout;->mBackgroundAlpha:F

    move/from16 v24, v0

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_0

    .line 414
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/CellLayout;->mUseActiveGlowBackground:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 416
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    .line 421
    .local v7, "bg":Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CellLayout;->mBackgroundAlpha:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CellLayout;->mBackgroundAlphaMultiplier:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    const/high16 v25, 0x437f0000    # 255.0f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 423
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 426
    .end local v7    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    .line 427
    .local v19, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v15, v0, :cond_4

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher4/BubbleTextView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher4/BubbleTextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher4/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v18

    .line 443
    .local v18, "padding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher4/BubbleTextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher4/BubbleTextView;->getPressedOrFocusedBackground()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 444
    .local v6, "b":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_1

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->getMeasuredWidth()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->getPaddingLeft()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->getPaddingRight()I

    move-result v25

    sub-int v24, v24, v25

    .line 446
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CellLayout;->mCountX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    move/from16 v26, v0

    mul-int v25, v25, v26

    .line 445
    sub-int v17, v24, v25

    .line 447
    .local v17, "offset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->getPaddingLeft()I

    move-result v24

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    add-int v16, v24, v25

    .line 448
    .local v16, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->getPaddingTop()I

    move-result v22

    .line 450
    .local v22, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher4/BubbleTextView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher4/BubbleTextView;->getLeft()I

    move-result v24

    add-int v24, v24, v16

    sub-int v24, v24, v18

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher4/BubbleTextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher4/BubbleTextView;->getTop()I

    move-result v25

    add-int v25, v25, v22

    sub-int v25, v25, v18

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    .line 452
    const/16 v26, 0x0

    .line 449
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 473
    .end local v6    # "b":Landroid/graphics/Bitmap;
    .end local v16    # "left":I
    .end local v17    # "offset":I
    .end local v18    # "padding":I
    .end local v22    # "top":I
    :cond_1
    sget v20, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 476
    .local v20, "previewOffset":I
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v5

    .line 477
    .local v5, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v5}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v13

    .line 478
    .local v13, "grid":Lcom/android/launcher4/DeviceProfile;
    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-lt v15, v0, :cond_6

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    if-ltz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    if-ltz v24, :cond_2

    .line 516
    sget-object v11, Lcom/android/launcher4/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    .line 517
    .local v11, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    .line 518
    .local v23, "width":I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 520
    .local v14, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher4/CellLayout;->cellToPoint(II[I)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    .line 522
    .local v10, "child":Landroid/view/View;
    if-eqz v10, :cond_2

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    add-int v8, v24, v25

    .line 524
    .local v8, "centerX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    div-int/lit8 v25, v20, 0x2

    add-int v24, v24, v25

    .line 525
    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v25

    .line 524
    add-int v24, v24, v25

    .line 525
    iget v0, v13, Lcom/android/launcher4/DeviceProfile;->folderBackgroundOffset:I

    move/from16 v25, v0

    .line 524
    add-int v9, v24, v25

    .line 527
    .local v9, "centerY":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 528
    div-int/lit8 v24, v23, 0x2

    sub-int v24, v8, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-int/lit8 v25, v23, 0x2

    sub-int v25, v9, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 529
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 530
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 534
    .end local v8    # "centerX":I
    .end local v9    # "centerY":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "d":Landroid/graphics/drawable/Drawable;
    .end local v14    # "height":I
    .end local v23    # "width":I
    :cond_2
    return-void

    .line 418
    .end local v5    # "app":Lcom/android/launcher4/LauncherAppState;
    .end local v13    # "grid":Lcom/android/launcher4/DeviceProfile;
    .end local v15    # "i":I
    .end local v19    # "paint":Landroid/graphics/Paint;
    .end local v20    # "previewOffset":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .restart local v7    # "bg":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 428
    .end local v7    # "bg":Landroid/graphics/drawable/Drawable;
    .restart local v15    # "i":I
    .restart local v19    # "paint":Landroid/graphics/Paint;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mDragOutlineAlphas:[F

    move-object/from16 v24, v0

    aget v4, v24, v15

    .line 429
    .local v4, "alpha":F
    const/16 v24, 0x0

    cmpl-float v24, v4, v24

    if-lez v24, :cond_5

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v24, v0

    aget-object v21, v24, v15

    .line 431
    .local v21, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->getChildrenScale()F

    move-result v25

    invoke-static/range {v24 .. v25}, Lcom/android/launcher4/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher4/InterruptibleInOutAnimator;

    move-object/from16 v24, v0

    aget-object v24, v24, v15

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher4/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 434
    .restart local v6    # "b":Landroid/graphics/Bitmap;
    const/high16 v24, 0x3f000000    # 0.5f

    add-float v24, v24, v4

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 435
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v19

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 427
    .end local v6    # "b":Landroid/graphics/Bitmap;
    .end local v21    # "r":Landroid/graphics/Rect;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 479
    .end local v4    # "alpha":F
    .restart local v5    # "app":Lcom/android/launcher4/LauncherAppState;
    .restart local v13    # "grid":Lcom/android/launcher4/DeviceProfile;
    .restart local v20    # "previewOffset":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    .line 483
    .local v12, "fra":Lcom/android/launcher4/FolderIcon$FolderRingAnimator;
    iget v0, v12, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mCellX:I

    move/from16 v24, v0

    iget v0, v12, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mCellY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher4/CellLayout;->cellToPoint(II[I)V

    .line 484
    iget v0, v12, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mCellX:I

    move/from16 v24, v0

    iget v0, v12, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mCellY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    .line 486
    .restart local v10    # "child":Landroid/view/View;
    if-eqz v10, :cond_7

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    add-int v8, v24, v25

    .line 488
    .restart local v8    # "centerX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mTempLocation:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    div-int/lit8 v25, v20, 0x2

    add-int v24, v24, v25

    .line 489
    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v25

    .line 488
    add-int v24, v24, v25

    .line 489
    iget v0, v13, Lcom/android/launcher4/DeviceProfile;->folderBackgroundOffset:I

    move/from16 v25, v0

    .line 488
    add-int v9, v24, v25

    .line 493
    .restart local v9    # "centerY":I
    sget-object v11, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 494
    .restart local v11    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->getOuterRingSize()F

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->getChildrenScale()F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 495
    .restart local v23    # "width":I
    move/from16 v14, v23

    .line 496
    .restart local v14    # "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 497
    div-int/lit8 v24, v23, 0x2

    sub-int v24, v8, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-int/lit8 v25, v14, 0x2

    sub-int v25, v9, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 498
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 499
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 504
    sget-object v11, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 505
    invoke-virtual {v12}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->getInnerRingSize()F

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->getChildrenScale()F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 506
    move/from16 v14, v23

    .line 507
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 508
    div-int/lit8 v24, v23, 0x2

    sub-int v24, v8, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-int/lit8 v25, v23, 0x2

    sub-int v25, v9, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 509
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 510
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 511
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 478
    .end local v8    # "centerX":I
    .end local v9    # "centerY":I
    .end local v11    # "d":Landroid/graphics/drawable/Drawable;
    .end local v14    # "height":I
    .end local v23    # "width":I
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2933
    if-eqz p1, :cond_0

    .line 2934
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 2935
    .local v0, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->dropped:Z

    .line 2936
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 2938
    .end local v0    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 761
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 762
    invoke-direct {p0}, Lcom/android/launcher4/CellLayout;->clearTagCellInfo()V

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    const/4 v1, 0x1

    .line 773
    :goto_0
    return v1

    .line 769
    :cond_1
    if-nez v0, :cond_2

    .line 770
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher4/CellLayout;->setTagToCellInfoForPoint(II)V

    .line 773
    :cond_2
    const/4 v1, 0x0

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
    .line 1008
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1009
    iget v7, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    iget v8, p0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    mul-int/2addr v7, v8

    .line 1008
    sub-int v4, v6, v7

    .line 1010
    .local v4, "offset":I
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingLeft()I

    move-result v6

    int-to-float v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    add-int v3, v6, v7

    .line 1011
    .local v3, "left":I
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingTop()I

    move-result v5

    .line 1012
    .local v5, "top":I
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getChildCount()I

    move-result v1

    .line 1013
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1019
    return-void

    .line 1014
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher4/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1016
    .local v0, "child":Landroid/view/View;
    add-int v6, v3, p4

    sub-int/2addr v6, p2

    .line 1017
    add-int v7, v5, p5

    sub-int/2addr v7, p3

    .line 1015
    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1013
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 35
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 935
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v10

    .line 936
    .local v10, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v10}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v19

    .line 938
    .local v19, "grid":Lcom/android/launcher4/DeviceProfile;
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v34

    .line 939
    .local v34, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 940
    .local v23, "heightSpecMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v33

    .line 941
    .local v33, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    .line 942
    .local v22, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v15, v33, v3

    .line 943
    .local v15, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v13, v22, v3

    .line 944
    .local v13, "childHeightSize":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mFixedCellWidth:I

    if-ltz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mFixedCellHeight:I

    if-gez v3, :cond_2

    .line 945
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mCountX:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v3}, Lcom/android/launcher4/DeviceProfile;->calculateCellWidth(II)I

    move-result v18

    .line 946
    .local v18, "cw":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mCountY:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v3}, Lcom/android/launcher4/DeviceProfile;->calculateCellHeight(II)I

    move-result v11

    .line 948
    .local v11, "ch":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    move/from16 v0, v18

    if-ne v0, v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    if-eq v11, v3, :cond_2

    .line 949
    :cond_1
    invoke-static {}, Lcom/syu/util/JLog;->getInstance()Lcom/syu/util/JLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mCellWidth = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCellHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/syu/util/JLog;->e(Ljava/lang/String;)V

    .line 950
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher4/CellLayout;->mIsHotseat:Z

    if-eqz v3, :cond_5

    .line 951
    move/from16 v0, v18

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    .line 957
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher4/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher4/CellLayout;->mCountY:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 961
    .end local v11    # "ch":I
    .end local v18    # "cw":I
    :cond_2
    move/from16 v28, v15

    .line 962
    .local v28, "newWidth":I
    move/from16 v27, v13

    .line 963
    .local v27, "newHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mFixedWidth:I

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mFixedHeight:I

    if-lez v3, :cond_6

    .line 964
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CellLayout;->mFixedWidth:I

    move/from16 v28, v0

    .line 965
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CellLayout;->mFixedHeight:I

    move/from16 v27, v0

    .line 970
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mCountX:I

    add-int/lit8 v30, v3, -0x1

    .line 971
    .local v30, "numWidthGaps":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mCountY:I

    add-int/lit8 v29, v3, -0x1

    .line 973
    .local v29, "numHeightGaps":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mOriginalWidthGap:I

    if-ltz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mOriginalHeightGap:I

    if-gez v3, :cond_a

    .line 974
    :cond_4
    move/from16 v21, v15

    .line 975
    .local v21, "hSpace":I
    move/from16 v32, v13

    .line 976
    .local v32, "vSpace":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    mul-int/2addr v3, v4

    sub-int v20, v21, v3

    .line 977
    .local v20, "hFreeSpace":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mCountY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    mul-int/2addr v3, v4

    sub-int v31, v32, v3

    .line 978
    .local v31, "vFreeSpace":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/CellLayout;->mMaxGap:I

    if-lez v30, :cond_8

    div-int v3, v20, v30

    :goto_1
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    .line 979
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/CellLayout;->mMaxGap:I

    if-lez v29, :cond_9

    div-int v3, v31, v29

    :goto_2
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    .line 981
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher4/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher4/CellLayout;->mCountY:I

    .line 980
    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 986
    .end local v20    # "hFreeSpace":I
    .end local v21    # "hSpace":I
    .end local v31    # "vFreeSpace":I
    .end local v32    # "vSpace":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->getChildCount()I

    move-result v17

    .line 987
    .local v17, "count":I
    const/16 v26, 0x0

    .line 988
    .local v26, "maxWidth":I
    const/16 v25, 0x0

    .line 989
    .local v25, "maxHeight":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v17

    if-lt v0, v1, :cond_b

    .line 999
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mFixedWidth:I

    if-lez v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mFixedHeight:I

    if-lez v3, :cond_c

    .line 1000
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/CellLayout;->setMeasuredDimension(II)V

    .line 1004
    :goto_5
    return-void

    .line 953
    .end local v17    # "count":I
    .end local v24    # "i":I
    .end local v25    # "maxHeight":I
    .end local v26    # "maxWidth":I
    .end local v27    # "newHeight":I
    .end local v28    # "newWidth":I
    .end local v29    # "numHeightGaps":I
    .end local v30    # "numWidthGaps":I
    .restart local v11    # "ch":I
    .restart local v18    # "cw":I
    :cond_5
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    .line 954
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    goto/16 :goto_0

    .line 966
    .end local v11    # "ch":I
    .end local v18    # "cw":I
    .restart local v27    # "newHeight":I
    .restart local v28    # "newWidth":I
    :cond_6
    if-eqz v34, :cond_7

    if-nez v23, :cond_3

    .line 967
    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 978
    .restart local v20    # "hFreeSpace":I
    .restart local v21    # "hSpace":I
    .restart local v29    # "numHeightGaps":I
    .restart local v30    # "numWidthGaps":I
    .restart local v31    # "vFreeSpace":I
    .restart local v32    # "vSpace":I
    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    .line 979
    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    .line 983
    .end local v20    # "hFreeSpace":I
    .end local v21    # "hSpace":I
    .end local v31    # "vFreeSpace":I
    .end local v32    # "vSpace":I
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mOriginalWidthGap:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    .line 984
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/CellLayout;->mOriginalHeightGap:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    goto :goto_3

    .line 990
    .restart local v17    # "count":I
    .restart local v24    # "i":I
    .restart local v25    # "maxHeight":I
    .restart local v26    # "maxWidth":I
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 992
    .local v12, "child":Landroid/view/View;
    const/high16 v3, 0x40000000    # 2.0f

    .line 991
    move/from16 v0, v28

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 994
    .local v14, "childWidthMeasureSpec":I
    const/high16 v3, 0x40000000    # 2.0f

    .line 993
    move/from16 v0, v27

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 995
    .local v16, "childheightMeasureSpec":I
    move/from16 v0, v16

    invoke-virtual {v12, v14, v0}, Landroid/view/View;->measure(II)V

    .line 996
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move/from16 v0, v26

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 997
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 989
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 1002
    .end local v12    # "child":Landroid/view/View;
    .end local v14    # "childWidthMeasureSpec":I
    .end local v16    # "childheightMeasureSpec":I
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/CellLayout;->setMeasuredDimension(II)V

    goto :goto_5
.end method

.method public onMove(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "newCellX"    # I
    .param p3, "newCellY"    # I
    .param p4, "newSpanX"    # I
    .param p5, "newSpanY"    # I

    .prologue
    .line 3078
    invoke-virtual {p0, p1}, Lcom/android/launcher4/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 3079
    iget-object v5, p0, Lcom/android/launcher4/CellLayout;->mOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher4/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 3080
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1023
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1026
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1027
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1028
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, p1

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1030
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher4/CellLayout;->mForegroundPadding:I

    iget v3, p0, Lcom/android/launcher4/CellLayout;->mForegroundPadding:I

    .line 1031
    iget v4, p0, Lcom/android/launcher4/CellLayout;->mForegroundPadding:I

    sub-int v4, p1, v4

    iget v5, p0, Lcom/android/launcher4/CellLayout;->mForegroundPadding:I

    sub-int v5, p2, v5

    .line 1030
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1032
    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "result"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 797
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 798
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingTop()I

    move-result v1

    .line 800
    .local v1, "vStartPadding":I
    sub-int v4, p1, v0

    iget v5, p0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v7

    .line 801
    sub-int v4, p2, v1

    iget v5, p0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v8

    .line 803
    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    .line 804
    .local v2, "xAxis":I
    iget v3, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    .line 806
    .local v3, "yAxis":I
    aget v4, p3, v7

    if-gez v4, :cond_0

    aput v7, p3, v7

    .line 807
    :cond_0
    aget v4, p3, v7

    if-lt v4, v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    aput v4, p3, v7

    .line 808
    :cond_1
    aget v4, p3, v8

    if-gez v4, :cond_2

    aput v7, p3, v8

    .line 809
    :cond_2
    aget v4, p3, v8

    if-lt v4, v3, :cond_3

    add-int/lit8 v4, v3, -0x1

    aput v4, p3, v8

    .line 810
    :cond_3
    return-void
.end method

.method pointToCellRounded(II[I)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "result"    # [I

    .prologue
    .line 819
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/launcher4/CellLayout;->pointToCellExact(II[I)V

    .line 820
    return-void
.end method

.method public prepareChildForDrag(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2440
    invoke-virtual {p0, p1}, Lcom/android/launcher4/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 2441
    return-void
.end method

.method regionToCenterPoint(IIII[I)V
    .locals 7
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 860
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingTop()I

    move-result v1

    .line 861
    .local v1, "vStartPadding":I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    .line 862
    iget v4, p0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    mul-int/2addr v4, p3

    add-int/lit8 v5, p3, -0x1

    iget v6, p0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 861
    aput v3, p5, v2

    .line 863
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    .line 864
    iget v4, p0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    mul-int/2addr v4, p4

    add-int/lit8 v5, p4, -0x1

    iget v6, p0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 863
    aput v3, p5, v2

    .line 865
    return-void
.end method

.method regionToRect(IIIILandroid/graphics/Rect;)V
    .locals 8
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # Landroid/graphics/Rect;

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 876
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingTop()I

    move-result v3

    .line 877
    .local v3, "vStartPadding":I
    iget v4, p0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p1

    add-int v1, v0, v4

    .line 878
    .local v1, "left":I
    iget v4, p0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int v2, v3, v4

    .line 879
    .local v2, "top":I
    iget v4, p0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    mul-int/2addr v4, p3

    add-int/lit8 v5, p3, -0x1

    iget v6, p0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    .line 880
    iget v5, p0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    mul-int/2addr v5, p4

    add-int/lit8 v6, p4, -0x1

    iget v7, p0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    .line 879
    invoke-virtual {p5, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 881
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/android/launcher4/CellLayout;->clearOccupiedCells()V

    .line 643
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->removeAllViews()V

    .line 644
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 649
    invoke-direct {p0}, Lcom/android/launcher4/CellLayout;->clearOccupiedCells()V

    .line 650
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->removeAllViewsInLayout()V

    .line 652
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 660
    invoke-virtual {p0, p1}, Lcom/android/launcher4/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 661
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V

    .line 662
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 667
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->removeViewAt(I)V

    .line 668
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 672
    invoke-virtual {p0, p1}, Lcom/android/launcher4/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 673
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->removeViewInLayout(Landroid/view/View;)V

    .line 674
    return-void
.end method

.method public removeViewWithoutMarkingCells(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V

    .line 656
    return-void
.end method

.method public removeViews(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 678
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->removeViews(II)V

    .line 682
    return-void

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher4/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 686
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->removeViewsInLayout(II)V

    .line 690
    return-void

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher4/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected resetOverscrollTransforms()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 392
    iget-boolean v0, p0, Lcom/android/launcher4/CellLayout;->mScrollingTransformsDirty:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0, v2}, Lcom/android/launcher4/CellLayout;->setOverscrollTransformsDirty(Z)V

    .line 394
    invoke-virtual {p0, v1}, Lcom/android/launcher4/CellLayout;->setTranslationX(F)V

    .line 395
    invoke-virtual {p0, v1}, Lcom/android/launcher4/CellLayout;->setRotationY(F)V

    .line 398
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher4/CellLayout;->setOverScrollAmount(FZ)V

    .line 399
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/CellLayout;->setPivotX(F)V

    .line 400
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/CellLayout;->setPivotY(F)V

    .line 402
    :cond_0
    return-void
.end method

.method public restoreInstanceState(Landroid/util/SparseArray;)V
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
    .line 574
    .local p1, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher4/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 575
    return-void
.end method

.method revertTempState()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 2522
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->isItemPlacementDirty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2536
    :goto_0
    return-void

    .line 2523
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v8

    .line 2524
    .local v8, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-lt v9, v8, :cond_1

    .line 2534
    invoke-direct {p0}, Lcom/android/launcher4/CellLayout;->completeAndClearReorderHintAnimations()V

    .line 2535
    invoke-virtual {p0, v5}, Lcom/android/launcher4/CellLayout;->setItemPlacementDirty(Z)V

    goto :goto_0

    .line 2525
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v9}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2526
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 2527
    .local v10, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iget v0, v10, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellX:I

    iget v2, v10, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    if-ne v0, v2, :cond_2

    iget v0, v10, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellY:I

    iget v2, v10, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    if-eq v0, v2, :cond_3

    .line 2528
    :cond_2
    iget v0, v10, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iput v0, v10, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellX:I

    .line 2529
    iget v0, v10, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    iput v0, v10, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellY:I

    .line 2530
    iget v2, v10, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iget v3, v10, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    const/16 v4, 0x96

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher4/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2524
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1060
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mBackgroundAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1061
    iput p1, p0, Lcom/android/launcher4/CellLayout;->mBackgroundAlpha:F

    .line 1062
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->invalidate()V

    .line 1064
    :cond_0
    return-void
.end method

.method public setBackgroundAlphaMultiplier(F)V
    .locals 1
    .param p1, "multiplier"    # F

    .prologue
    .line 1049
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mBackgroundAlphaMultiplier:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1050
    iput p1, p0, Lcom/android/launcher4/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 1051
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->invalidate()V

    .line 1053
    :cond_0
    return-void
.end method

.method public setCellDimensions(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 315
    iput p1, p0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    iput p1, p0, Lcom/android/launcher4/CellLayout;->mFixedCellWidth:I

    .line 316
    iput p2, p0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    iput p2, p0, Lcom/android/launcher4/CellLayout;->mFixedCellHeight:I

    .line 317
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    .line 318
    iget v5, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    iget v6, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    .line 317
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 319
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->setChildrenDrawingCacheEnabled(Z)V

    .line 1037
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1042
    return-void
.end method

.method public setFixedSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 929
    iput p1, p0, Lcom/android/launcher4/CellLayout;->mFixedWidth:I

    .line 930
    iput p2, p0, Lcom/android/launcher4/CellLayout;->mFixedHeight:I

    .line 931
    return-void
.end method

.method public setFolderLeaveBehindCell(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 558
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 559
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->invalidate()V

    .line 560
    return-void
.end method

.method public setGridSize(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 322
    iput p1, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    .line 323
    iput p2, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    .line 324
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher4/CellLayout;->mOccupied:[[Z

    .line 325
    iget v0, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    .line 326
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 327
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    .line 328
    iget v5, p0, Lcom/android/launcher4/CellLayout;->mCountX:I

    iget v6, p0, Lcom/android/launcher4/CellLayout;->mCountY:I

    .line 327
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->setCellDimensions(IIIIII)V

    .line 329
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->requestLayout()V

    .line 330
    return-void
.end method

.method public setInvertIfRtl(Z)V
    .locals 1
    .param p1, "invert"    # Z

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->setInvertIfRtl(Z)V

    .line 335
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1
    .param p1, "isDragOverlapping"    # Z

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/android/launcher4/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    .line 373
    iput-boolean p1, p0, Lcom/android/launcher4/CellLayout;->mIsDragOverlapping:Z

    .line 374
    iget-boolean v0, p0, Lcom/android/launcher4/CellLayout;->mIsDragOverlapping:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher4/CellLayout;->setUseActiveGlowBackground(Z)V

    .line 375
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->invalidate()V

    .line 377
    :cond_0
    return-void
.end method

.method public setIsHotseat(Z)V
    .locals 1
    .param p1, "isHotseat"    # Z

    .prologue
    .line 602
    iput-boolean p1, p0, Lcom/android/launcher4/CellLayout;->mIsHotseat:Z

    .line 603
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->setIsHotseat(Z)V

    .line 604
    return-void
.end method

.method setItemPlacementDirty(Z)V
    .locals 0
    .param p1, "dirty"    # Z

    .prologue
    .line 2655
    iput-boolean p1, p0, Lcom/android/launcher4/CellLayout;->mItemPlacementDirty:Z

    .line 2656
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/launcher4/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 591
    return-void
.end method

.method setOverScrollAmount(FZ)V
    .locals 2
    .param p1, "r"    # F
    .param p2, "left"    # Z

    .prologue
    .line 346
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 347
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher4/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 352
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/launcher4/CellLayout;->FOREGROUND_ALPHA_DAMPER:F

    mul-float/2addr p1, v0

    .line 353
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/CellLayout;->mForegroundAlpha:I

    .line 354
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher4/CellLayout;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 355
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->invalidate()V

    .line 356
    return-void

    .line 348
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher4/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected setOverscrollTransformsDirty(Z)V
    .locals 0
    .param p1, "dirty"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/android/launcher4/CellLayout;->mScrollingTransformsDirty:Z

    .line 389
    return-void
.end method

.method setPressedOrFocusedIcon(Lcom/android/launcher4/BubbleTextView;)V
    .locals 2
    .param p1, "icon"    # Lcom/android/launcher4/BubbleTextView;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher4/BubbleTextView;

    .line 362
    .local v0, "oldIcon":Lcom/android/launcher4/BubbleTextView;
    iput-object p1, p0, Lcom/android/launcher4/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher4/BubbleTextView;

    .line 363
    if-eqz v0, :cond_0

    .line 364
    invoke-direct {p0, v0}, Lcom/android/launcher4/CellLayout;->invalidateBubbleTextView(Lcom/android/launcher4/BubbleTextView;)V

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher4/BubbleTextView;

    if-eqz v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher4/BubbleTextView;

    invoke-direct {p0, v1}, Lcom/android/launcher4/CellLayout;->invalidateBubbleTextView(Lcom/android/launcher4/BubbleTextView;)V

    .line 369
    :cond_1
    return-void
.end method

.method public setShortcutAndWidgetAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getChildCount()I

    move-result v0

    .line 1068
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1071
    return-void

    .line 1069
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher4/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1068
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setTagToCellInfoForPoint(II)V
    .locals 15
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mCellInfo:Lcom/android/launcher4/CellLayout$CellInfo;

    .line 703
    .local v0, "cellInfo":Lcom/android/launcher4/CellLayout$CellInfo;
    iget-object v5, p0, Lcom/android/launcher4/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 704
    .local v5, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getScrollX()I

    move-result v11

    add-int v9, p1, v11

    .line 705
    .local v9, "x":I
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getScrollY()I

    move-result v11

    add-int v10, p2, v11

    .line 706
    .local v10, "y":I
    iget-object v11, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v11}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 708
    .local v3, "count":I
    const/4 v4, 0x0

    .line 709
    .local v4, "found":Z
    add-int/lit8 v6, v3, -0x1

    .local v6, "i":I
    :goto_0
    if-gez v6, :cond_1

    .line 739
    :goto_1
    iput-boolean v4, p0, Lcom/android/launcher4/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 741
    if-nez v4, :cond_0

    .line 742
    iget-object v1, p0, Lcom/android/launcher4/CellLayout;->mTmpXY:[I

    .line 743
    .local v1, "cellXY":[I
    invoke-virtual {p0, v9, v10, v1}, Lcom/android/launcher4/CellLayout;->pointToCellExact(II[I)V

    .line 745
    const/4 v11, 0x0

    iput-object v11, v0, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 746
    const/4 v11, 0x0

    aget v11, v1, v11

    iput v11, v0, Lcom/android/launcher4/CellLayout$CellInfo;->cellX:I

    .line 747
    const/4 v11, 0x1

    aget v11, v1, v11

    iput v11, v0, Lcom/android/launcher4/CellLayout$CellInfo;->cellY:I

    .line 748
    const/4 v11, 0x1

    iput v11, v0, Lcom/android/launcher4/CellLayout$CellInfo;->spanX:I

    .line 749
    const/4 v11, 0x1

    iput v11, v0, Lcom/android/launcher4/CellLayout$CellInfo;->spanY:I

    .line 751
    .end local v1    # "cellXY":[I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher4/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 752
    return-void

    .line 710
    :cond_1
    iget-object v11, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v11, v6}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 711
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 713
    .local v7, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 714
    :cond_2
    iget-boolean v11, v7, Lcom/android/launcher4/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v11, :cond_3

    .line 715
    invoke-virtual {v2, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 717
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v8

    .line 718
    .local v8, "scale":F
    new-instance v5, Landroid/graphics/Rect;

    .end local v5    # "frame":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v13

    .line 719
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 718
    invoke-direct {v5, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 723
    .restart local v5    # "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout;->getPaddingTop()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 724
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    mul-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    float-to-int v11, v11

    .line 725
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v8

    mul-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    float-to-int v12, v12

    .line 724
    invoke-virtual {v5, v11, v12}, Landroid/graphics/Rect;->inset(II)V

    .line 727
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 728
    iput-object v2, v0, Lcom/android/launcher4/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 729
    iget v11, v7, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iput v11, v0, Lcom/android/launcher4/CellLayout$CellInfo;->cellX:I

    .line 730
    iget v11, v7, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    iput v11, v0, Lcom/android/launcher4/CellLayout$CellInfo;->cellY:I

    .line 731
    iget v11, v7, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    iput v11, v0, Lcom/android/launcher4/CellLayout$CellInfo;->spanX:I

    .line 732
    iget v11, v7, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    iput v11, v0, Lcom/android/launcher4/CellLayout$CellInfo;->spanY:I

    .line 733
    const/4 v4, 0x1

    .line 734
    goto/16 :goto_1

    .line 709
    .end local v8    # "scale":F
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0
.end method

.method setUseActiveGlowBackground(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/android/launcher4/CellLayout;->mUseActiveGlowBackground:Z

    .line 381
    return-void
.end method

.method public setUseTempCoords(Z)V
    .locals 4
    .param p1, "useTempCoords"    # Z

    .prologue
    .line 2413
    iget-object v3, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 2414
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 2418
    return-void

    .line 2415
    :cond_0
    iget-object v3, p0, Lcom/android/launcher4/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher4/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 2416
    .local v2, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iput-boolean p1, v2, Lcom/android/launcher4/CellLayout$LayoutParams;->useTmpCoords:Z

    .line 2414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public showFolderAccept(Lcom/android/launcher4/FolderIcon$FolderRingAnimator;)V
    .locals 1
    .param p1, "fra"    # Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/launcher4/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    return-void
.end method

.method simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher4/CellLayout$ItemConfiguration;)Lcom/android/launcher4/CellLayout$ItemConfiguration;
    .locals 20
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "direction"    # [I
    .param p8, "dragView"    # Landroid/view/View;
    .param p9, "decX"    # Z
    .param p10, "solution"    # Lcom/android/launcher4/CellLayout$ItemConfiguration;

    .prologue
    .line 2143
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-direct {v0, v1, v2}, Lcom/android/launcher4/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher4/CellLayout$ItemConfiguration;Z)V

    .line 2146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/CellLayout;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher4/CellLayout;->copyOccupiedArray([[Z)V

    .line 2150
    const/4 v2, 0x2

    new-array v7, v2, [I

    .local v7, "result":[I
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    .line 2151
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher4/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v7

    .line 2153
    const/16 v19, 0x0

    .line 2156
    .local v19, "success":Z
    const/4 v2, 0x0

    aget v9, v7, v2

    const/4 v2, 0x1

    aget v10, v7, v2

    move-object/from16 v8, p0

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p10

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher4/CellLayout;->rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher4/CellLayout$ItemConfiguration;)Z

    move-result v19

    .line 2159
    if-nez v19, :cond_3

    .line 2162
    move/from16 v0, p5

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    move/from16 v0, p4

    move/from16 v1, p6

    if-eq v0, v1, :cond_0

    if-eqz p9, :cond_1

    .line 2163
    :cond_0
    add-int/lit8 v13, p5, -0x1

    .line 2164
    const/16 v17, 0x0

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v18, p10

    .line 2163
    invoke-virtual/range {v8 .. v18}, Lcom/android/launcher4/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher4/CellLayout$ItemConfiguration;)Lcom/android/launcher4/CellLayout$ItemConfiguration;

    move-result-object p10

    .line 2177
    .end local p10    # "solution":Lcom/android/launcher4/CellLayout$ItemConfiguration;
    :goto_0
    return-object p10

    .line 2165
    .restart local p10    # "solution":Lcom/android/launcher4/CellLayout$ItemConfiguration;
    :cond_1
    move/from16 v0, p6

    move/from16 v1, p4

    if-le v0, v1, :cond_2

    .line 2166
    add-int/lit8 v14, p6, -0x1

    .line 2167
    const/16 v17, 0x1

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v18, p10

    .line 2166
    invoke-virtual/range {v8 .. v18}, Lcom/android/launcher4/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher4/CellLayout$ItemConfiguration;)Lcom/android/launcher4/CellLayout$ItemConfiguration;

    move-result-object p10

    goto :goto_0

    .line 2169
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0

    .line 2171
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2172
    const/4 v2, 0x0

    aget v2, v7, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewX:I

    .line 2173
    const/4 v2, 0x1

    aget v2, v7, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewY:I

    .line 2174
    move/from16 v0, p5

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2175
    move/from16 v0, p6

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/launcher4/CellLayout$ItemConfiguration;->dragViewSpanY:I

    goto :goto_0
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dragOutline"    # Landroid/graphics/Bitmap;
    .param p3, "originX"    # I
    .param p4, "originY"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I
    .param p9, "resize"    # Z
    .param p10, "dragOffset"    # Landroid/graphics/Point;
    .param p11, "dragRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 1200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/CellLayout;->mDragCell:[I

    const/4 v5, 0x0

    aget v14, v4, v5

    .line 1201
    .local v14, "oldDragCellX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/CellLayout;->mDragCell:[I

    const/4 v5, 0x1

    aget v15, v4, v5

    .line 1203
    .local v15, "oldDragCellY":I
    if-nez p2, :cond_1

    if-nez p1, :cond_1

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1207
    :cond_1
    move/from16 v0, p5

    if-ne v0, v14, :cond_2

    move/from16 v0, p6

    if-eq v0, v15, :cond_0

    .line 1208
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/CellLayout;->mDragCell:[I

    const/4 v5, 0x0

    aput p5, v4, v5

    .line 1209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/CellLayout;->mDragCell:[I

    const/4 v5, 0x1

    aput p6, v4, v5

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CellLayout;->mTmpPoint:[I

    move-object/from16 v18, v0

    .line 1212
    .local v18, "topLeft":[I
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher4/CellLayout;->cellToPoint(II[I)V

    .line 1214
    const/4 v4, 0x0

    aget v12, v18, v4

    .line 1215
    .local v12, "left":I
    const/4 v4, 0x1

    aget v17, v18, v4

    .line 1217
    .local v17, "top":I
    if-eqz p1, :cond_4

    if-nez p10, :cond_4

    .line 1220
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1221
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v12, v4

    .line 1222
    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v17, v17, v4

    .line 1227
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v17, v17, v4

    .line 1229
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    mul-int v4, v4, p7

    add-int/lit8 v5, p7, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 1230
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1229
    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v12, v4

    .line 1248
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CellLayout;->mDragOutlineCurrent:I

    move/from16 v16, v0

    .line 1249
    .local v16, "oldIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher4/InterruptibleInOutAnimator;

    aget-object v4, v4, v16

    invoke-virtual {v4}, Lcom/android/launcher4/InterruptibleInOutAnimator;->animateOut()V

    .line 1250
    add-int/lit8 v4, v16, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v5

    rem-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher4/CellLayout;->mDragOutlineCurrent:I

    .line 1251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/CellLayout;->mDragOutlineCurrent:I

    aget-object v9, v4, v5

    .line 1252
    .local v9, "r":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int v5, v5, v17

    move/from16 v0, v17

    invoke-virtual {v9, v12, v0, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1253
    if-eqz p9, :cond_3

    move-object/from16 v4, p0

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 1254
    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher4/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 1257
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher4/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/CellLayout;->mDragOutlineCurrent:I

    aget-object v4, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/launcher4/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher4/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/CellLayout;->mDragOutlineCurrent:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/launcher4/InterruptibleInOutAnimator;->animateIn()V

    goto/16 :goto_0

    .line 1232
    .end local v9    # "r":Landroid/graphics/Rect;
    .end local v16    # "oldIndex":I
    :cond_4
    if-eqz p10, :cond_5

    if-eqz p11, :cond_5

    .line 1235
    move-object/from16 v0, p10

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    mul-int v5, v5, p7

    add-int/lit8 v6, p7, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 1236
    invoke-virtual/range {p11 .. p11}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 1235
    add-int/2addr v4, v5

    add-int/2addr v12, v4

    .line 1237
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v10

    .line 1238
    .local v10, "cHeight":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    sub-int/2addr v5, v10

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v11, v4

    .line 1239
    .local v11, "cellPaddingY":I
    move-object/from16 v0, p10

    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v11

    add-int v17, v17, v4

    .line 1240
    goto/16 :goto_1

    .line 1242
    .end local v10    # "cHeight":I
    .end local v11    # "cellPaddingY":I
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/CellLayout;->mCellWidth:I

    mul-int v4, v4, p7

    add-int/lit8 v5, p7, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 1243
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1242
    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v12, v4

    .line 1244
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/CellLayout;->mCellHeight:I

    mul-int v4, v4, p8

    add-int/lit8 v5, p8, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/CellLayout;->mHeightGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 1245
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1244
    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v17, v17, v4

    goto/16 :goto_1
.end method
