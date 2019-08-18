.class Lcom/android/launcher4/WallpaperCropActivity$1;
.super Ljava/lang/Object;
.source "WallpaperCropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/WallpaperCropActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/WallpaperCropActivity;

.field private final synthetic val$imageUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/launcher4/WallpaperCropActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/WallpaperCropActivity$1;->this$0:Lcom/android/launcher4/WallpaperCropActivity;

    iput-object p2, p0, Lcom/android/launcher4/WallpaperCropActivity$1;->val$imageUri:Landroid/net/Uri;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    const/4 v0, 0x1

    .line 113
    .local v0, "finishActivityWhenDone":Z
    iget-object v1, p0, Lcom/android/launcher4/WallpaperCropActivity$1;->this$0:Lcom/android/launcher4/WallpaperCropActivity;

    iget-object v2, p0, Lcom/android/launcher4/WallpaperCropActivity$1;->val$imageUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher4/WallpaperCropActivity;->cropImageAndSetWallpaper(Landroid/net/Uri;Lcom/android/launcher4/WallpaperCropActivity$OnBitmapCroppedHandler;Z)V

    .line 115
    return-void
.end method
