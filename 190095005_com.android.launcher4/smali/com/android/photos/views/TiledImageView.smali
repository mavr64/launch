.class public Lcom/android/photos/views/TiledImageView;
.super Landroid/widget/FrameLayout;
.source "TiledImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/photos/views/TiledImageView$ColoredTiles;,
        Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;,
        Lcom/android/photos/views/TiledImageView$TileRenderer;
    }
.end annotation


# static fields
.field private static final IS_SUPPORTED:Z

.field private static final USE_CHOREOGRAPHER:Z

.field private static final USE_TEXTURE_VIEW:Z


# instance fields
.field private mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mFreeTextures:Ljava/lang/Runnable;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mInvalPending:Z

.field protected mLock:Ljava/lang/Object;

.field protected mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

.field private mTempRectF:Landroid/graphics/RectF;

.field private mTextureView:Lcom/android/photos/views/BlockingGLTextureView;

.field private mValues:[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    move v0, v1

    .line 52
    :goto_0
    sput-boolean v0, Lcom/android/photos/views/TiledImageView;->IS_SUPPORTED:Z

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    .line 54
    :goto_1
    sput-boolean v1, Lcom/android/photos/views/TiledImageView;->USE_CHOREOGRAPHER:Z

    .line 55
    return-void

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0

    :cond_1
    move v1, v2

    .line 55
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/photos/views/TiledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-boolean v5, p0, Lcom/android/photos/views/TiledImageView;->mInvalPending:Z

    .line 74
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/photos/views/TiledImageView;->mValues:[F

    .line 79
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    .line 126
    new-instance v1, Lcom/android/photos/views/TiledImageView$1;

    invoke-direct {v1, p0}, Lcom/android/photos/views/TiledImageView$1;-><init>(Lcom/android/photos/views/TiledImageView;)V

    iput-object v1, p0, Lcom/android/photos/views/TiledImageView;->mFreeTextures:Ljava/lang/Runnable;

    .line 244
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    .line 92
    sget-boolean v1, Lcom/android/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    invoke-direct {v1}, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;-><init>()V

    iput-object v1, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    .line 97
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    new-instance v2, Lcom/android/photos/views/TiledImageRenderer;

    invoke-direct {v2, p0}, Lcom/android/photos/views/TiledImageRenderer;-><init>(Landroid/view/View;)V

    iput-object v2, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    .line 104
    new-instance v1, Landroid/opengl/GLSurfaceView;

    invoke-direct {v1, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 105
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 106
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Lcom/android/photos/views/TiledImageView$TileRenderer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/photos/views/TiledImageView$TileRenderer;-><init>(Lcom/android/photos/views/TiledImageView;Lcom/android/photos/views/TiledImageView$TileRenderer;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 107
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v5}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 108
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 110
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 111
    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/android/photos/views/TiledImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/android/photos/views/TiledImageView;Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/photos/views/TiledImageView;->mInvalPending:Z

    return-void
.end method

.method static synthetic access$1(Lcom/android/photos/views/TiledImageView;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method private invalOnVsync()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/photos/views/TiledImageView;->mInvalPending:Z

    if-nez v0, :cond_1

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/photos/views/TiledImageView;->mInvalPending:Z

    .line 231
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/android/photos/views/TiledImageView$2;

    invoke-direct {v0, p0}, Lcom/android/photos/views/TiledImageView$2;-><init>(Lcom/android/photos/views/TiledImageView;)V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 240
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/photos/views/TiledImageView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 242
    :cond_1
    return-void
.end method

.method public static isTilingSupported()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/photos/views/TiledImageView;->IS_SUPPORTED:Z

    return v0
.end method

.method private updateScaleIfNecessaryLocked(Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;)V
    .locals 3
    .param p1, "renderer"    # Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    if-eqz v0, :cond_0

    .line 182
    iget v0, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v1}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 187
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v2}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 185
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 116
    sget-boolean v0, Lcom/android/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/android/photos/views/TiledImageView;->mFreeTextures:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 192
    sget-boolean v0, Lcom/android/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 212
    sget-boolean v0, Lcom/android/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 219
    :cond_0
    sget-boolean v0, Lcom/android/photos/views/TiledImageView;->USE_CHOREOGRAPHER:Z

    if-eqz v0, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/android/photos/views/TiledImageView;->invalOnVsync()V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 171
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 172
    sget-boolean v0, Lcom/android/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    invoke-direct {p0, v0}, Lcom/android/photos/views/TiledImageView;->updateScaleIfNecessaryLocked(Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;)V

    .line 175
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Lcom/android/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    goto :goto_0
.end method

.method public positionFromMatrix(Landroid/graphics/Matrix;)V
    .locals 14
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 246
    sget-boolean v9, Lcom/android/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v9, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v9, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v9, v9, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    if-eqz v9, :cond_0

    .line 250
    iget-object v9, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v9, v9, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v9}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getRotation()I

    move-result v3

    .line 251
    .local v3, "rotation":I
    rem-int/lit16 v9, v3, 0xb4

    if-nez v9, :cond_4

    const/4 v5, 0x0

    .line 252
    .local v5, "swap":Z
    :goto_1
    if-eqz v5, :cond_5

    iget-object v9, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v9, v9, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v9}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v6

    .line 254
    .local v6, "width":I
    :goto_2
    if-eqz v5, :cond_6

    iget-object v9, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v9, v9, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v9}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v2

    .line 256
    .local v2, "height":I
    :goto_3
    iget-object v9, p0, Lcom/android/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    int-to-float v12, v6

    int-to-float v13, v2

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 257
    iget-object v9, p0, Lcom/android/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 258
    iget-object v9, p0, Lcom/android/photos/views/TiledImageView;->mValues:[F

    invoke-virtual {p1, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 259
    div-int/lit8 v0, v6, 0x2

    .line 260
    .local v0, "cx":I
    div-int/lit8 v1, v2, 0x2

    .line 261
    .local v1, "cy":I
    iget-object v9, p0, Lcom/android/photos/views/TiledImageView;->mValues:[F

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 262
    .local v4, "scale":F
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    div-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 263
    .local v7, "xoffset":I
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    div-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 264
    .local v8, "yoffset":I
    const/16 v9, 0x5a

    if-eq v3, v9, :cond_2

    const/16 v9, 0xb4

    if-ne v3, v9, :cond_7

    .line 265
    :cond_2
    int-to-float v9, v0

    iget-object v10, p0, Lcom/android/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, v4

    int-to-float v11, v7

    sub-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v0, v9

    .line 269
    :goto_4
    const/16 v9, 0xb4

    if-eq v3, v9, :cond_3

    const/16 v9, 0x10e

    if-ne v3, v9, :cond_8

    .line 270
    :cond_3
    int-to-float v9, v1

    iget-object v10, p0, Lcom/android/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    div-float/2addr v10, v4

    int-to-float v11, v8

    sub-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v1, v9

    .line 274
    :goto_5
    iget-object v9, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iput v4, v9, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 275
    iget-object v10, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    if-eqz v5, :cond_9

    move v9, v1

    :goto_6
    iput v9, v10, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    .line 276
    iget-object v9, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    if-eqz v5, :cond_a

    .end local v0    # "cx":I
    :goto_7
    iput v0, v9, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    .line 277
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView;->invalidate()V

    goto/16 :goto_0

    .line 251
    .end local v1    # "cy":I
    .end local v2    # "height":I
    .end local v4    # "scale":F
    .end local v5    # "swap":Z
    .end local v6    # "width":I
    .end local v7    # "xoffset":I
    .end local v8    # "yoffset":I
    :cond_4
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 253
    .restart local v5    # "swap":Z
    :cond_5
    iget-object v9, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v9, v9, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v9}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v6

    goto/16 :goto_2

    .line 255
    .restart local v6    # "width":I
    :cond_6
    iget-object v9, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v9, v9, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v9}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v2

    goto/16 :goto_3

    .line 267
    .restart local v0    # "cx":I
    .restart local v1    # "cy":I
    .restart local v2    # "height":I
    .restart local v4    # "scale":F
    .restart local v7    # "xoffset":I
    .restart local v8    # "yoffset":I
    :cond_7
    int-to-float v9, v0

    iget-object v10, p0, Lcom/android/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    div-float/2addr v10, v4

    int-to-float v11, v7

    sub-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v0, v9

    goto :goto_4

    .line 272
    :cond_8
    int-to-float v9, v1

    iget-object v10, p0, Lcom/android/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    div-float/2addr v10, v4

    int-to-float v11, v8

    sub-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v1, v9

    goto :goto_5

    :cond_9
    move v9, v0

    .line 275
    goto :goto_6

    :cond_a
    move v0, v1

    .line 276
    goto :goto_7
.end method

.method public setTileSource(Lcom/android/photos/views/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "source"    # Lcom/android/photos/views/TiledImageRenderer$TileSource;
    .param p2, "isReadyCallback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x0

    .line 153
    sget-boolean v1, Lcom/android/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/android/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iput-object p1, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    .line 158
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iput-object p2, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;

    .line 159
    iget-object v3, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    :goto_1
    iput v1, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    .line 160
    iget-object v3, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    :goto_2
    iput v1, v3, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    .line 161
    iget-object v1, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getRotation()I

    move-result v0

    :cond_1
    iput v0, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    .line 162
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 163
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    invoke-direct {p0, v0}, Lcom/android/photos/views/TiledImageView;->updateScaleIfNecessaryLocked(Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;)V

    .line 156
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageView;->invalidate()V

    goto :goto_0

    :cond_2
    move v1, v0

    .line 159
    goto :goto_1

    :cond_3
    move v1, v0

    .line 160
    goto :goto_2

    .line 156
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setTranslationX(F)V
    .locals 1
    .param p1, "translationX"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 204
    sget-boolean v0, Lcom/android/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0
.end method
