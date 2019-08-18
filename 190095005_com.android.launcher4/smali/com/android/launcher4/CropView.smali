.class public Lcom/android/launcher4/CropView;
.super Lcom/android/photos/views/TiledImageView;
.source "CropView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/CropView$TouchCallback;
    }
.end annotation


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mFirstX:F

.field private mFirstY:F

.field mInverseRotateMatrix:Landroid/graphics/Matrix;

.field private mLastX:F

.field private mLastY:F

.field private mMinScale:F

.field mRotateMatrix:Landroid/graphics/Matrix;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mTempAdjustment:[F

.field private mTempCoef:[F

.field private mTempEdges:Landroid/graphics/RectF;

.field private mTempImageDims:[F

.field private mTempPoint:[F

.field private mTempRendererCenter:[F

.field mTouchCallback:Lcom/android/launcher4/CropView$TouchCallback;

.field private mTouchDownTime:J

.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/CropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x2

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/photos/views/TiledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/CropView;->mTouchEnabled:Z

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/CropView;->mTempEdges:Landroid/graphics/RectF;

    .line 45
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher4/CropView;->mTempPoint:[F

    .line 46
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/launcher4/CropView;->mTempCoef:[F

    .line 47
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/launcher4/CropView;->mTempAdjustment:[F

    .line 48
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/launcher4/CropView;->mTempImageDims:[F

    .line 49
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/launcher4/CropView;->mTempRendererCenter:[F

    .line 66
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/launcher4/CropView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 67
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 68
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    .line 69
    return-void

    .line 45
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 46
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 47
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 48
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 49
    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getEdgesHelper(Landroid/graphics/RectF;)V
    .locals 19
    .param p1, "edgesOut"    # Landroid/graphics/RectF;

    .prologue
    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CropView;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v15, v0

    .line 85
    .local v15, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CropView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v4, v0

    .line 86
    .local v4, "height":F
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/CropView;->getImageDims()[F

    move-result-object v5

    .line 87
    .local v5, "imageDims":[F
    const/16 v16, 0x0

    aget v7, v5, v16

    .line 88
    .local v7, "imageWidth":F
    const/16 v16, 0x1

    aget v6, v5, v16

    .line 90
    .local v6, "imageHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v8, v16, v17

    .line 91
    .local v8, "initialCenterX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v9, v16, v17

    .line 93
    .local v9, "initialCenterY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher4/CropView;->mTempRendererCenter:[F

    .line 94
    .local v11, "rendererCenter":[F
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CropView;->mCenterX:F

    move/from16 v17, v0

    sub-float v17, v17, v8

    aput v17, v11, v16

    .line 95
    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CropView;->mCenterY:F

    move/from16 v17, v0

    sub-float v17, v17, v9

    aput v17, v11, v16

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 97
    const/16 v16, 0x0

    aget v17, v11, v16

    const/high16 v18, 0x40000000    # 2.0f

    div-float v18, v7, v18

    add-float v17, v17, v18

    aput v17, v11, v16

    .line 98
    const/16 v16, 0x1

    aget v17, v11, v16

    const/high16 v18, 0x40000000    # 2.0f

    div-float v18, v6, v18

    add-float v17, v17, v18

    aput v17, v11, v16

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 101
    .local v13, "scale":F
    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v15, v16

    const/16 v17, 0x0

    aget v17, v11, v17

    sub-float v16, v16, v17

    sub-float v17, v7, v15

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v16, v16, v17

    mul-float v16, v16, v13

    .line 102
    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, v15, v17

    .line 101
    add-float v2, v16, v17

    .line 103
    .local v2, "centerX":F
    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v4, v16

    const/16 v17, 0x1

    aget v17, v11, v17

    sub-float v16, v16, v17

    sub-float v17, v6, v4

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    add-float v16, v16, v17

    mul-float v16, v16, v13

    .line 104
    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, v4, v17

    .line 103
    add-float v3, v16, v17

    .line 105
    .local v3, "centerY":F
    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v7, v16

    mul-float v16, v16, v13

    sub-float v10, v2, v16

    .line 106
    .local v10, "leftEdge":F
    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v7, v16

    mul-float v16, v16, v13

    add-float v12, v2, v16

    .line 107
    .local v12, "rightEdge":F
    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v6, v16

    mul-float v16, v16, v13

    sub-float v14, v3, v16

    .line 108
    .local v14, "topEdge":F
    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v6, v16

    mul-float v16, v16, v13

    add-float v1, v3, v16

    .line 110
    .local v1, "bottomEdge":F
    move-object/from16 v0, p1

    iput v10, v0, Landroid/graphics/RectF;->left:F

    .line 111
    move-object/from16 v0, p1

    iput v12, v0, Landroid/graphics/RectF;->right:F

    .line 112
    move-object/from16 v0, p1

    iput v14, v0, Landroid/graphics/RectF;->top:F

    .line 113
    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 114
    return-void
.end method

.method private getImageDims()[F
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    iget-object v3, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v3, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v3}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v3

    int-to-float v2, v3

    .line 73
    .local v2, "imageWidth":F
    iget-object v3, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v3, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v3}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v3

    int-to-float v1, v3

    .line 74
    .local v1, "imageHeight":F
    iget-object v0, p0, Lcom/android/launcher4/CropView;->mTempImageDims:[F

    .line 75
    .local v0, "imageDims":[F
    aput v2, v0, v4

    .line 76
    aput v1, v0, v5

    .line 77
    iget-object v3, p0, Lcom/android/launcher4/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 78
    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v0, v4

    .line 79
    aget v3, v0, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v0, v5

    .line 80
    return-object v0
.end method

.method private updateCenter()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, p0, Lcom/android/launcher4/CropView;->mCenterX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    .line 211
    iget-object v0, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, p0, Lcom/android/launcher4/CropView;->mCenterY:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    .line 212
    return-void
.end method

.method private updateMinScale(IILcom/android/photos/views/TiledImageRenderer$TileSource;Z)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "source"    # Lcom/android/photos/views/TiledImageRenderer$TileSource;
    .param p4, "resetScale"    # Z

    .prologue
    .line 159
    iget-object v4, p0, Lcom/android/launcher4/CropView;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 160
    if-eqz p4, :cond_0

    .line 161
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 163
    :cond_0
    if-eqz p3, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/android/launcher4/CropView;->getImageDims()[F

    move-result-object v0

    .line 165
    .local v0, "imageDims":[F
    const/4 v3, 0x0

    aget v2, v0, v3

    .line 166
    .local v2, "imageWidth":F
    const/4 v3, 0x1

    aget v1, v0, v3

    .line 167
    .local v1, "imageHeight":F
    int-to-float v3, p1

    div-float/2addr v3, v2

    int-to-float v5, p2

    div-float/2addr v5, v1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/launcher4/CropView;->mMinScale:F

    .line 168
    iget-object v3, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v5, p0, Lcom/android/launcher4/CropView;->mMinScale:F

    iget-object v6, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v6, v6, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 159
    .end local v0    # "imageDims":[F
    .end local v1    # "imageHeight":F
    .end local v2    # "imageWidth":F
    :cond_1
    monitor-exit v4

    .line 171
    return-void

    .line 159
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public getCrop()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 121
    iget-object v4, p0, Lcom/android/launcher4/CropView;->mTempEdges:Landroid/graphics/RectF;

    .line 122
    .local v4, "edges":Landroid/graphics/RectF;
    invoke-direct {p0, v4}, Lcom/android/launcher4/CropView;->getEdgesHelper(Landroid/graphics/RectF;)V

    .line 123
    iget-object v6, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v5, v6, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 125
    .local v5, "scale":F
    iget v6, v4, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    div-float v1, v6, v5

    .line 126
    .local v1, "cropLeft":F
    iget v6, v4, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    div-float v3, v6, v5

    .line 127
    .local v3, "cropTop":F
    invoke-virtual {p0}, Lcom/android/launcher4/CropView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float v2, v1, v6

    .line 128
    .local v2, "cropRight":F
    invoke-virtual {p0}, Lcom/android/launcher4/CropView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float v0, v3, v6

    .line 130
    .local v0, "cropBottom":F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v6
.end method

.method public getImageRotation()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    return v0
.end method

.method public getSourceDimensions()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v1}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v2}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public moveToLeft()V
    .locals 8

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/launcher4/CropView;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/CropView;->getHeight()I

    move-result v3

    if-nez v3, :cond_1

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/CropView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 195
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    new-instance v3, Lcom/android/launcher4/CropView$1;

    invoke-direct {v3, p0}, Lcom/android/launcher4/CropView$1;-><init>(Lcom/android/launcher4/CropView;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 202
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/CropView;->mTempEdges:Landroid/graphics/RectF;

    .line 203
    .local v0, "edges":Landroid/graphics/RectF;
    invoke-direct {p0, v0}, Lcom/android/launcher4/CropView;->getEdgesHelper(Landroid/graphics/RectF;)V

    .line 204
    iget-object v3, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v2, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 205
    .local v2, "scale":F
    iget v3, p0, Lcom/android/launcher4/CropView;->mCenterX:F

    float-to-double v4, v3

    iget v3, v0, Landroid/graphics/RectF;->left:F

    div-float/2addr v3, v2

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p0, Lcom/android/launcher4/CropView;->mCenterX:F

    .line 206
    invoke-direct {p0}, Lcom/android/launcher4/CropView;->updateCenter()V

    .line 207
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 183
    iget-object v0, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, p0, Lcom/android/launcher4/CropView;->mMinScale:F

    iget-object v2, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v2, v2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 184
    invoke-virtual {p0}, Lcom/android/launcher4/CropView;->invalidate()V

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 190
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher4/CropView;->updateMinScale(IILcom/android/photos/views/TiledImageRenderer$TileSource;Z)V

    .line 150
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 225
    .local v4, "action":I
    const/16 v25, 0x6

    move/from16 v0, v25

    if-ne v4, v0, :cond_1

    const/16 v16, 0x1

    .line 226
    .local v16, "pointerUp":Z
    :goto_0
    if-eqz v16, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v18

    .line 229
    .local v18, "skipIndex":I
    :goto_1
    const/16 v21, 0x0

    .local v21, "sumX":F
    const/16 v22, 0x0

    .line 230
    .local v22, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 231
    .local v8, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-lt v12, v8, :cond_3

    .line 237
    if-eqz v16, :cond_5

    add-int/lit8 v10, v8, -0x1

    .line 238
    .local v10, "div":I
    :goto_3
    int-to-float v0, v10

    move/from16 v25, v0

    div-float v23, v21, v25

    .line 239
    .local v23, "x":F
    int-to-float v0, v10

    move/from16 v25, v0

    div-float v24, v22, v25

    .line 241
    .local v24, "y":F
    if-nez v4, :cond_6

    .line 242
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/CropView;->mFirstX:F

    .line 243
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/CropView;->mFirstY:F

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher4/CropView;->mTouchDownTime:J

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mTouchCallback:Lcom/android/launcher4/CropView$TouchCallback;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mTouchCallback:Lcom/android/launcher4/CropView$TouchCallback;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/launcher4/CropView$TouchCallback;->onTouchDown()V

    .line 264
    :cond_0
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher4/CropView;->mTouchEnabled:Z

    move/from16 v25, v0

    if-nez v25, :cond_8

    .line 265
    const/16 v25, 0x1

    .line 319
    :goto_5
    return v25

    .line 225
    .end local v8    # "count":I
    .end local v10    # "div":I
    .end local v12    # "i":I
    .end local v16    # "pointerUp":Z
    .end local v18    # "skipIndex":I
    .end local v21    # "sumX":F
    .end local v22    # "sumY":F
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 226
    .restart local v16    # "pointerUp":Z
    :cond_2
    const/16 v18, -0x1

    goto :goto_1

    .line 232
    .restart local v8    # "count":I
    .restart local v12    # "i":I
    .restart local v18    # "skipIndex":I
    .restart local v21    # "sumX":F
    .restart local v22    # "sumY":F
    :cond_3
    move/from16 v0, v18

    if-ne v0, v12, :cond_4

    .line 231
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 234
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v25

    add-float v21, v21, v25

    .line 235
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v25

    add-float v22, v22, v25

    goto :goto_6

    :cond_5
    move v10, v8

    .line 237
    goto :goto_3

    .line 248
    .restart local v10    # "div":I
    .restart local v23    # "x":F
    .restart local v24    # "y":F
    :cond_6
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v4, v0, :cond_0

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CropView;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 251
    .local v7, "config":Landroid/view/ViewConfiguration;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CropView;->mFirstX:F

    move/from16 v25, v0

    sub-float v25, v25, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CropView;->mFirstX:F

    move/from16 v26, v0

    sub-float v26, v26, v23

    mul-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CropView;->mFirstY:F

    move/from16 v26, v0

    sub-float v26, v26, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CropView;->mFirstY:F

    move/from16 v27, v0

    sub-float v27, v27, v24

    mul-float v26, v26, v27

    add-float v20, v25, v26

    .line 252
    .local v20, "squaredDist":F
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v25

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v26

    mul-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v19, v0

    .line 253
    .local v19, "slop":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 254
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mTouchCallback:Lcom/android/launcher4/CropView$TouchCallback;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 256
    cmpg-float v25, v20, v19

    if-gez v25, :cond_7

    .line 257
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher4/CropView;->mTouchDownTime:J

    move-wide/from16 v26, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    cmp-long v25, v14, v26

    if-gez v25, :cond_7

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mTouchCallback:Lcom/android/launcher4/CropView$TouchCallback;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/launcher4/CropView$TouchCallback;->onTap()V

    .line 260
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mTouchCallback:Lcom/android/launcher4/CropView$TouchCallback;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/launcher4/CropView$TouchCallback;->onTouchUp()V

    goto/16 :goto_4

    .line 268
    .end local v7    # "config":Landroid/view/ViewConfiguration;
    .end local v14    # "now":J
    .end local v19    # "slop":F
    .end local v20    # "squaredDist":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 269
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 270
    packed-switch v4, :pswitch_data_0

    .line 282
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    .line 285
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher4/CropView;->mTempEdges:Landroid/graphics/RectF;

    .line 286
    .local v11, "edges":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher4/CropView;->getEdgesHelper(Landroid/graphics/RectF;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    move/from16 v17, v0

    .line 289
    .local v17, "scale":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/CropView;->mTempCoef:[F

    .line 290
    .local v6, "coef":[F
    const/16 v25, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v6, v25

    .line 291
    const/16 v25, 0x1

    const/high16 v27, 0x3f800000    # 1.0f

    aput v27, v6, v25

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 293
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/CropView;->mTempAdjustment:[F

    .line 294
    .local v5, "adjustment":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mTempAdjustment:[F

    move-object/from16 v25, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v28, v25, v27

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mTempAdjustment:[F

    move-object/from16 v25, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput v28, v25, v27

    .line 296
    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    const/16 v27, 0x0

    cmpl-float v25, v25, v27

    if-lez v25, :cond_c

    .line 297
    const/16 v25, 0x0

    iget v0, v11, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    div-float v27, v27, v17

    aput v27, v5, v25

    .line 301
    :cond_9
    :goto_8
    iget v0, v11, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    const/16 v27, 0x0

    cmpl-float v25, v25, v27

    if-lez v25, :cond_d

    .line 302
    const/16 v25, 0x1

    iget v0, v11, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    div-float v27, v27, v17

    invoke-static/range {v27 .. v27}, Landroid/util/FloatMath;->ceil(F)F

    move-result v27

    aput v27, v5, v25

    .line 306
    :cond_a
    :goto_9
    const/4 v9, 0x0

    .local v9, "dim":I
    :goto_a
    const/16 v25, 0x1

    move/from16 v0, v25

    if-le v9, v0, :cond_e

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 311
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CropView;->mCenterX:F

    move/from16 v25, v0

    const/16 v27, 0x0

    aget v27, v5, v27

    add-float v25, v25, v27

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/CropView;->mCenterX:F

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CropView;->mCenterY:F

    move/from16 v25, v0

    const/16 v27, 0x1

    aget v27, v5, v27

    add-float v25, v25, v27

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/CropView;->mCenterY:F

    .line 313
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/CropView;->updateCenter()V

    .line 268
    .end local v5    # "adjustment":[F
    .end local v6    # "coef":[F
    .end local v9    # "dim":I
    .end local v11    # "edges":Landroid/graphics/RectF;
    .end local v17    # "scale":F
    :cond_b
    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/CropView;->mLastX:F

    .line 318
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/CropView;->mLastY:F

    .line 319
    const/16 v25, 0x1

    goto/16 :goto_5

    .line 272
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher4/CropView;->mTempPoint:[F

    .line 273
    .local v13, "point":[F
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CropView;->mLastX:F

    move/from16 v27, v0

    sub-float v27, v27, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    aput v27, v13, v25

    .line 274
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CropView;->mLastY:F

    move/from16 v27, v0

    sub-float v27, v27, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    aput v27, v13, v25

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 276
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CropView;->mCenterX:F

    move/from16 v25, v0

    const/16 v27, 0x0

    aget v27, v13, v27

    add-float v25, v25, v27

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/CropView;->mCenterX:F

    .line 277
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/CropView;->mCenterY:F

    move/from16 v25, v0

    const/16 v27, 0x1

    aget v27, v13, v27

    add-float v25, v25, v27

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/CropView;->mCenterY:F

    .line 278
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/CropView;->updateCenter()V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CropView;->invalidate()V

    goto/16 :goto_7

    .line 268
    .end local v13    # "point":[F
    :catchall_0
    move-exception v25

    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v25

    .line 298
    .restart local v5    # "adjustment":[F
    .restart local v6    # "coef":[F
    .restart local v11    # "edges":Landroid/graphics/RectF;
    .restart local v17    # "scale":F
    :cond_c
    :try_start_2
    iget v0, v11, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CropView;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpg-float v25, v25, v27

    if-gez v25, :cond_9

    .line 299
    const/16 v25, 0x0

    iget v0, v11, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CropView;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v27, v27, v28

    div-float v27, v27, v17

    aput v27, v5, v25

    goto/16 :goto_8

    .line 303
    :cond_d
    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CropView;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpg-float v25, v25, v27

    if-gez v25, :cond_a

    .line 304
    const/16 v25, 0x1

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/CropView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v27, v27, v28

    div-float v27, v27, v17

    aput v27, v5, v25

    goto/16 :goto_9

    .line 307
    .restart local v9    # "dim":I
    :cond_e
    aget v25, v6, v9

    const/16 v27, 0x0

    cmpl-float v25, v25, v27

    if-lez v25, :cond_f

    aget v25, v5, v9

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->ceil(F)F

    move-result v25

    aput v25, v5, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_a

    .line 270
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/launcher4/CropView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iput p1, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 153
    monitor-exit v1

    .line 156
    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTileSource(Lcom/android/photos/views/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "source"    # Lcom/android/photos/views/TiledImageRenderer$TileSource;
    .param p2, "isReadyCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/android/photos/views/TiledImageView;->setTileSource(Lcom/android/photos/views/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V

    .line 139
    iget-object v0, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher4/CropView;->mCenterX:F

    .line 140
    iget-object v0, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher4/CropView;->mCenterY:F

    .line 141
    iget-object v0, p0, Lcom/android/launcher4/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 142
    iget-object v0, p0, Lcom/android/launcher4/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 143
    iget-object v0, p0, Lcom/android/launcher4/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 144
    iget-object v0, p0, Lcom/android/launcher4/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher4/CropView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v1, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher4/CropView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher4/CropView;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/launcher4/CropView;->updateMinScale(IILcom/android/photos/views/TiledImageRenderer$TileSource;Z)V

    .line 146
    return-void
.end method

.method public setTouchCallback(Lcom/android/launcher4/CropView$TouchCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/launcher4/CropView$TouchCallback;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/launcher4/CropView;->mTouchCallback:Lcom/android/launcher4/CropView$TouchCallback;

    .line 220
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/android/launcher4/CropView;->mTouchEnabled:Z

    .line 216
    return-void
.end method
