.class Lcom/android/launcher4/WallpaperCropActivity$2;
.super Ljava/lang/Object;
.source "WallpaperCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/WallpaperCropActivity;->setWallpaper(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/WallpaperCropActivity;

.field private final synthetic val$bounds:Landroid/graphics/Point;

.field private final synthetic val$finishActivityWhenDone:Z


# direct methods
.method constructor <init>(Lcom/android/launcher4/WallpaperCropActivity;Landroid/graphics/Point;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/WallpaperCropActivity$2;->this$0:Lcom/android/launcher4/WallpaperCropActivity;

    iput-object p2, p0, Lcom/android/launcher4/WallpaperCropActivity$2;->val$bounds:Landroid/graphics/Point;

    iput-boolean p3, p0, Lcom/android/launcher4/WallpaperCropActivity$2;->val$finishActivityWhenDone:Z

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$2;->this$0:Lcom/android/launcher4/WallpaperCropActivity;

    iget-object v1, p0, Lcom/android/launcher4/WallpaperCropActivity$2;->val$bounds:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/launcher4/WallpaperCropActivity$2;->val$bounds:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/WallpaperCropActivity;->updateWallpaperDimensions(II)V

    .line 246
    iget-boolean v0, p0, Lcom/android/launcher4/WallpaperCropActivity$2;->val$finishActivityWhenDone:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$2;->this$0:Lcom/android/launcher4/WallpaperCropActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/WallpaperCropActivity;->setResult(I)V

    .line 248
    iget-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$2;->this$0:Lcom/android/launcher4/WallpaperCropActivity;

    invoke-virtual {v0}, Lcom/android/launcher4/WallpaperCropActivity;->finish()V

    .line 250
    :cond_0
    return-void
.end method
