.class Lcom/android/photos/views/TiledImageView$TileRenderer;
.super Ljava/lang/Object;
.source "TiledImageView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/views/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileRenderer"
.end annotation


# instance fields
.field private mCanvas:Lcom/android/gallery3d/glrenderer/GLES20Canvas;

.field final synthetic this$0:Lcom/android/photos/views/TiledImageView;


# direct methods
.method private constructor <init>(Lcom/android/photos/views/TiledImageView;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/photos/views/TiledImageView;Lcom/android/photos/views/TiledImageView$TileRenderer;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/android/photos/views/TiledImageView$TileRenderer;-><init>(Lcom/android/photos/views/TiledImageView;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 300
    iget-object v2, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->mCanvas:Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    invoke-virtual {v2}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->clearBuffer()V

    .line 302
    iget-object v2, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v3, v2, Lcom/android/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 303
    :try_start_0
    iget-object v2, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v2, v2, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v1, v2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;

    .line 304
    .local v1, "readyCallback":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v2, v2, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    iget-object v4, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v4, v4, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v4, v4, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    iget-object v5, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v5, v5, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v5, v5, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    invoke-virtual {v2, v4, v5}, Lcom/android/photos/views/TiledImageRenderer;->setModel(Lcom/android/photos/views/TiledImageRenderer$TileSource;I)V

    .line 305
    iget-object v2, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v2, v2, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    iget-object v4, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v4, v4, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    iget-object v5, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v5, v5, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v5, v5, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    .line 306
    iget-object v6, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v6, v6, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v6, v6, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 305
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/photos/views/TiledImageRenderer;->setPosition(IIF)V

    .line 302
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    iget-object v2, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v2, v2, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    iget-object v3, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->mCanvas:Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    invoke-virtual {v2, v3}, Lcom/android/photos/views/TiledImageRenderer;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z

    move-result v0

    .line 309
    .local v0, "complete":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 310
    iget-object v2, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v3, v2, Lcom/android/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 313
    :try_start_1
    iget-object v2, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v2, v2, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;

    if-ne v2, v1, :cond_0

    .line 314
    iget-object v2, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v2, v2, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;

    .line 310
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 317
    if-eqz v1, :cond_1

    .line 318
    iget-object v2, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    invoke-virtual {v2, v1}, Lcom/android/photos/views/TiledImageView;->post(Ljava/lang/Runnable;)Z

    .line 321
    :cond_1
    return-void

    .line 302
    .end local v0    # "complete":Z
    .end local v1    # "readyCallback":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 310
    .restart local v0    # "complete":Z
    .restart local v1    # "readyCallback":Ljava/lang/Runnable;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->mCanvas:Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    invoke-virtual {v0, p2, p3}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;->setSize(II)V

    .line 295
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v0, v0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/android/photos/views/TiledImageRenderer;->setViewSize(II)V

    .line 296
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 287
    new-instance v0, Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    invoke-direct {v0}, Lcom/android/gallery3d/glrenderer/GLES20Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->mCanvas:Lcom/android/gallery3d/glrenderer/GLES20Canvas;

    .line 288
    invoke-static {}, Lcom/android/gallery3d/glrenderer/BasicTexture;->invalidateAllTextures()V

    .line 289
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v0, v0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    iget-object v1, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v1, v1, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    iget-object v2, p0, Lcom/android/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v2, v2, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget v2, v2, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/photos/views/TiledImageRenderer;->setModel(Lcom/android/photos/views/TiledImageRenderer$TileSource;I)V

    .line 290
    return-void
.end method
