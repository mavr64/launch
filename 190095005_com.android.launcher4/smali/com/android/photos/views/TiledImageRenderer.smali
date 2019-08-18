.class public Lcom/android/photos/views/TiledImageRenderer;
.super Ljava/lang/Object;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/photos/views/TiledImageRenderer$Tile;,
        Lcom/android/photos/views/TiledImageRenderer$TileDecoder;,
        Lcom/android/photos/views/TiledImageRenderer$TileQueue;,
        Lcom/android/photos/views/TiledImageRenderer$TileSource;
    }
.end annotation


# static fields
.field public static final SIZE_UNKNOWN:I = -0x1

.field private static final STATE_ACTIVATED:I = 0x1

.field private static final STATE_DECODED:I = 0x8

.field private static final STATE_DECODE_FAIL:I = 0x10

.field private static final STATE_DECODING:I = 0x4

.field private static final STATE_IN_QUEUE:I = 0x2

.field private static final STATE_RECYCLED:I = 0x40

.field private static final STATE_RECYCLING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "TiledImageRenderer"

.field private static final UPLOAD_LIMIT:I = 0x1

.field private static sTilePool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveRange:[Landroid/graphics/Rect;

.field private final mActiveTiles:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/android/photos/views/TiledImageRenderer$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTileUploaded:Z

.field protected mCenterX:I

.field protected mCenterY:I

.field private final mDecodeQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mLayoutTiles:Z

.field private mLevel:I

.field protected mLevelCount:I

.field private mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mParent:Landroid/view/View;

.field private mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

.field private final mQueueLock:Ljava/lang/Object;

.field private final mRecycledQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

.field private mRenderComplete:Z

.field protected mRotation:I

.field protected mScale:F

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private mTileDecoder:Lcom/android/photos/views/TiledImageRenderer$TileDecoder;

.field private final mTileRange:Landroid/graphics/Rect;

.field private mTileSize:I

.field private final mUploadQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

.field private mUploadQuota:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/photos/views/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v2, p0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    .line 93
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mSourceRect:Landroid/graphics/RectF;

    .line 94
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mTargetRect:Landroid/graphics/RectF;

    .line 96
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-direct {v0, v3}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;-><init>(Lcom/android/photos/views/TiledImageRenderer$TileQueue;)V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mRecycledQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    .line 101
    new-instance v0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-direct {v0, v3}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;-><init>(Lcom/android/photos/views/TiledImageRenderer$TileQueue;)V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    .line 102
    new-instance v0, Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-direct {v0, v3}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;-><init>(Lcom/android/photos/views/TiledImageRenderer$TileQueue;)V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    .line 105
    iput v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageWidth:I

    .line 106
    iput v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageHeight:I

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveRange:[Landroid/graphics/Rect;

    .line 174
    iput-object p1, p0, Lcom/android/photos/views/TiledImageRenderer;->mParent:Landroid/view/View;

    .line 175
    new-instance v0, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;

    invoke-direct {v0, p0, v3}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;-><init>(Lcom/android/photos/views/TiledImageRenderer;Lcom/android/photos/views/TiledImageRenderer$TileDecoder;)V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileDecoder:Lcom/android/photos/views/TiledImageRenderer$TileDecoder;

    .line 176
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileDecoder:Lcom/android/photos/views/TiledImageRenderer$TileDecoder;

    invoke-virtual {v0}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->start()V

    .line 177
    return-void
.end method

.method static synthetic access$0()Landroid/util/Pools$Pool;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/photos/views/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/photos/views/TiledImageRenderer;)I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    return v0
.end method

.method static synthetic access$2(Lcom/android/photos/views/TiledImageRenderer;)Lcom/android/photos/views/TiledImageRenderer$TileSource;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/photos/views/TiledImageRenderer;III)Lcom/android/photos/views/TiledImageRenderer$Tile;
    .locals 1

    .prologue
    .line 559
    invoke-direct {p0, p1, p2, p3}, Lcom/android/photos/views/TiledImageRenderer;->getTile(III)Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/photos/views/TiledImageRenderer;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    return v0
.end method

.method static synthetic access$5(Lcom/android/photos/views/TiledImageRenderer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/photos/views/TiledImageRenderer;)Lcom/android/photos/views/TiledImageRenderer$TileQueue;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/photos/views/TiledImageRenderer;Lcom/android/photos/views/TiledImageRenderer$Tile;)V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/android/photos/views/TiledImageRenderer;->decodeTile(Lcom/android/photos/views/TiledImageRenderer$Tile;)V

    return-void
.end method

.method private activateTile(III)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 547
    invoke-static {p1, p2, p3}, Lcom/android/photos/views/TiledImageRenderer;->makeTileKey(III)J

    move-result-wide v0

    .line 548
    .local v0, "key":J
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 549
    .local v2, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    if-eqz v2, :cond_1

    .line 550
    iget v3, v2, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 551
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/photos/views/TiledImageRenderer;->obtainTile(III)Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v2

    .line 556
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private calculateLevelCount()V
    .locals 6

    .prologue
    .line 203
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    if-eqz v3, :cond_0

    .line 204
    const/4 v3, 0x0

    .line 205
    iget v4, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageWidth:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/photos/views/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 204
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->ceilLog2(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    .line 216
    :goto_0
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x1

    .line 208
    .local v0, "levels":I
    iget v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageWidth:I

    iget v4, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 209
    .local v1, "maxDim":I
    iget v2, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    .line 210
    .local v2, "t":I
    :goto_1
    if-lt v2, v1, :cond_1

    .line 214
    iput v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    goto :goto_0

    .line 211
    :cond_1
    shl-int/lit8 v2, v2, 0x1

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private decodeTile(Lcom/android/photos/views/TiledImageRenderer$Tile;)V
    .locals 4
    .param p1, "tile"    # Lcom/android/photos/views/TiledImageRenderer$Tile;

    .prologue
    .line 493
    iget-object v2, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 494
    :try_start_0
    iget v1, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 495
    monitor-exit v2

    .line 517
    :goto_0
    return-void

    .line 497
    :cond_0
    const/4 v1, 0x4

    iput v1, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 493
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 499
    invoke-virtual {p1}, Lcom/android/photos/views/TiledImageRenderer$Tile;->decode()Z

    move-result v0

    .line 500
    .local v0, "decodeComplete":Z
    iget-object v2, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 501
    :try_start_1
    iget v1, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 v3, 0x20

    if-ne v1, v3, :cond_2

    .line 502
    const/16 v1, 0x40

    iput v1, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 503
    iget-object v1, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 504
    sget-object v1, Lcom/android/photos/views/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;

    iget-object v3, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 505
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mRecycledQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v1, p1}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->push(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z

    .line 508
    monitor-exit v2

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 493
    .end local v0    # "decodeComplete":Z
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 510
    .restart local v0    # "decodeComplete":Z
    :cond_2
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    :goto_1
    :try_start_3
    iput v1, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 511
    if-nez v0, :cond_4

    .line 512
    monitor-exit v2

    goto :goto_0

    .line 510
    :cond_3
    const/16 v1, 0x10

    goto :goto_1

    .line 514
    :cond_4
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v1, p1}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->push(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z

    .line 500
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 516
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageRenderer;->invalidate()V

    goto :goto_0
.end method

.method private drawTile(Lcom/android/gallery3d/glrenderer/GLCanvas;IIIFFF)V
    .locals 12
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p2, "tx"    # I
    .param p3, "ty"    # I
    .param p4, "level"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "length"    # F

    .prologue
    .line 598
    iget-object v5, p0, Lcom/android/photos/views/TiledImageRenderer;->mSourceRect:Landroid/graphics/RectF;

    .line 599
    .local v5, "source":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/photos/views/TiledImageRenderer;->mTargetRect:Landroid/graphics/RectF;

    .line 600
    .local v6, "target":Landroid/graphics/RectF;
    add-float v8, p5, p7

    add-float v9, p6, p7

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 601
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v11, v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 603
    move/from16 v0, p4

    invoke-direct {p0, p2, p3, v0}, Lcom/android/photos/views/TiledImageRenderer;->getTile(III)Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v7

    .line 604
    .local v7, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    if-eqz v7, :cond_4

    .line 605
    invoke-virtual {v7}, Lcom/android/photos/views/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v8

    if-nez v8, :cond_0

    .line 606
    iget v8, v7, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_3

    .line 607
    iget v8, p0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQuota:I

    if-lez v8, :cond_2

    .line 608
    iget v8, p0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQuota:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQuota:I

    .line 609
    invoke-virtual {v7, p1}, Lcom/android/photos/views/TiledImageRenderer$Tile;->updateContent(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 618
    :cond_0
    :goto_0
    invoke-direct {p0, v7, p1, v5, v6}, Lcom/android/photos/views/TiledImageRenderer;->drawTile(Lcom/android/photos/views/TiledImageRenderer$Tile;Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 630
    :cond_1
    :goto_1
    return-void

    .line 611
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/photos/views/TiledImageRenderer;->mRenderComplete:Z

    goto :goto_0

    .line 613
    :cond_3
    iget v8, v7, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 v9, 0x10

    if-eq v8, v9, :cond_0

    .line 614
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/photos/views/TiledImageRenderer;->mRenderComplete:Z

    .line 615
    invoke-direct {p0, v7}, Lcom/android/photos/views/TiledImageRenderer;->queueForDecode(Lcom/android/photos/views/TiledImageRenderer$Tile;)V

    goto :goto_0

    .line 622
    :cond_4
    iget-object v8, p0, Lcom/android/photos/views/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    if-eqz v8, :cond_1

    .line 623
    iget v8, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    shl-int v4, v8, p4

    .line 624
    .local v4, "size":I
    iget-object v8, p0, Lcom/android/photos/views/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v8}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageWidth:I

    int-to-float v9, v9

    div-float v2, v8, v9

    .line 625
    .local v2, "scaleX":F
    iget-object v8, p0, Lcom/android/photos/views/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v8}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageHeight:I

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 626
    .local v3, "scaleY":F
    int-to-float v8, p2

    mul-float/2addr v8, v2

    int-to-float v9, p3

    mul-float/2addr v9, v3

    add-int v10, p2, v4

    int-to-float v10, v10

    mul-float/2addr v10, v2

    .line 627
    add-int v11, p3, v4

    int-to-float v11, v11

    mul-float/2addr v11, v3

    .line 626
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 628
    iget-object v8, p0, Lcom/android/photos/views/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    invoke-interface {p1, v8, v5, v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method private drawTile(Lcom/android/photos/views/TiledImageRenderer$Tile;Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4
    .param p1, "tile"    # Lcom/android/photos/views/TiledImageRenderer$Tile;
    .param p2, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;
    .param p3, "source"    # Landroid/graphics/RectF;
    .param p4, "target"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 635
    :goto_0
    invoke-virtual {p1}, Lcom/android/photos/views/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    invoke-interface {p2, p1, p3, p4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 637
    const/4 v1, 0x1

    .line 643
    :goto_1
    return v1

    .line 641
    :cond_0
    invoke-virtual {p1}, Lcom/android/photos/views/TiledImageRenderer$Tile;->getParentTile()Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    .line 642
    .local v0, "parent":Lcom/android/photos/views/TiledImageRenderer$Tile;
    if-nez v0, :cond_1

    .line 643
    const/4 v1, 0x0

    goto :goto_1

    .line 645
    :cond_1
    iget v1, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    iget v2, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    if-ne v1, v2, :cond_2

    .line 646
    iget v1, p3, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->left:F

    .line 647
    iget v1, p3, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->right:F

    .line 652
    :goto_2
    iget v1, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    iget v2, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    if-ne v1, v2, :cond_3

    .line 653
    iget v1, p3, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->top:F

    .line 654
    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->bottom:F

    .line 659
    :goto_3
    move-object p1, v0

    .line 634
    goto :goto_0

    .line 649
    :cond_2
    iget v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->left:F

    .line 650
    iget v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 656
    :cond_3
    iget v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->top:F

    .line 657
    iget v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->bottom:F

    goto :goto_3
.end method

.method private getRange(Landroid/graphics/Rect;IIIFI)V
    .locals 26
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "cX"    # I
    .param p3, "cY"    # I
    .param p4, "level"    # I
    .param p5, "scale"    # F
    .param p6, "rotation"    # I

    .prologue
    .line 362
    move/from16 v0, p6

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 363
    .local v10, "radians":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 364
    .local v16, "w":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v6, v0

    .line 366
    .local v6, "h":D
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 367
    .local v4, "cos":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 369
    .local v12, "sin":D
    mul-double v20, v4, v16

    mul-double v22, v12, v6

    sub-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    mul-double v22, v4, v16

    mul-double v24, v12, v6

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    .line 368
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v18, v0

    .line 371
    .local v18, "width":I
    mul-double v20, v12, v16

    mul-double v22, v4, v6

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    mul-double v22, v12, v16

    mul-double v24, v4, v6

    sub-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    .line 370
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v3, v0

    .line 373
    .local v3, "height":I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v8, v0

    .line 374
    .local v8, "left":I
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v3

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v15, v0

    .line 375
    .local v15, "top":I
    int-to-float v0, v8

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v9, v0

    .line 376
    .local v9, "right":I
    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v3

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v2, v0

    .line 379
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    move/from16 v19, v0

    shl-int v14, v19, p4

    .line 380
    .local v14, "size":I
    const/16 v19, 0x0

    div-int v20, v8, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 381
    const/16 v19, 0x0

    div-int v20, v15, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 382
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mImageWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 383
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mImageHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 385
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v15, v9, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 386
    return-void
.end method

.method private getRange(Landroid/graphics/Rect;IIII)V
    .locals 7
    .param p1, "out"    # Landroid/graphics/Rect;
    .param p2, "cX"    # I
    .param p3, "cY"    # I
    .param p4, "level"    # I
    .param p5, "rotation"    # I

    .prologue
    .line 350
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    add-int/lit8 v2, p4, 0x1

    shl-int/2addr v1, v2

    int-to-float v1, v1

    div-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/photos/views/TiledImageRenderer;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 351
    return-void
.end method

.method private getTile(III)Lcom/android/photos/views/TiledImageRenderer$Tile;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-static {p1, p2, p3}, Lcom/android/photos/views/TiledImageRenderer;->makeTileKey(III)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/photos/views/TiledImageRenderer$Tile;

    return-object v0
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 189
    return-void
.end method

.method private invalidateTiles()V
    .locals 5

    .prologue
    .line 335
    iget-object v4, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 336
    :try_start_0
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v3}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 337
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v3}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 340
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    .line 341
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 345
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 335
    monitor-exit v4

    .line 347
    return-void

    .line 342
    :cond_0
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 343
    .local v2, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    invoke-direct {p0, v2}, Lcom/android/photos/views/TiledImageRenderer;->recycleTile(Lcom/android/photos/views/TiledImageRenderer$Tile;)V

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static isHighResolution(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x800

    .line 166
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 168
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 167
    check-cast v1, Landroid/view/WindowManager;

    .line 169
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 170
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v2, v3, :cond_0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private layoutTiles()V
    .locals 22

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewWidth:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewHeight:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    if-nez v3, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    .line 270
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    div-float/2addr v3, v5

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->floorLog2(F)I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    invoke-static {v3, v5, v6}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    .line 275
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    if-eq v3, v5, :cond_3

    .line 276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/photos/views/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    .line 277
    .local v4, "range":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/photos/views/TiledImageRenderer;->mCenterX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mCenterY:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/photos/views/TiledImageRenderer;->mRotation:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/photos/views/TiledImageRenderer;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 278
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mCenterX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mOffsetX:I

    .line 279
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewHeight:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mCenterY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mOffsetY:I

    .line 280
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    shl-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v3, v5

    const/high16 v5, 0x3f400000    # 0.75f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    add-int/lit8 v13, v3, -0x1

    .line 288
    .end local v4    # "range":Landroid/graphics/Rect;
    .local v13, "fromLevel":I
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    add-int/lit8 v5, v5, -0x2

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 289
    add-int/lit8 v3, v13, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 291
    .local v12, "endLevel":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/photos/views/TiledImageRenderer;->mActiveRange:[Landroid/graphics/Rect;

    .line 292
    .local v4, "range":[Landroid/graphics/Rect;
    move v9, v13

    .local v9, "i":I
    :goto_2
    if-lt v9, v12, :cond_4

    .line 297
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mRotation:I

    rem-int/lit8 v3, v3, 0x5a

    if-nez v3, :cond_0

    .line 301
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 302
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v3}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v3}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 304
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mBackgroundTileUploaded:Z

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v15

    .line 309
    .local v15, "n":I
    const/4 v9, 0x0

    :goto_3
    if-lt v9, v15, :cond_5

    .line 301
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    move v9, v13

    :goto_4
    if-lt v9, v12, :cond_8

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/photos/views/TiledImageRenderer;->invalidate()V

    goto/16 :goto_0

    .line 280
    .end local v9    # "i":I
    .end local v12    # "endLevel":I
    .end local v13    # "fromLevel":I
    .end local v15    # "n":I
    .local v4, "range":Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    goto :goto_1

    .line 283
    .end local v4    # "range":Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    add-int/lit8 v13, v3, -0x2

    .line 284
    .restart local v13    # "fromLevel":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/photos/views/TiledImageRenderer;->mCenterX:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mOffsetX:I

    .line 285
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewHeight:I

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/photos/views/TiledImageRenderer;->mCenterY:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mOffsetY:I

    goto/16 :goto_1

    .line 293
    .local v4, "range":[Landroid/graphics/Rect;
    .restart local v9    # "i":I
    .restart local v12    # "endLevel":I
    :cond_4
    sub-int v3, v9, v13

    aget-object v6, v4, v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/photos/views/TiledImageRenderer;->mCenterX:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/photos/views/TiledImageRenderer;->mCenterY:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/photos/views/TiledImageRenderer;->mRotation:I

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/photos/views/TiledImageRenderer;->getRange(Landroid/graphics/Rect;IIII)V

    .line 292
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 310
    .restart local v15    # "n":I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 311
    .local v19, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    move-object/from16 v0, v19

    iget v14, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    .line 312
    .local v14, "level":I
    if-lt v14, v13, :cond_6

    if-ge v14, v12, :cond_6

    .line 313
    sub-int v3, v14, v13

    aget-object v3, v4, v3

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_7

    .line 314
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V

    .line 315
    add-int/lit8 v9, v9, -0x1

    .line 316
    add-int/lit8 v15, v15, -0x1

    .line 317
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/photos/views/TiledImageRenderer;->recycleTile(Lcom/android/photos/views/TiledImageRenderer$Tile;)V

    .line 309
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 301
    .end local v14    # "level":I
    .end local v15    # "n":I
    .end local v19    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 323
    .restart local v15    # "n":I
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    shl-int v18, v3, v9

    .line 324
    .local v18, "size":I
    sub-int v3, v9, v13

    aget-object v16, v4, v3

    .line 325
    .local v16, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .local v21, "y":I
    move-object/from16 v0, v16

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .local v11, "bottom":I
    :goto_5
    move/from16 v0, v21

    if-lt v0, v11, :cond_9

    .line 322
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 326
    :cond_9
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    .local v20, "x":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    .local v17, "right":I
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v17

    if-lt v0, v1, :cond_a

    .line 325
    add-int v21, v21, v18

    goto :goto_5

    .line 327
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v9}, Lcom/android/photos/views/TiledImageRenderer;->activateTile(III)V

    .line 326
    add-int v20, v20, v18

    goto :goto_6
.end method

.method private static makeTileKey(III)J
    .locals 7
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "level"    # I

    .prologue
    const/16 v6, 0x10

    .line 564
    int-to-long v0, p0

    .line 565
    .local v0, "result":J
    shl-long v2, v0, v6

    int-to-long v4, p1

    or-long v0, v2, v4

    .line 566
    shl-long v2, v0, v6

    int-to-long v4, p2

    or-long v0, v2, v4

    .line 567
    return-wide v0
.end method

.method private obtainTile(III)Lcom/android/photos/views/TiledImageRenderer$Tile;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "level"    # I

    .prologue
    .line 520
    iget-object v2, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mRecycledQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v1}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->pop()Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    .line 522
    .local v0, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    if-eqz v0, :cond_0

    .line 523
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 524
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/photos/views/TiledImageRenderer$Tile;->update(III)V

    .line 525
    monitor-exit v2

    .line 527
    .end local v0    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :goto_0
    return-object v0

    .restart local v0    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :cond_0
    new-instance v0, Lcom/android/photos/views/TiledImageRenderer$Tile;

    .end local v0    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/photos/views/TiledImageRenderer$Tile;-><init>(Lcom/android/photos/views/TiledImageRenderer;III)V

    monitor-exit v2

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private queueForDecode(Lcom/android/photos/views/TiledImageRenderer$Tile;)V
    .locals 3
    .param p1, "tile"    # Lcom/android/photos/views/TiledImageRenderer$Tile;

    .prologue
    .line 482
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_0
    iget v0, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 484
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 485
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v0, p1}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->push(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 482
    :cond_0
    monitor-exit v1

    .line 490
    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private recycleTile(Lcom/android/photos/views/TiledImageRenderer$Tile;)V
    .locals 3
    .param p1, "tile"    # Lcom/android/photos/views/TiledImageRenderer$Tile;

    .prologue
    .line 532
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 533
    :try_start_0
    iget v0, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 534
    const/16 v0, 0x20

    iput v0, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 535
    monitor-exit v1

    .line 544
    :goto_0
    return-void

    .line 537
    :cond_0
    const/16 v0, 0x40

    iput v0, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 538
    iget-object v0, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 539
    sget-object v0, Lcom/android/photos/views/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;

    iget-object v2, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 540
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mRecycledQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v0, p1}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->push(Lcom/android/photos/views/TiledImageRenderer$Tile;)Z

    .line 532
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static suggestedTileSize(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    invoke-static {p0}, Lcom/android/photos/views/TiledImageRenderer;->isHighResolution(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x100

    goto :goto_0
.end method

.method private uploadBackgroundTiles(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 471
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mBackgroundTileUploaded:Z

    .line 472
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    .line 473
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 479
    return-void

    .line 474
    :cond_0
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 475
    .local v2, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    invoke-virtual {v2}, Lcom/android/photos/views/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 476
    invoke-direct {p0, v2}, Lcom/android/photos/views/TiledImageRenderer;->queueForDecode(Lcom/android/photos/views/TiledImageRenderer$Tile;)V

    .line 473
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private uploadTiles(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 5
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 571
    const/4 v0, 0x1

    .line 572
    .local v0, "quota":I
    const/4 v1, 0x0

    .line 573
    .local v1, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :cond_0
    :goto_0
    if-gtz v0, :cond_3

    .line 589
    :cond_1
    if-eqz v1, :cond_2

    .line 590
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageRenderer;->invalidate()V

    .line 592
    :cond_2
    return-void

    .line 574
    :cond_3
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 575
    :try_start_0
    iget-object v2, p0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v2}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->pop()Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v1

    .line 574
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    if-eqz v1, :cond_1

    .line 580
    invoke-virtual {v1}, Lcom/android/photos/views/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 581
    iget v2, v1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 582
    invoke-virtual {v1, p1}, Lcom/android/photos/views/TiledImageRenderer$Tile;->updateContent(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 583
    add-int/lit8 v0, v0, -0x1

    .line 584
    goto :goto_0

    .line 574
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 585
    :cond_4
    const-string v2, "TiledImageRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tile in upload queue has invalid state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 24
    .param p1, "canvas"    # Lcom/android/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/android/photos/views/TiledImageRenderer;->layoutTiles()V

    .line 415
    invoke-direct/range {p0 .. p1}, Lcom/android/photos/views/TiledImageRenderer;->uploadTiles(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 417
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQuota:I

    .line 418
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/photos/views/TiledImageRenderer;->mRenderComplete:Z

    .line 420
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    .line 421
    .local v6, "level":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mRotation:I

    move/from16 v22, v0

    .line 422
    .local v22, "rotation":I
    const/16 v18, 0x0

    .line 423
    .local v18, "flags":I
    if-eqz v22, :cond_0

    .line 424
    or-int/lit8 v18, v18, 0x2

    .line 427
    :cond_0
    if-eqz v18, :cond_1

    .line 428
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 429
    if-eqz v22, :cond_1

    .line 430
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewWidth:I

    div-int/lit8 v16, v2, 0x2

    .local v16, "centerX":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/photos/views/TiledImageRenderer;->mViewHeight:I

    div-int/lit8 v17, v2, 0x2

    .line 431
    .local v17, "centerY":I
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 432
    move/from16 v0, v22

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v10, v11}, Lcom/android/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 433
    move/from16 v0, v16

    neg-int v2, v0

    int-to-float v2, v2

    move/from16 v0, v17

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 437
    .end local v16    # "centerX":I
    .end local v17    # "centerY":I
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    if-eq v6, v2, :cond_7

    .line 438
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    shl-int v23, v2, v6

    .line 439
    .local v23, "size":I
    move/from16 v0, v23

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    mul-float v9, v2, v3

    .line 440
    .local v9, "length":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 442
    .local v21, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .local v5, "ty":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v5, v2, :cond_5

    .line 455
    .end local v5    # "ty":I
    .end local v9    # "length":F
    .end local v19    # "i":I
    .end local v21    # "r":Landroid/graphics/Rect;
    .end local v23    # "size":I
    :cond_2
    :goto_1
    if-eqz v18, :cond_3

    .line 456
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 460
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/photos/views/TiledImageRenderer;->mRenderComplete:Z

    if-eqz v2, :cond_9

    .line 461
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/photos/views/TiledImageRenderer;->mBackgroundTileUploaded:Z

    if-nez v2, :cond_4

    .line 462
    invoke-direct/range {p0 .. p1}, Lcom/android/photos/views/TiledImageRenderer;->uploadBackgroundTiles(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    .line 467
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/photos/views/TiledImageRenderer;->mRenderComplete:Z

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/photos/views/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    if-nez v2, :cond_a

    const/4 v2, 0x0

    :goto_3
    return v2

    .line 443
    .restart local v5    # "ty":I
    .restart local v9    # "length":F
    .restart local v19    # "i":I
    .restart local v21    # "r":Landroid/graphics/Rect;
    .restart local v23    # "size":I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/photos/views/TiledImageRenderer;->mOffsetY:I

    int-to-float v2, v2

    move/from16 v0, v19

    int-to-float v3, v0

    mul-float/2addr v3, v9

    add-float v8, v2, v3

    .line 444
    .local v8, "y":F
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->left:I

    .local v4, "tx":I
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_4
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-lt v4, v2, :cond_6

    .line 442
    add-int v5, v5, v23

    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 445
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/photos/views/TiledImageRenderer;->mOffsetX:I

    int-to-float v2, v2

    move/from16 v0, v20

    int-to-float v3, v0

    mul-float/2addr v3, v9

    add-float v7, v2, v3

    .local v7, "x":F
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 446
    invoke-direct/range {v2 .. v9}, Lcom/android/photos/views/TiledImageRenderer;->drawTile(Lcom/android/gallery3d/glrenderer/GLCanvas;IIIFFF)V

    .line 444
    add-int v4, v4, v23

    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 449
    .end local v4    # "tx":I
    .end local v5    # "ty":I
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "length":F
    .end local v19    # "i":I
    .end local v20    # "j":I
    .end local v21    # "r":Landroid/graphics/Rect;
    .end local v23    # "size":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/photos/views/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    if-eqz v2, :cond_2

    .line 450
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/photos/views/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/photos/views/TiledImageRenderer;->mOffsetX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/photos/views/TiledImageRenderer;->mOffsetY:I

    .line 451
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/photos/views/TiledImageRenderer;->mImageWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 452
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/photos/views/TiledImageRenderer;->mImageHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v15

    move-object/from16 v11, p1

    .line 450
    invoke-virtual/range {v10 .. v15}, Lcom/android/gallery3d/glrenderer/BasicTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 454
    :catchall_0
    move-exception v2

    .line 455
    if-eqz v18, :cond_8

    .line 456
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 458
    :cond_8
    throw v2

    .line 465
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/photos/views/TiledImageRenderer;->invalidate()V

    goto :goto_2

    .line 467
    :cond_a
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public freeTextures()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 389
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    .line 391
    iget-object v4, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileDecoder:Lcom/android/photos/views/TiledImageRenderer$TileDecoder;

    invoke-virtual {v4}, Lcom/android/photos/views/TiledImageRenderer$TileDecoder;->finishAndWait()V

    .line 392
    iget-object v5, p0, Lcom/android/photos/views/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 393
    :try_start_0
    iget-object v4, p0, Lcom/android/photos/views/TiledImageRenderer;->mUploadQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v4}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 394
    iget-object v4, p0, Lcom/android/photos/views/TiledImageRenderer;->mDecodeQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v4}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->clean()V

    .line 395
    iget-object v4, p0, Lcom/android/photos/views/TiledImageRenderer;->mRecycledQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v4}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->pop()Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v3

    .line 396
    .local v3, "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :goto_0
    if-nez v3, :cond_1

    .line 392
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    iget-object v4, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    .line 403
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 407
    iget-object v4, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 408
    iget-object v4, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 410
    :cond_0
    sget-object v4, Lcom/android/photos/views/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;

    invoke-interface {v4}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 411
    return-void

    .line 397
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/android/photos/views/TiledImageRenderer$Tile;->recycle()V

    .line 398
    iget-object v4, p0, Lcom/android/photos/views/TiledImageRenderer;->mRecycledQueue:Lcom/android/photos/views/TiledImageRenderer$TileQueue;

    invoke-virtual {v4}, Lcom/android/photos/views/TiledImageRenderer$TileQueue;->pop()Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v3

    goto :goto_0

    .line 392
    .end local v3    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 404
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    .restart local v3    # "tile":Lcom/android/photos/views/TiledImageRenderer$Tile;
    :cond_2
    iget-object v4, p0, Lcom/android/photos/views/TiledImageRenderer;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/photos/views/TiledImageRenderer$Tile;

    .line 405
    .local v2, "texture":Lcom/android/photos/views/TiledImageRenderer$Tile;
    invoke-virtual {v2}, Lcom/android/photos/views/TiledImageRenderer$Tile;->recycle()V

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mViewHeight:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mViewWidth:I

    return v0
.end method

.method public notifyModelInvalidated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageRenderer;->invalidateTiles()V

    .line 220
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    if-nez v0, :cond_0

    .line 221
    iput v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageWidth:I

    .line 222
    iput v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageHeight:I

    .line 223
    iput v1, p0, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    .line 232
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    .line 233
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageWidth:I

    .line 227
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mImageHeight:I

    .line 228
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getPreview()Lcom/android/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    .line 229
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getTileSize()I

    move-result v0

    iput v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    .line 230
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageRenderer;->calculateLevelCount()V

    goto :goto_0
.end method

.method public setModel(Lcom/android/photos/views/TiledImageRenderer$TileSource;I)V
    .locals 1
    .param p1, "model"    # Lcom/android/photos/views/TiledImageRenderer$TileSource;
    .param p2, "rotation"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    if-eq v0, p1, :cond_0

    .line 193
    iput-object p1, p0, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    .line 194
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageRenderer;->notifyModelInvalidated()V

    .line 196
    :cond_0
    iget v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mRotation:I

    if-eq v0, p2, :cond_1

    .line 197
    iput p2, p0, Lcom/android/photos/views/TiledImageRenderer;->mRotation:I

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    .line 200
    :cond_1
    return-void
.end method

.method public setPosition(IIF)V
    .locals 1
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "scale"    # F

    .prologue
    .line 241
    iget v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mCenterX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mCenterY:I

    if-ne v0, p2, :cond_0

    .line 242
    iget v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 245
    :cond_0
    iput p1, p0, Lcom/android/photos/views/TiledImageRenderer;->mCenterX:I

    .line 246
    iput p2, p0, Lcom/android/photos/views/TiledImageRenderer;->mCenterY:I

    .line 247
    iput p3, p0, Lcom/android/photos/views/TiledImageRenderer;->mScale:F

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/photos/views/TiledImageRenderer;->mLayoutTiles:Z

    goto :goto_0
.end method

.method public setViewSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/android/photos/views/TiledImageRenderer;->mViewWidth:I

    .line 237
    iput p2, p0, Lcom/android/photos/views/TiledImageRenderer;->mViewHeight:I

    .line 238
    return-void
.end method
