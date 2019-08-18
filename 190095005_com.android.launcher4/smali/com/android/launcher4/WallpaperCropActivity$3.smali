.class Lcom/android/launcher4/WallpaperCropActivity$3;
.super Ljava/lang/Object;
.source "WallpaperCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/WallpaperCropActivity;->cropImageAndSetWallpaper(Landroid/content/res/Resources;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/WallpaperCropActivity;

.field private final synthetic val$finishActivityWhenDone:Z


# direct methods
.method constructor <init>(Lcom/android/launcher4/WallpaperCropActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/WallpaperCropActivity$3;->this$0:Lcom/android/launcher4/WallpaperCropActivity;

    iput-boolean p2, p0, Lcom/android/launcher4/WallpaperCropActivity$3;->val$finishActivityWhenDone:Z

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$3;->this$0:Lcom/android/launcher4/WallpaperCropActivity;

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher4/WallpaperCropActivity;->updateWallpaperDimensions(II)V

    .line 272
    iget-boolean v0, p0, Lcom/android/launcher4/WallpaperCropActivity$3;->val$finishActivityWhenDone:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$3;->this$0:Lcom/android/launcher4/WallpaperCropActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/WallpaperCropActivity;->setResult(I)V

    .line 274
    iget-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$3;->this$0:Lcom/android/launcher4/WallpaperCropActivity;

    invoke-virtual {v0}, Lcom/android/launcher4/WallpaperCropActivity;->finish()V

    .line 276
    :cond_0
    return-void
.end method
