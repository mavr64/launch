.class public Lcom/android/launcher4/FolderIcon;
.super Landroid/widget/LinearLayout;
.source "FolderIcon.java"

# interfaces
.implements Lcom/android/launcher4/FolderInfo$FolderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/FolderIcon$FolderRingAnimator;,
        Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;
    }
.end annotation


# static fields
.field private static final CONSUMPTION_ANIMATION_DURATION:I = 0x64

.field private static final DROP_IN_ANIMATION_DURATION:I = 0x190

.field private static final FINAL_ITEM_ANIMATION_DURATION:I = 0xc8

.field public static final HAS_OUTER_RING:Z = true

.field private static final INITIAL_ITEM_ANIMATION_DURATION:I = 0x15e

.field private static final INNER_RING_GROWTH_FACTOR:F = 0.15f

.field private static final NUM_ITEMS_IN_PREVIEW:I = 0x3

.field private static final OUTER_RING_GROWTH_FACTOR:F = 0.3f

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.35f

.field private static final PERSPECTIVE_SHIFT_FACTOR:F = 0.24f

.field public static sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

.field private static sStaticValuesDirty:Z


# instance fields
.field private mAnimParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

.field mAnimating:Z

.field private mAvailableSpaceInPreview:I

.field private mBaselineIconScale:F

.field private mBaselineIconSize:I

.field private mFolder:Lcom/android/launcher4/Folder;

.field private mFolderName:Lcom/android/launcher4/BubbleTextView;

.field mFolderRingAnimator:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

.field private mHiddenItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/android/launcher4/FolderInfo;

.field private mIntrinsicIconSize:I

.field private mLauncher:Lcom/android/launcher4/Launcher;

.field private mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

.field private mMaxPerspectiveShift:F

.field private mOldBounds:Landroid/graphics/Rect;

.field private mParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

.field private mPreviewBackground:Landroid/widget/ImageView;

.field private mPreviewOffsetX:I

.field private mPreviewOffsetY:I

.field private mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher4/FolderIcon;->sStaticValuesDirty:Z

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher4/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher4/FolderIcon;->mTotalWidth:I

    .line 100
    iput-boolean v5, p0, Lcom/android/launcher4/FolderIcon;->mAnimating:Z

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/FolderIcon;->mOldBounds:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher4/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher4/FolderIcon;->mParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    .line 104
    new-instance v0, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher4/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher4/FolderIcon;->mAnimParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    .line 114
    invoke-direct {p0}, Lcom/android/launcher4/FolderIcon;->init()V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher4/FolderIcon;->mTotalWidth:I

    .line 100
    iput-boolean v5, p0, Lcom/android/launcher4/FolderIcon;->mAnimating:Z

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/FolderIcon;->mOldBounds:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher4/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher4/FolderIcon;->mParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    .line 104
    new-instance v0, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher4/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher4/FolderIcon;->mAnimParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    .line 109
    invoke-direct {p0}, Lcom/android/launcher4/FolderIcon;->init()V

    .line 110
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/launcher4/FolderIcon;->sStaticValuesDirty:Z

    return v0
.end method

.method static synthetic access$1(Z)V
    .locals 0

    .prologue
    .line 56
    sput-boolean p0, Lcom/android/launcher4/FolderIcon;->sStaticValuesDirty:Z

    return-void
.end method

.method static synthetic access$2(Lcom/android/launcher4/FolderIcon;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/launcher4/FolderIcon;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/launcher4/FolderIcon;)Lcom/android/launcher4/Folder;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon;->mFolder:Lcom/android/launcher4/Folder;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/launcher4/FolderIcon;)Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon;->mAnimParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    return-object v0
.end method

.method private animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "duration"    # I
    .param p3, "reverse"    # Z
    .param p4, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 589
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher4/FolderIcon;->computePreviewItemDrawingParams(ILcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    move-result-object v4

    .line 591
    .local v4, "finalParams":Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;
    const/high16 v6, 0x3f800000    # 1.0f

    .line 592
    .local v6, "scale0":F
    iget v0, p0, Lcom/android/launcher4/FolderIcon;->mAvailableSpaceInPreview:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    .line 593
    .local v3, "transX0":F
    iget v0, p0, Lcom/android/launcher4/FolderIcon;->mAvailableSpaceInPreview:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/launcher4/FolderIcon;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v5, v0

    .line 594
    .local v5, "transY0":F
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon;->mAnimParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    iput-object p1, v0, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 596
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 597
    .local v7, "va":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/launcher4/FolderIcon$2;

    move-object v1, p0

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/FolderIcon$2;-><init>(Lcom/android/launcher4/FolderIcon;ZFLcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;F)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 611
    new-instance v0, Lcom/android/launcher4/FolderIcon$3;

    invoke-direct {v0, p0, p4}, Lcom/android/launcher4/FolderIcon$3;-><init>(Lcom/android/launcher4/FolderIcon;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 624
    int-to-long v0, p2

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 625
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 626
    return-void

    .line 596
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private computePreviewDrawingParams(II)V
    .locals 8
    .param p1, "drawableSize"    # I
    .param p2, "totalSize"    # I

    .prologue
    .line 447
    iget v6, p0, Lcom/android/launcher4/FolderIcon;->mIntrinsicIconSize:I

    if-ne v6, p1, :cond_0

    iget v6, p0, Lcom/android/launcher4/FolderIcon;->mTotalWidth:I

    if-eq v6, p2, :cond_1

    .line 448
    :cond_0
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v1

    .line 449
    .local v1, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v1}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v2

    .line 451
    .local v2, "grid":Lcom/android/launcher4/DeviceProfile;
    iput p1, p0, Lcom/android/launcher4/FolderIcon;->mIntrinsicIconSize:I

    .line 452
    iput p2, p0, Lcom/android/launcher4/FolderIcon;->mTotalWidth:I

    .line 454
    iget-object v6, p0, Lcom/android/launcher4/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 455
    .local v4, "previewSize":I
    sget v3, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    .line 457
    .local v3, "previewPadding":I
    mul-int/lit8 v6, v3, 0x2

    sub-int v6, v4, v6

    iput v6, p0, Lcom/android/launcher4/FolderIcon;->mAvailableSpaceInPreview:I

    .line 459
    iget v6, p0, Lcom/android/launcher4/FolderIcon;->mAvailableSpaceInPreview:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    const v7, 0x3fe66666    # 1.8f

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 461
    .local v0, "adjustedAvailableSpace":I
    iget v6, p0, Lcom/android/launcher4/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v6, v6

    const v7, 0x3f9eb852    # 1.24f

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 462
    .local v5, "unscaledHeight":I
    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v7, v0

    mul-float/2addr v6, v7

    int-to-float v7, v5

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/launcher4/FolderIcon;->mBaselineIconScale:F

    .line 464
    iget v6, p0, Lcom/android/launcher4/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/launcher4/FolderIcon;->mBaselineIconScale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/android/launcher4/FolderIcon;->mBaselineIconSize:I

    .line 465
    iget v6, p0, Lcom/android/launcher4/FolderIcon;->mBaselineIconSize:I

    int-to-float v6, v6

    const v7, 0x3e75c28f    # 0.24f

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/android/launcher4/FolderIcon;->mMaxPerspectiveShift:F

    .line 467
    iget v6, p0, Lcom/android/launcher4/FolderIcon;->mTotalWidth:I

    iget v7, p0, Lcom/android/launcher4/FolderIcon;->mAvailableSpaceInPreview:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/launcher4/FolderIcon;->mPreviewOffsetX:I

    .line 468
    iget v6, v2, Lcom/android/launcher4/DeviceProfile;->folderBackgroundOffset:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/android/launcher4/FolderIcon;->mPreviewOffsetY:I

    .line 470
    .end local v0    # "adjustedAvailableSpace":I
    .end local v1    # "app":Lcom/android/launcher4/LauncherAppState;
    .end local v2    # "grid":Lcom/android/launcher4/DeviceProfile;
    .end local v3    # "previewPadding":I
    .end local v4    # "previewSize":I
    .end local v5    # "unscaledHeight":I
    :cond_1
    return-void
.end method

.method private computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 473
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher4/FolderIcon;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher4/FolderIcon;->computePreviewDrawingParams(II)V

    .line 474
    return-void
.end method

.method private computePreviewItemDrawingParams(ILcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;
    .locals 12
    .param p1, "index"    # I
    .param p2, "params"    # Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    .line 505
    rsub-int/lit8 v0, p1, 0x3

    add-int/lit8 p1, v0, -0x1

    .line 506
    int-to-float v0, p1

    mul-float/2addr v0, v11

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    .line 507
    .local v7, "r":F
    const v0, 0x3eb33333    # 0.35f

    sub-float v1, v11, v7

    mul-float/2addr v0, v1

    sub-float v8, v11, v0

    .line 509
    .local v8, "scale":F
    sub-float v0, v11, v7

    iget v1, p0, Lcom/android/launcher4/FolderIcon;->mMaxPerspectiveShift:F

    mul-float v6, v0, v1

    .line 510
    .local v6, "offset":F
    iget v0, p0, Lcom/android/launcher4/FolderIcon;->mBaselineIconSize:I

    int-to-float v0, v0

    mul-float v10, v8, v0

    .line 511
    .local v10, "scaledSize":F
    sub-float v0, v11, v8

    iget v1, p0, Lcom/android/launcher4/FolderIcon;->mBaselineIconSize:I

    int-to-float v1, v1

    mul-float v9, v0, v1

    .line 515
    .local v9, "scaleOffsetCorrection":F
    iget v0, p0, Lcom/android/launcher4/FolderIcon;->mAvailableSpaceInPreview:I

    int-to-float v0, v0

    add-float v1, v6, v10

    add-float/2addr v1, v9

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher4/FolderIcon;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float v3, v0, v1

    .line 516
    .local v3, "transY":F
    add-float v2, v6, v9

    .line 517
    .local v2, "transX":F
    iget v0, p0, Lcom/android/launcher4/FolderIcon;->mBaselineIconScale:F

    mul-float v4, v0, v8

    .line 518
    .local v4, "totalScale":F
    const/high16 v0, 0x42a00000    # 80.0f

    sub-float v1, v11, v7

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 520
    .local v5, "overlayAlpha":I
    if-nez p2, :cond_0

    .line 521
    new-instance p2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    .end local p2    # "params":Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;
    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher4/FolderIcon;FFFI)V

    .line 528
    .restart local p2    # "params":Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;
    :goto_0
    return-object p2

    .line 523
    :cond_0
    iput v2, p2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 524
    iput v3, p2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 525
    iput v4, p2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 526
    iput v5, p2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    goto :goto_0
.end method

.method private drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "params"    # Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 532
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 533
    iget v1, p2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v2, p0, Lcom/android/launcher4/FolderIcon;->mPreviewOffsetX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v3, p0, Lcom/android/launcher4/FolderIcon;->mPreviewOffsetY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 534
    iget v1, p2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v2, p2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 535
    iget-object v0, p2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 537
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 538
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 539
    iget v1, p0, Lcom/android/launcher4/FolderIcon;->mIntrinsicIconSize:I

    iget v2, p0, Lcom/android/launcher4/FolderIcon;->mIntrinsicIconSize:I

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 540
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 541
    iget v1, p2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    invoke-static {v1, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 542
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 541
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 543
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 544
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 545
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 546
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 548
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 549
    return-void
.end method

.method static fromXml(ILcom/android/launcher4/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher4/FolderInfo;Lcom/android/launcher4/IconCache;)Lcom/android/launcher4/FolderIcon;
    .locals 10
    .param p0, "resId"    # I
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;
    .param p2, "group"    # Landroid/view/ViewGroup;
    .param p3, "folderInfo"    # Lcom/android/launcher4/FolderInfo;
    .param p4, "iconCache"    # Lcom/android/launcher4/IconCache;

    .prologue
    const/4 v9, 0x0

    .line 131
    const/4 v1, 0x0

    .line 138
    .local v1, "error":Z
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, p0, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/FolderIcon;

    .line 139
    .local v4, "icon":Lcom/android/launcher4/FolderIcon;
    invoke-virtual {v4, v9}, Lcom/android/launcher4/FolderIcon;->setClipToPadding(Z)V

    .line 140
    const v6, 0x7f110050

    invoke-virtual {v4, v6}, Lcom/android/launcher4/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher4/BubbleTextView;

    iput-object v6, v4, Lcom/android/launcher4/FolderIcon;->mFolderName:Lcom/android/launcher4/BubbleTextView;

    .line 141
    iget-object v6, v4, Lcom/android/launcher4/FolderIcon;->mFolderName:Lcom/android/launcher4/BubbleTextView;

    iget-object v7, p3, Lcom/android/launcher4/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/android/launcher4/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const v6, 0x7f11004f

    invoke-virtual {v4, v6}, Lcom/android/launcher4/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Lcom/android/launcher4/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 143
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 144
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v3

    .line 147
    .local v3, "grid":Lcom/android/launcher4/DeviceProfile;
    iget-object v6, v4, Lcom/android/launcher4/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 148
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, v3, Lcom/android/launcher4/DeviceProfile;->folderBackgroundOffset:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 149
    iget v6, v3, Lcom/android/launcher4/DeviceProfile;->folderIconSizePx:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 150
    iget v6, v3, Lcom/android/launcher4/DeviceProfile;->folderIconSizePx:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 152
    invoke-virtual {v4, p3}, Lcom/android/launcher4/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v4, p1}, Lcom/android/launcher4/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iput-object p3, v4, Lcom/android/launcher4/FolderIcon;->mInfo:Lcom/android/launcher4/FolderInfo;

    .line 155
    iput-object p1, v4, Lcom/android/launcher4/FolderIcon;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 156
    const v6, 0x7f0c005d

    invoke-virtual {p1, v6}, Lcom/android/launcher4/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 157
    iget-object v8, p3, Lcom/android/launcher4/FolderInfo;->title:Ljava/lang/CharSequence;

    aput-object v8, v7, v9

    .line 156
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/launcher4/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 158
    invoke-static {p1}, Lcom/android/launcher4/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher4/Folder;

    move-result-object v2

    .line 159
    .local v2, "folder":Lcom/android/launcher4/Folder;
    invoke-virtual {p1}, Lcom/android/launcher4/Launcher;->getDragController()Lcom/android/launcher4/DragController;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/launcher4/Folder;->setDragController(Lcom/android/launcher4/DragController;)V

    .line 160
    invoke-virtual {v2, v4}, Lcom/android/launcher4/Folder;->setFolderIcon(Lcom/android/launcher4/FolderIcon;)V

    .line 161
    invoke-virtual {v2, p3}, Lcom/android/launcher4/Folder;->bind(Lcom/android/launcher4/FolderInfo;)V

    .line 162
    iput-object v2, v4, Lcom/android/launcher4/FolderIcon;->mFolder:Lcom/android/launcher4/Folder;

    .line 164
    new-instance v6, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    invoke-direct {v6, p1, v4}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;-><init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/FolderIcon;)V

    iput-object v6, v4, Lcom/android/launcher4/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    .line 165
    invoke-virtual {p3, v4}, Lcom/android/launcher4/FolderInfo;->addListener(Lcom/android/launcher4/FolderInfo$FolderListener;)V

    .line 167
    return-object v4
.end method

.method private getLocalCenterForIndex(I[I)F
    .locals 6
    .param p1, "index"    # I
    .param p2, "center"    # [I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 491
    const/4 v2, 0x3

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher4/FolderIcon;->mParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, v2, v3}, Lcom/android/launcher4/FolderIcon;->computePreviewItemDrawingParams(ILcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher4/FolderIcon;->mParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    .line 493
    iget-object v2, p0, Lcom/android/launcher4/FolderIcon;->mParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    iget v3, v2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v4, p0, Lcom/android/launcher4/FolderIcon;->mPreviewOffsetX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 494
    iget-object v2, p0, Lcom/android/launcher4/FolderIcon;->mParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    iget v3, v2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v4, p0, Lcom/android/launcher4/FolderIcon;->mPreviewOffsetY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 495
    iget-object v2, p0, Lcom/android/launcher4/FolderIcon;->mParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget-object v3, p0, Lcom/android/launcher4/FolderIcon;->mParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v4, p0, Lcom/android/launcher4/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float v0, v2, v3

    .line 496
    .local v0, "offsetX":F
    iget-object v2, p0, Lcom/android/launcher4/FolderIcon;->mParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget-object v3, p0, Lcom/android/launcher4/FolderIcon;->mParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v4, p0, Lcom/android/launcher4/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float v1, v2, v3

    .line 498
    .local v1, "offsetY":F
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, p2, v2

    .line 499
    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, p2, v2

    .line 500
    iget-object v2, p0, Lcom/android/launcher4/FolderIcon;->mParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->scale:F

    return v2
.end method

.method private init()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/android/launcher4/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher4/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher4/FolderIcon;->mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

    .line 119
    return-void
.end method

.method private onDrop(Lcom/android/launcher4/ShortcutInfo;Lcom/android/launcher4/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 24
    .param p1, "item"    # Lcom/android/launcher4/ShortcutInfo;
    .param p2, "animateView"    # Lcom/android/launcher4/DragView;
    .param p3, "finalRect"    # Landroid/graphics/Rect;
    .param p4, "scaleRelativeToDragLayer"    # F
    .param p5, "index"    # I
    .param p6, "postAnimationRunnable"    # Ljava/lang/Runnable;
    .param p7, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 377
    const/4 v5, -0x1

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    .line 378
    const/4 v5, -0x1

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    .line 383
    if-eqz p2, :cond_2

    .line 384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/FolderIcon;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v4

    .line 385
    .local v4, "dragLayer":Lcom/android/launcher4/DragLayer;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 386
    .local v6, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v6}, Lcom/android/launcher4/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 387
    move-object/from16 v7, p3

    .line 388
    .local v7, "to":Landroid/graphics/Rect;
    if-nez v7, :cond_0

    .line 389
    new-instance v7, Landroid/graphics/Rect;

    .end local v7    # "to":Landroid/graphics/Rect;
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 390
    .restart local v7    # "to":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/FolderIcon;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v23

    .line 392
    .local v23, "workspace":Lcom/android/launcher4/Workspace;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher4/CellLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/android/launcher4/Workspace;->setFinalTransitionTransform(Lcom/android/launcher4/CellLayout;)V

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/FolderIcon;->getScaleX()F

    move-result v21

    .line 394
    .local v21, "scaleX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/FolderIcon;->getScaleY()F

    move-result v22

    .line 395
    .local v22, "scaleY":F
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher4/FolderIcon;->setScaleX(F)V

    .line 396
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher4/FolderIcon;->setScaleY(F)V

    .line 397
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v7}, Lcom/android/launcher4/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result p4

    .line 399
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher4/FolderIcon;->setScaleX(F)V

    .line 400
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher4/FolderIcon;->setScaleY(F)V

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher4/CellLayout;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/android/launcher4/Workspace;->resetTransitionTransform(Lcom/android/launcher4/CellLayout;)V

    .line 404
    .end local v21    # "scaleX":F
    .end local v22    # "scaleY":F
    .end local v23    # "workspace":Lcom/android/launcher4/Workspace;
    :cond_0
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v19, v0

    .line 405
    .local v19, "center":[I
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher4/FolderIcon;->getLocalCenterForIndex(I[I)F

    move-result v20

    .line 406
    .local v20, "scale":F
    const/4 v5, 0x0

    const/4 v9, 0x0

    aget v9, v19, v9

    int-to-float v9, v9

    mul-float v9, v9, p4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v19, v5

    .line 407
    const/4 v5, 0x1

    const/4 v9, 0x1

    aget v9, v19, v9

    int-to-float v9, v9

    mul-float v9, v9, p4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    aput v9, v19, v5

    .line 409
    const/4 v5, 0x0

    aget v5, v19, v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher4/DragView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v5, v9

    .line 410
    const/4 v9, 0x1

    aget v9, v19, v9

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher4/DragView;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    .line 409
    invoke-virtual {v7, v5, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 412
    const/4 v5, 0x3

    move/from16 v0, p5

    if-ge v0, v5, :cond_1

    const/high16 v8, 0x3f000000    # 0.5f

    .line 414
    .local v8, "finalAlpha":F
    :goto_0
    mul-float v11, v20, p4

    .line 416
    .local v11, "finalScale":F
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v13, 0x190

    .line 417
    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v14, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v15, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v15, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 418
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v5, p2

    move v12, v11

    move-object/from16 v16, p6

    .line 415
    invoke-virtual/range {v4 .. v18}, Lcom/android/launcher4/DragLayer;->animateView(Lcom/android/launcher4/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 419
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher4/FolderIcon;->addItem(Lcom/android/launcher4/ShortcutInfo;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/FolderIcon;->mFolder:Lcom/android/launcher4/Folder;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/launcher4/Folder;->hideItem(Lcom/android/launcher4/ShortcutInfo;)V

    .line 422
    new-instance v5, Lcom/android/launcher4/FolderIcon$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lcom/android/launcher4/FolderIcon$1;-><init>(Lcom/android/launcher4/FolderIcon;Lcom/android/launcher4/ShortcutInfo;)V

    .line 428
    const-wide/16 v12, 0x190

    .line 422
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12, v13}, Lcom/android/launcher4/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    .end local v4    # "dragLayer":Lcom/android/launcher4/DragLayer;
    .end local v6    # "from":Landroid/graphics/Rect;
    .end local v7    # "to":Landroid/graphics/Rect;
    .end local v8    # "finalAlpha":F
    .end local v11    # "finalScale":F
    .end local v19    # "center":[I
    .end local v20    # "scale":F
    :goto_1
    return-void

    .line 412
    .restart local v4    # "dragLayer":Lcom/android/launcher4/DragLayer;
    .restart local v6    # "from":Landroid/graphics/Rect;
    .restart local v7    # "to":Landroid/graphics/Rect;
    .restart local v19    # "center":[I
    .restart local v20    # "scale":F
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 430
    .end local v4    # "dragLayer":Lcom/android/launcher4/DragLayer;
    .end local v6    # "from":Landroid/graphics/Rect;
    .end local v7    # "to":Landroid/graphics/Rect;
    .end local v19    # "center":[I
    .end local v20    # "scale":F
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher4/FolderIcon;->addItem(Lcom/android/launcher4/ShortcutInfo;)V

    goto :goto_1
.end method

.method private willAcceptItem(Lcom/android/launcher4/ItemInfo;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher4/ItemInfo;

    .prologue
    const/4 v1, 0x1

    .line 309
    iget v0, p1, Lcom/android/launcher4/ItemInfo;->itemType:I

    .line 310
    .local v0, "itemType":I
    if-eqz v0, :cond_0

    .line 311
    if-ne v0, v1, :cond_1

    .line 312
    :cond_0
    iget-object v2, p0, Lcom/android/launcher4/FolderIcon;->mFolder:Lcom/android/launcher4/Folder;

    invoke-virtual {v2}, Lcom/android/launcher4/Folder;->isFull()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher4/FolderIcon;->mInfo:Lcom/android/launcher4/FolderInfo;

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher4/FolderIcon;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-boolean v2, v2, Lcom/android/launcher4/FolderInfo;->opened:Z

    if-nez v2, :cond_1

    .line 310
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 316
    move-object v0, p1

    check-cast v0, Lcom/android/launcher4/ItemInfo;

    .line 317
    .local v0, "item":Lcom/android/launcher4/ItemInfo;
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon;->mFolder:Lcom/android/launcher4/Folder;

    invoke-virtual {v1}, Lcom/android/launcher4/Folder;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher4/FolderIcon;->willAcceptItem(Lcom/android/launcher4/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addItem(Lcom/android/launcher4/ShortcutInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher4/ShortcutInfo;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon;->mInfo:Lcom/android/launcher4/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/FolderInfo;->add(Lcom/android/launcher4/ShortcutInfo;)V

    .line 322
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 681
    invoke-super {p0}, Landroid/widget/LinearLayout;->cancelLongPress()V

    .line 683
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon;->mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher4/CheckLongPressHelper;->cancelLongPress()V

    .line 684
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    .line 553
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 555
    iget-object v5, p0, Lcom/android/launcher4/FolderIcon;->mFolder:Lcom/android/launcher4/Folder;

    if-nez v5, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-object v5, p0, Lcom/android/launcher4/FolderIcon;->mFolder:Lcom/android/launcher4/Folder;

    invoke-virtual {v5}, Lcom/android/launcher4/Folder;->getItemCount()I

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/launcher4/FolderIcon;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 558
    :cond_2
    iget-object v5, p0, Lcom/android/launcher4/FolderIcon;->mFolder:Lcom/android/launcher4/Folder;

    invoke-virtual {v5}, Lcom/android/launcher4/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    .line 563
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-boolean v5, p0, Lcom/android/launcher4/FolderIcon;->mAnimating:Z

    if-eqz v5, :cond_4

    .line 564
    iget-object v5, p0, Lcom/android/launcher4/FolderIcon;->mAnimParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    iget-object v5, v5, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5}, Lcom/android/launcher4/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    .line 571
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 572
    .local v3, "nItemsInPreview":I
    iget-boolean v5, p0, Lcom/android/launcher4/FolderIcon;->mAnimating:Z

    if-nez v5, :cond_5

    .line 573
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_0

    .line 574
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 575
    .local v4, "v":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/launcher4/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 576
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v0, v5, v7

    .line 577
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/launcher4/FolderIcon;->mParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, v1, v5}, Lcom/android/launcher4/FolderIcon;->computePreviewItemDrawingParams(ILcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher4/FolderIcon;->mParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    .line 578
    iget-object v5, p0, Lcom/android/launcher4/FolderIcon;->mParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    iput-object v0, v5, Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 579
    iget-object v5, p0, Lcom/android/launcher4/FolderIcon;->mParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, p1, v5}, Lcom/android/launcher4/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;)V

    .line 573
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 566
    .end local v1    # "i":I
    .end local v3    # "nItemsInPreview":I
    .end local v4    # "v":Landroid/widget/TextView;
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 567
    .restart local v4    # "v":Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v0, v5, v7

    .line 568
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/android/launcher4/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 583
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "v":Landroid/widget/TextView;
    .restart local v3    # "nItemsInPreview":I
    :cond_5
    iget-object v5, p0, Lcom/android/launcher4/FolderIcon;->mAnimParams:Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, p1, v5}, Lcom/android/launcher4/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher4/FolderIcon$PreviewItemDrawingParams;)V

    goto :goto_0
.end method

.method getFolder()Lcom/android/launcher4/Folder;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon;->mFolder:Lcom/android/launcher4/Folder;

    return-object v0
.end method

.method getFolderInfo()Lcom/android/launcher4/FolderInfo;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon;->mInfo:Lcom/android/launcher4/FolderInfo;

    return-object v0
.end method

.method public getTextVisible()Z
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon;->mFolderName:Lcom/android/launcher4/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher4/BubbleTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDropEnabled()Z
    .locals 4

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/launcher4/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 123
    .local v1, "cellLayoutChildren":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    .local v0, "cellLayout":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/Workspace;

    .line 125
    .local v2, "workspace":Lcom/android/launcher4/Workspace;
    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->isSmall()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onAdd(Lcom/android/launcher4/ShortcutInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher4/ShortcutInfo;

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/android/launcher4/FolderIcon;->invalidate()V

    .line 647
    invoke-virtual {p0}, Lcom/android/launcher4/FolderIcon;->requestLayout()V

    .line 648
    return-void
.end method

.method public onDragEnter(Ljava/lang/Object;)V
    .locals 5
    .param p1, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 325
    iget-object v2, p0, Lcom/android/launcher4/FolderIcon;->mFolder:Lcom/android/launcher4/Folder;

    invoke-virtual {v2}, Lcom/android/launcher4/Folder;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    check-cast p1, Lcom/android/launcher4/ItemInfo;

    .end local p1    # "dragInfo":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/android/launcher4/FolderIcon;->willAcceptItem(Lcom/android/launcher4/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher4/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 327
    .local v1, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher4/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout;

    .line 328
    .local v0, "layout":Lcom/android/launcher4/CellLayout;
    iget-object v2, p0, Lcom/android/launcher4/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    iget v3, v1, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iget v4, v1, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->setCell(II)V

    .line 329
    iget-object v2, p0, Lcom/android/launcher4/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    invoke-virtual {v2, v0}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->setCellLayout(Lcom/android/launcher4/CellLayout;)V

    .line 330
    iget-object v2, p0, Lcom/android/launcher4/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    invoke-virtual {v2}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->animateToAcceptState()V

    .line 331
    iget-object v2, p0, Lcom/android/launcher4/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0, v2}, Lcom/android/launcher4/CellLayout;->showFolderAccept(Lcom/android/launcher4/FolderIcon$FolderRingAnimator;)V

    goto :goto_0
.end method

.method public onDragExit()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 372
    return-void
.end method

.method public onDragExit(Ljava/lang/Object;)V
    .locals 0
    .param p1, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/launcher4/FolderIcon;->onDragExit()V

    .line 368
    return-void
.end method

.method public onDragOver(Ljava/lang/Object;)V
    .locals 0
    .param p1, "dragInfo"    # Ljava/lang/Object;

    .prologue
    .line 335
    return-void
.end method

.method public onDrop(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 8
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 436
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher4/AppInfo;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher4/AppInfo;

    invoke-virtual {v0}, Lcom/android/launcher4/AppInfo;->makeShortcut()Lcom/android/launcher4/ShortcutInfo;

    move-result-object v1

    .line 442
    .local v1, "item":Lcom/android/launcher4/ShortcutInfo;
    :goto_0
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon;->mFolder:Lcom/android/launcher4/Folder;

    invoke-virtual {v0}, Lcom/android/launcher4/Folder;->notifyDrop()V

    .line 443
    iget-object v2, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher4/FolderIcon;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher4/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p1, Lcom/android/launcher4/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher4/FolderIcon;->onDrop(Lcom/android/launcher4/ShortcutInfo;Lcom/android/launcher4/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 444
    return-void

    .line 440
    .end local v1    # "item":Lcom/android/launcher4/ShortcutInfo;
    :cond_0
    iget-object v1, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher4/ShortcutInfo;

    .restart local v1    # "item":Lcom/android/launcher4/ShortcutInfo;
    goto :goto_0
.end method

.method public onItemsChanged()V
    .locals 0

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/android/launcher4/FolderIcon;->invalidate()V

    .line 642
    invoke-virtual {p0}, Lcom/android/launcher4/FolderIcon;->requestLayout()V

    .line 643
    return-void
.end method

.method public onRemove(Lcom/android/launcher4/ShortcutInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher4/ShortcutInfo;

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/android/launcher4/FolderIcon;->invalidate()V

    .line 652
    invoke-virtual {p0}, Lcom/android/launcher4/FolderIcon;->requestLayout()V

    .line 653
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher4/FolderIcon;->sStaticValuesDirty:Z

    .line 173
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon;->mFolderName:Lcom/android/launcher4/BubbleTextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    invoke-virtual {p0}, Lcom/android/launcher4/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c005d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 658
    aput-object p1, v1, v2

    .line 657
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 659
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 665
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 667
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 676
    :goto_0
    :pswitch_0
    return v0

    .line 669
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon;->mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher4/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    .line 673
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon;->mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher4/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public performCreateAnimation(Lcom/android/launcher4/ShortcutInfo;Landroid/view/View;Lcom/android/launcher4/ShortcutInfo;Lcom/android/launcher4/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
    .locals 9
    .param p1, "destInfo"    # Lcom/android/launcher4/ShortcutInfo;
    .param p2, "destView"    # Landroid/view/View;
    .param p3, "srcInfo"    # Lcom/android/launcher4/ShortcutInfo;
    .param p4, "srcView"    # Lcom/android/launcher4/DragView;
    .param p5, "dstRect"    # Landroid/graphics/Rect;
    .param p6, "scaleRelativeToDragLayer"    # F
    .param p7, "postAnimationRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 342
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v8, v0, v1

    .line 343
    .local v8, "animateDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 344
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 343
    invoke-direct {p0, v0, v1}, Lcom/android/launcher4/FolderIcon;->computePreviewDrawingParams(II)V

    .line 348
    const/16 v0, 0x15e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v8, v0, v1, v2}, Lcom/android/launcher4/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/launcher4/FolderIcon;->addItem(Lcom/android/launcher4/ShortcutInfo;)V

    .line 352
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher4/FolderIcon;->onDrop(Lcom/android/launcher4/ShortcutInfo;Lcom/android/launcher4/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 353
    return-void
.end method

.method public performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "finalView"    # Landroid/view/View;
    .param p2, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x1

    .line 356
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v0, v1, v3

    .line 357
    .local v0, "animateDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 357
    invoke-direct {p0, v1, v2}, Lcom/android/launcher4/FolderIcon;->computePreviewDrawingParams(II)V

    .line 362
    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1, v3, p2}, Lcom/android/launcher4/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    .line 364
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 629
    if-eqz p1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon;->mFolderName:Lcom/android/launcher4/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher4/BubbleTextView;->setVisibility(I)V

    .line 634
    :goto_0
    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon;->mFolderName:Lcom/android/launcher4/BubbleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher4/BubbleTextView;->setVisibility(I)V

    goto :goto_0
.end method
