.class Lcom/android/launcher4/WallpaperCropActivity$4;
.super Ljava/lang/Object;
.source "WallpaperCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/WallpaperCropActivity;->cropImageAndSetWallpaper(Landroid/net/Uri;Lcom/android/launcher4/WallpaperCropActivity$OnBitmapCroppedHandler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/WallpaperCropActivity;

.field private final synthetic val$finishActivityWhenDone:Z

.field private final synthetic val$outHeight:I

.field private final synthetic val$outWidth:I


# direct methods
.method constructor <init>(Lcom/android/launcher4/WallpaperCropActivity;IIZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/WallpaperCropActivity$4;->this$0:Lcom/android/launcher4/WallpaperCropActivity;

    iput p2, p0, Lcom/android/launcher4/WallpaperCropActivity$4;->val$outWidth:I

    iput p3, p0, Lcom/android/launcher4/WallpaperCropActivity$4;->val$outHeight:I

    iput-boolean p4, p0, Lcom/android/launcher4/WallpaperCropActivity$4;->val$finishActivityWhenDone:Z

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$4;->this$0:Lcom/android/launcher4/WallpaperCropActivity;

    iget v1, p0, Lcom/android/launcher4/WallpaperCropActivity$4;->val$outWidth:I

    iget v2, p0, Lcom/android/launcher4/WallpaperCropActivity$4;->val$outHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/WallpaperCropActivity;->updateWallpaperDimensions(II)V

    .line 374
    iget-boolean v0, p0, Lcom/android/launcher4/WallpaperCropActivity$4;->val$finishActivityWhenDone:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$4;->this$0:Lcom/android/launcher4/WallpaperCropActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/WallpaperCropActivity;->setResult(I)V

    .line 376
    iget-object v0, p0, Lcom/android/launcher4/WallpaperCropActivity$4;->this$0:Lcom/android/launcher4/WallpaperCropActivity;

    invoke-virtual {v0}, Lcom/android/launcher4/WallpaperCropActivity;->finish()V

    .line 378
    :cond_0
    return-void
.end method
