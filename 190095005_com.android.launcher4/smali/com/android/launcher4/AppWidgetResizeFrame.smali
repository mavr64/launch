.class public Lcom/android/launcher4/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final TOP:I = 0x1

.field private static mTmpRect:Landroid/graphics/Rect;


# instance fields
.field final BACKGROUND_PADDING:I

.field final DIMMED_HANDLE_ALPHA:F

.field final RESIZE_THRESHOLD:F

.field final SNAP_DURATION:I

.field private mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field private mBottomBorderActive:Z

.field private mBottomHandle:Landroid/widget/ImageView;

.field private mBottomTouchRegionAdjustment:I

.field private mCellLayout:Lcom/android/launcher4/CellLayout;

.field private mDeltaX:I

.field private mDeltaXAddOn:I

.field private mDeltaY:I

.field private mDeltaYAddOn:I

.field mDirectionVector:[I

.field private mDragLayer:Lcom/android/launcher4/DragLayer;

.field mLastDirectionVector:[I

.field private mLauncher:Lcom/android/launcher4/Launcher;

.field private mLeftBorderActive:Z

.field private mLeftHandle:Landroid/widget/ImageView;

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private mResizeMode:I

.field private mRightBorderActive:Z

.field private mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field mTmpPt:[I

.field private mTopBorderActive:Z

.field private mTopHandle:Landroid/widget/ImageView;

.field private mTopTouchRegionAdjustment:I

.field private mTouchTargetWidth:I

.field private mWidgetPaddingBottom:I

.field private mWidgetPaddingLeft:I

.field private mWidgetPaddingRight:I

.field private mWidgetPaddingTop:I

.field private mWidgetView:Lcom/android/launcher4/LauncherAppWidgetHostView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher4/LauncherAppWidgetHostView;Lcom/android/launcher4/CellLayout;Lcom/android/launcher4/DragLayer;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widgetView"    # Lcom/android/launcher4/LauncherAppWidgetHostView;
    .param p3, "cellLayout"    # Lcom/android/launcher4/CellLayout;
    .param p4, "dragLayer"    # Lcom/android/launcher4/DragLayer;

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, -0x2

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    iput v6, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 56
    iput v6, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    .line 58
    new-array v5, v8, [I

    iput-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDirectionVector:[I

    .line 59
    new-array v5, v8, [I

    iput-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLastDirectionVector:[I

    .line 60
    new-array v5, v8, [I

    iput-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTmpPt:[I

    .line 62
    const/16 v5, 0x96

    iput v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->SNAP_DURATION:I

    .line 63
    const/16 v5, 0x18

    iput v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->BACKGROUND_PADDING:I

    .line 64
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->DIMMED_HANDLE_ALPHA:F

    .line 65
    const v5, 0x3f28f5c3    # 0.66f

    iput v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->RESIZE_THRESHOLD:F

    move-object v5, p1

    .line 80
    check-cast v5, Lcom/android/launcher4/Launcher;

    iput-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 81
    iput-object p3, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher4/CellLayout;

    .line 82
    iput-object p2, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher4/LauncherAppWidgetHostView;

    .line 83
    invoke-virtual {p2}, Lcom/android/launcher4/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mResizeMode:I

    .line 84
    iput-object p4, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher4/DragLayer;

    .line 86
    invoke-virtual {p2}, Lcom/android/launcher4/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 87
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v5, v1}, Lcom/android/launcher4/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v4

    .line 88
    .local v4, "result":[I
    aget v5, v4, v6

    iput v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mMinHSpan:I

    .line 89
    aget v5, v4, v10

    iput v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mMinVSpan:I

    .line 91
    const v5, 0x7f0206a6

    invoke-virtual {p0, v5}, Lcom/android/launcher4/AppWidgetResizeFrame;->setBackgroundResource(I)V

    .line 92
    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/android/launcher4/AppWidgetResizeFrame;->setPadding(IIII)V

    .line 95
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    .line 96
    iget-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const v6, 0x7f0206a8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 98
    const/16 v5, 0x13

    .line 97
    invoke-direct {v2, v7, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 99
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/android/launcher4/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    .line 102
    iget-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const v6, 0x7f0206a9

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 104
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x15

    .line 103
    invoke-direct {v2, v7, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 105
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/android/launcher4/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    .line 108
    iget-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const v6, 0x7f0206aa

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x31

    .line 109
    invoke-direct {v2, v7, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 111
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/android/launcher4/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    .line 114
    iget-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const v6, 0x7f0206a7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 116
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x51

    .line 115
    invoke-direct {v2, v7, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 117
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/android/launcher4/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {p2}, Lcom/android/launcher4/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v6, 0x0

    .line 119
    invoke-static {p1, v5, v6}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 121
    .local v3, "p":Landroid/graphics/Rect;
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iput v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    .line 122
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iput v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    .line 123
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iput v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    .line 124
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iput v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    .line 126
    iget v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mResizeMode:I

    if-ne v5, v10, :cond_1

    .line 127
    iget-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 135
    .local v0, "density":F
    const/high16 v5, 0x41c00000    # 24.0f

    mul-float/2addr v5, v0

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    iput v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 136
    iget v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 141
    iget-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher4/CellLayout;

    iget-object v6, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher4/LauncherAppWidgetHostView;

    invoke-virtual {v5, v6}, Lcom/android/launcher4/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 142
    return-void

    .line 129
    .end local v0    # "density":F
    :cond_1
    iget v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mResizeMode:I

    if-ne v5, v8, :cond_0

    .line 130
    iget-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static getWidgetSizeRanges(Lcom/android/launcher4/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 14
    .param p0, "launcher"    # Lcom/android/launcher4/Launcher;
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 347
    if-nez p3, :cond_0

    .line 348
    new-instance p3, Landroid/graphics/Rect;

    .end local p3    # "rect":Landroid/graphics/Rect;
    invoke-direct/range {p3 .. p3}, Landroid/graphics/Rect;-><init>()V

    .line 350
    .restart local p3    # "rect":Landroid/graphics/Rect;
    :cond_0
    const/4 v12, 0x0

    invoke-static {p0, v12}, Lcom/android/launcher4/Workspace;->getCellLayoutMetrics(Lcom/android/launcher4/Launcher;I)Landroid/graphics/Rect;

    move-result-object v6

    .line 351
    .local v6, "landMetrics":Landroid/graphics/Rect;
    const/4 v12, 0x1

    invoke-static {p0, v12}, Lcom/android/launcher4/Workspace;->getCellLayoutMetrics(Lcom/android/launcher4/Launcher;I)Landroid/graphics/Rect;

    move-result-object v9

    .line 352
    .local v9, "portMetrics":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v3, v12, Landroid/util/DisplayMetrics;->density:F

    .line 355
    .local v3, "density":F
    iget v2, v6, Landroid/graphics/Rect;->left:I

    .line 356
    .local v2, "cellWidth":I
    iget v1, v6, Landroid/graphics/Rect;->top:I

    .line 357
    .local v1, "cellHeight":I
    iget v11, v6, Landroid/graphics/Rect;->right:I

    .line 358
    .local v11, "widthGap":I
    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    .line 359
    .local v4, "heightGap":I
    mul-int v12, p1, v2

    add-int/lit8 v13, p1, -0x1

    mul-int/2addr v13, v11

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v3

    float-to-int v7, v12

    .line 360
    .local v7, "landWidth":I
    mul-int v12, p2, v1

    add-int/lit8 v13, p2, -0x1

    mul-int/2addr v13, v4

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v3

    float-to-int v5, v12

    .line 363
    .local v5, "landHeight":I
    iget v2, v9, Landroid/graphics/Rect;->left:I

    .line 364
    iget v1, v9, Landroid/graphics/Rect;->top:I

    .line 365
    iget v11, v9, Landroid/graphics/Rect;->right:I

    .line 366
    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    .line 367
    mul-int v12, p1, v2

    add-int/lit8 v13, p1, -0x1

    mul-int/2addr v13, v11

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v3

    float-to-int v10, v12

    .line 368
    .local v10, "portWidth":I
    mul-int v12, p2, v1

    add-int/lit8 v13, p2, -0x1

    mul-int/2addr v13, v4

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v3

    float-to-int v8, v12

    .line 369
    .local v8, "portHeight":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 370
    return-object p3
.end method

.method private resizeWidgetIfNeeded(Z)V
    .locals 24
    .param p1, "onDismiss"    # Z

    .prologue
    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher4/CellLayout;->getCellWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher4/CellLayout;->getWidthGap()I

    move-result v6

    add-int v22, v1, v6

    .line 227
    .local v22, "xThreshold":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher4/CellLayout;->getCellHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher4/CellLayout;->getHeightGap()I

    move-result v6

    add-int v23, v1, v6

    .line 229
    .local v23, "yThreshold":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaXAddOn:I

    add-int v13, v1, v6

    .line 230
    .local v13, "deltaX":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaYAddOn:I

    add-int v14, v1, v6

    .line 232
    .local v14, "deltaY":I
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v6, v13

    mul-float/2addr v1, v6

    move/from16 v0, v22

    int-to-float v6, v0

    div-float/2addr v1, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v6, v6

    sub-float v17, v1, v6

    .line 233
    .local v17, "hSpanIncF":F
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v6, v14

    mul-float/2addr v1, v6

    move/from16 v0, v23

    int-to-float v6, v0

    div-float/2addr v1, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v6, v6

    sub-float v21, v1, v6

    .line 235
    .local v21, "vSpanIncF":F
    const/16 v16, 0x0

    .line 236
    .local v16, "hSpanInc":I
    const/16 v20, 0x0

    .line 237
    .local v20, "vSpanInc":I
    const/4 v9, 0x0

    .line 238
    .local v9, "cellXInc":I
    const/4 v10, 0x0

    .line 240
    .local v10, "cellYInc":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher4/CellLayout;->getCountX()I

    move-result v11

    .line 241
    .local v11, "countX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher4/CellLayout;->getCountY()I

    move-result v12

    .line 243
    .local v12, "countY":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v6, 0x3f28f5c3    # 0.66f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_0

    .line 244
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 246
    :cond_0
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v6, 0x3f28f5c3    # 0.66f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    .line 247
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 250
    :cond_1
    if-nez p1, :cond_3

    if-nez v16, :cond_3

    if-nez v20, :cond_3

    .line 336
    :cond_2
    :goto_0
    return-void

    .line 253
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher4/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 255
    .local v18, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    .line 256
    .local v4, "spanX":I
    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    .line 257
    .local v5, "spanY":I
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellX:I

    .line 258
    .local v2, "cellX":I
    :goto_1
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_d

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellY:I

    .line 260
    .local v3, "cellY":I
    :goto_2
    const/4 v15, 0x0

    .line 261
    .local v15, "hSpanDelta":I
    const/16 v19, 0x0

    .line 265
    .local v19, "vSpanDelta":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_e

    .line 266
    neg-int v1, v2

    move/from16 v0, v16

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 267
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v1, v6

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 268
    mul-int/lit8 v16, v16, -0x1

    .line 269
    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 270
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v1, v6

    neg-int v1, v1

    move/from16 v0, v16

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 271
    move/from16 v0, v16

    neg-int v15, v0

    .line 279
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_f

    .line 280
    neg-int v1, v3

    move/from16 v0, v20

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 281
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v1, v6

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 282
    mul-int/lit8 v20, v20, -0x1

    .line 283
    move/from16 v0, v20

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 284
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v1, v6

    neg-int v1, v1

    move/from16 v0, v20

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 285
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v19, v0

    .line 292
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v1, v6

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v1, v6

    .line 295
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_7

    .line 296
    :cond_6
    add-int v4, v4, v16

    .line 297
    add-int/2addr v2, v9

    .line 298
    if-eqz v15, :cond_7

    .line 299
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_10

    const/4 v1, -0x1

    :goto_5
    aput v1, v6, v7

    .line 303
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_9

    .line 304
    :cond_8
    add-int v5, v5, v20

    .line 305
    add-int/2addr v3, v10

    .line 306
    if-eqz v19, :cond_9

    .line 307
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_11

    const/4 v1, -0x1

    :goto_6
    aput v1, v6, v7

    .line 311
    :cond_9
    if-nez p1, :cond_a

    if-nez v19, :cond_a

    if-eqz v15, :cond_2

    .line 315
    :cond_a
    if-eqz p1, :cond_12

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v1, v6

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v1, v6

    .line 323
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher4/CellLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher4/LauncherAppWidgetHostView;

    .line 324
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDirectionVector:[I

    move/from16 v8, p1

    .line 323
    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher4/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v1

    .line 324
    if-eqz v1, :cond_b

    .line 325
    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellX:I

    .line 326
    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellY:I

    .line 327
    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    .line 328
    move-object/from16 v0, v18

    iput v5, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    .line 329
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRunningVInc:I

    add-int v1, v1, v19

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRunningVInc:I

    .line 330
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRunningHInc:I

    .line 331
    if-nez p1, :cond_b

    .line 332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher4/LauncherAppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v1, v6, v4, v5}, Lcom/android/launcher4/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher4/Launcher;II)V

    .line 335
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher4/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher4/LauncherAppWidgetHostView;->requestLayout()V

    goto/16 :goto_0

    .line 257
    .end local v2    # "cellX":I
    .end local v3    # "cellY":I
    .end local v15    # "hSpanDelta":I
    .end local v19    # "vSpanDelta":I
    :cond_c
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    goto/16 :goto_1

    .line 258
    .restart local v2    # "cellX":I
    :cond_d
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    goto/16 :goto_2

    .line 273
    .restart local v3    # "cellY":I
    .restart local v15    # "hSpanDelta":I
    .restart local v19    # "vSpanDelta":I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_4

    .line 274
    add-int v1, v2, v4

    sub-int v1, v11, v1

    move/from16 v0, v16

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 275
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v1, v6

    neg-int v1, v1

    move/from16 v0, v16

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 276
    move/from16 v15, v16

    goto/16 :goto_3

    .line 286
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_5

    .line 287
    add-int v1, v3, v5

    sub-int v1, v12, v1

    move/from16 v0, v20

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 288
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v1, v6

    neg-int v1, v1

    move/from16 v0, v20

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 289
    move/from16 v19, v20

    goto/16 :goto_4

    .line 299
    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 307
    :cond_11
    const/4 v1, 0x1

    goto/16 :goto_6

    .line 319
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v1, v6

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v1, v6

    goto/16 :goto_7
.end method

.method static updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher4/Launcher;II)V
    .locals 6
    .param p0, "widgetView"    # Landroid/appwidget/AppWidgetHostView;
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    .line 341
    sget-object v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, v0}, Lcom/android/launcher4/AppWidgetResizeFrame;->getWidgetSizeRanges(Lcom/android/launcher4/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 342
    const/4 v1, 0x0

    sget-object v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 343
    sget-object v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    .line 342
    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    .line 344
    return-void
.end method

.method private visualizeResizeForDelta(IIZ)V
    .locals 3
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "onDismiss"    # Z

    .prologue
    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher4/AppWidgetResizeFrame;->updateDeltas(II)V

    .line 202
    invoke-virtual {p0}, Lcom/android/launcher4/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/DragLayer$LayoutParams;

    .line 204
    .local v0, "lp":Lcom/android/launcher4/DragLayer$LayoutParams;
    iget-boolean v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_2

    .line 205
    iget v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher4/DragLayer$LayoutParams;->x:I

    .line 206
    iget v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaX:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher4/DragLayer$LayoutParams;->width:I

    .line 211
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_3

    .line 212
    iget v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher4/DragLayer$LayoutParams;->y:I

    .line 213
    iget v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaY:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher4/DragLayer$LayoutParams;->height:I

    .line 218
    :cond_1
    :goto_1
    invoke-direct {p0, p3}, Lcom/android/launcher4/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/android/launcher4/AppWidgetResizeFrame;->requestLayout()V

    .line 220
    return-void

    .line 207
    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_0

    .line 208
    iget v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher4/DragLayer$LayoutParams;->width:I

    goto :goto_0

    .line 214
    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_1

    .line 215
    iget v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher4/DragLayer$LayoutParams;->height:I

    goto :goto_1
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 145
    iget v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    move v1, v3

    .line 146
    .local v1, "horizontalActive":Z
    :goto_0
    iget v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    move v2, v3

    .line 148
    .local v2, "verticalActive":Z
    :goto_1
    iget v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p1, v5, :cond_3

    if-eqz v1, :cond_3

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 149
    invoke-virtual {p0}, Lcom/android/launcher4/AppWidgetResizeFrame;->getWidth()I

    move-result v5

    iget v8, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v5, v8

    if-le p1, v5, :cond_4

    if-eqz v1, :cond_4

    move v5, v3

    :goto_3
    iput-boolean v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 150
    iget v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTouchTargetWidth:I

    iget v8, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    add-int/2addr v5, v8

    if-ge p2, v5, :cond_5

    if-eqz v2, :cond_5

    move v5, v3

    :goto_4
    iput-boolean v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher4/AppWidgetResizeFrame;->getHeight()I

    move-result v5

    iget v8, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v5, v8

    iget v8, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    add-int/2addr v5, v8

    if-le p2, v5, :cond_6

    .line 152
    if-eqz v2, :cond_6

    move v5, v3

    .line 151
    :goto_5
    iput-boolean v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 154
    iget-boolean v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v5, :cond_7

    .line 155
    iget-boolean v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-nez v5, :cond_7

    move v0, v4

    .line 157
    .local v0, "anyBordersActive":Z
    :goto_6
    invoke-virtual {p0}, Lcom/android/launcher4/AppWidgetResizeFrame;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineWidth:I

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher4/AppWidgetResizeFrame;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineHeight:I

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher4/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    iput v3, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineX:I

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher4/AppWidgetResizeFrame;->getTop()I

    move-result v3

    iput v3, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineY:I

    .line 162
    if-eqz v0, :cond_0

    .line 163
    iget-object v4, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v3, :cond_8

    move v3, v6

    :goto_7
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 164
    iget-object v4, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v3, :cond_9

    move v3, v6

    :goto_8
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 165
    iget-object v4, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v3, :cond_a

    move v3, v6

    :goto_9
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 166
    iget-object v3, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v4, :cond_b

    :goto_a
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 168
    :cond_0
    return v0

    .end local v0    # "anyBordersActive":Z
    .end local v1    # "horizontalActive":Z
    .end local v2    # "verticalActive":Z
    :cond_1
    move v1, v4

    .line 145
    goto/16 :goto_0

    .restart local v1    # "horizontalActive":Z
    :cond_2
    move v2, v4

    .line 146
    goto/16 :goto_1

    .restart local v2    # "verticalActive":Z
    :cond_3
    move v5, v4

    .line 148
    goto/16 :goto_2

    :cond_4
    move v5, v4

    .line 149
    goto :goto_3

    :cond_5
    move v5, v4

    .line 150
    goto :goto_4

    :cond_6
    move v5, v4

    .line 152
    goto :goto_5

    :cond_7
    move v0, v3

    .line 154
    goto :goto_6

    .restart local v0    # "anyBordersActive":Z
    :cond_8
    move v3, v7

    .line 163
    goto :goto_7

    :cond_9
    move v3, v7

    .line 164
    goto :goto_8

    :cond_a
    move v3, v7

    .line 165
    goto :goto_9

    :cond_b
    move v6, v7

    .line 166
    goto :goto_a
.end method

.method public commitResize()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher4/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 379
    invoke-virtual {p0}, Lcom/android/launcher4/AppWidgetResizeFrame;->requestLayout()V

    .line 380
    return-void
.end method

.method public onTouchUp()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 383
    iget-object v2, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher4/CellLayout;->getCellWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher4/CellLayout;->getWidthGap()I

    move-result v3

    add-int v0, v2, v3

    .line 384
    .local v0, "xThreshold":I
    iget-object v2, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher4/CellLayout;->getCellHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher4/CellLayout;->getHeightGap()I

    move-result v3

    add-int v1, v2, v3

    .line 386
    .local v1, "yThreshold":I
    iget v2, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRunningHInc:I

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaXAddOn:I

    .line 387
    iget v2, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRunningVInc:I

    mul-int/2addr v2, v1

    iput v2, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaYAddOn:I

    .line 388
    iput v4, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaX:I

    .line 389
    iput v4, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaY:I

    .line 391
    new-instance v2, Lcom/android/launcher4/AppWidgetResizeFrame$1;

    invoke-direct {v2, p0}, Lcom/android/launcher4/AppWidgetResizeFrame$1;-><init>(Lcom/android/launcher4/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher4/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 397
    return-void
.end method

.method public snapToWidget(Z)V
    .locals 22
    .param p1, "animate"    # Z

    .prologue
    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher4/DragLayer$LayoutParams;

    .line 401
    .local v5, "lp":Lcom/android/launcher4/DragLayer$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher4/LauncherAppWidgetHostView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher4/LauncherAppWidgetHostView;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    .line 402
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    move/from16 v18, v0

    .line 401
    sub-int v7, v17, v18

    .line 403
    .local v7, "newWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher4/LauncherAppWidgetHostView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher4/LauncherAppWidgetHostView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    .line 404
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    move/from16 v18, v0

    .line 403
    sub-int v6, v17, v18

    .line 406
    .local v6, "newHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTmpPt:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher4/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher4/LauncherAppWidgetHostView;->getLeft()I

    move-result v19

    aput v19, v17, v18

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTmpPt:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher4/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher4/LauncherAppWidgetHostView;->getTop()I

    move-result v19

    aput v19, v17, v18

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher4/DragLayer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher4/CellLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTmpPt:[I

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/launcher4/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTmpPt:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    move/from16 v18, v0

    add-int v8, v17, v18

    .line 411
    .local v8, "newX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTmpPt:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    move/from16 v18, v0

    add-int v9, v17, v18

    .line 416
    .local v9, "newY":I
    if-gez v9, :cond_0

    .line 418
    neg-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 422
    :goto_0
    add-int v17, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher4/DragLayer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher4/DragLayer;->getHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 424
    add-int v17, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher4/DragLayer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher4/DragLayer;->getHeight()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    .line 429
    :goto_1
    if-nez p1, :cond_2

    .line 430
    iput v7, v5, Lcom/android/launcher4/DragLayer$LayoutParams;->width:I

    .line 431
    iput v6, v5, Lcom/android/launcher4/DragLayer$LayoutParams;->height:I

    .line 432
    iput v8, v5, Lcom/android/launcher4/DragLayer$LayoutParams;->x:I

    .line 433
    iput v9, v5, Lcom/android/launcher4/DragLayer$LayoutParams;->y:I

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/AppWidgetResizeFrame;->requestLayout()V

    .line 468
    :goto_2
    return-void

    .line 420
    :cond_0
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    goto :goto_0

    .line 426
    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    goto :goto_1

    .line 440
    :cond_2
    const-string v17, "width"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v5, Lcom/android/launcher4/DragLayer$LayoutParams;->width:I

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    aput v7, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 441
    .local v14, "width":Landroid/animation/PropertyValuesHolder;
    const-string v17, "height"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v5, Lcom/android/launcher4/DragLayer$LayoutParams;->height:I

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    .line 442
    aput v6, v18, v19

    .line 441
    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 443
    .local v3, "height":Landroid/animation/PropertyValuesHolder;
    const-string v17, "x"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v5, Lcom/android/launcher4/DragLayer$LayoutParams;->x:I

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    aput v8, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 444
    .local v15, "x":Landroid/animation/PropertyValuesHolder;
    const-string v17, "y"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v5, Lcom/android/launcher4/DragLayer$LayoutParams;->y:I

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    aput v9, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 446
    .local v16, "y":Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    const/16 v18, 0x1

    aput-object v3, v17, v18

    const/16 v18, 0x2

    aput-object v15, v17, v18

    const/16 v18, 0x3

    aput-object v16, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Lcom/android/launcher4/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 447
    .local v10, "oa":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 448
    .local v4, "leftOa":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 449
    .local v11, "rightOa":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 450
    .local v13, "topOa":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 451
    .local v2, "bottomOa":Landroid/animation/ObjectAnimator;
    new-instance v17, Lcom/android/launcher4/AppWidgetResizeFrame$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher4/AppWidgetResizeFrame$2;-><init>(Lcom/android/launcher4/AppWidgetResizeFrame;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 456
    invoke-static {}, Lcom/android/launcher4/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v12

    .line 457
    .local v12, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 458
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    const/16 v18, 0x2

    aput-object v2, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 465
    :goto_3
    const-wide/16 v18, 0x96

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 466
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 459
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 460
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    const/16 v18, 0x1

    aput-object v4, v17, v18

    const/16 v18, 0x2

    aput-object v11, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    .line 462
    :cond_4
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    const/16 v18, 0x1

    aput-object v4, v17, v18

    const/16 v18, 0x2

    aput-object v11, v17, v18

    const/16 v18, 0x3

    aput-object v13, v17, v18

    const/16 v18, 0x4

    aput-object v2, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3
.end method

.method public updateDeltas(II)V
    .locals 3
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v0, :cond_2

    .line 177
    iget v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineX:I

    neg-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaX:I

    .line 178
    iget v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaX:I

    .line 184
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v0, :cond_3

    .line 185
    iget v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineY:I

    neg-int v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaY:I

    .line 186
    iget v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaY:I

    .line 191
    :cond_1
    :goto_1
    return-void

    .line 179
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher4/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher4/DragLayer;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaX:I

    .line 181
    iget v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineWidth:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaX:I

    goto :goto_0

    .line 187
    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher4/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher4/DragLayer;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaY:I

    .line 189
    iget v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mBaselineHeight:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/AppWidgetResizeFrame;->mDeltaY:I

    goto :goto_1
.end method

.method public visualizeResizeForDelta(II)V
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/AppWidgetResizeFrame;->visualizeResizeForDelta(IIZ)V

    .line 195
    return-void
.end method
