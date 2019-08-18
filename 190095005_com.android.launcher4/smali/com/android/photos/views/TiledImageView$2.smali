.class Lcom/android/photos/views/TiledImageView$2;
.super Ljava/lang/Object;
.source "TiledImageView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/photos/views/TiledImageView;->invalOnVsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/views/TiledImageView;


# direct methods
.method constructor <init>(Lcom/android/photos/views/TiledImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/photos/views/TiledImageView$2;->this$0:Lcom/android/photos/views/TiledImageView;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView$2;->this$0:Lcom/android/photos/views/TiledImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/photos/views/TiledImageView;->access$0(Lcom/android/photos/views/TiledImageView;Z)V

    .line 236
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView$2;->this$0:Lcom/android/photos/views/TiledImageView;

    invoke-static {v0}, Lcom/android/photos/views/TiledImageView;->access$1(Lcom/android/photos/views/TiledImageView;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 237
    return-void
.end method
