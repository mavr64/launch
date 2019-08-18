.class Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo$1;
.super Ljava/lang/Object;
.source "WallpaperPickerActivity.java"

# interfaces
.implements Lcom/android/launcher4/WallpaperCropActivity$OnBitmapCroppedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo;->onSave(Lcom/android/launcher4/WallpaperPickerActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo;

.field private final synthetic val$a:Lcom/android/launcher4/WallpaperPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo;Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo$1;->this$1:Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo;

    iput-object p2, p0, Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo$1;->val$a:Lcom/android/launcher4/WallpaperPickerActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapCropped([B)V
    .locals 9
    .param p1, "imageBytes"    # [B

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 150
    iget-object v2, p0, Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo$1;->val$a:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-virtual {v2}, Lcom/android/launcher4/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher4/WallpaperPickerActivity;->access$0(Landroid/content/res/Resources;)Landroid/graphics/Point;

    move-result-object v0

    .line 153
    .local v0, "thumbSize":Landroid/graphics/Point;
    const/4 v7, 0x1

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    move v6, v5

    .line 152
    invoke-static/range {v0 .. v7}, Lcom/android/launcher4/WallpaperPickerActivity;->access$1(Landroid/graphics/Point;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 154
    .local v8, "thumb":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo$1;->val$a:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-virtual {v1}, Lcom/android/launcher4/WallpaperPickerActivity;->getSavedImages()Lcom/android/launcher4/SavedWallpaperImages;

    move-result-object v1

    invoke-virtual {v1, v8, p1}, Lcom/android/launcher4/SavedWallpaperImages;->writeImage(Landroid/graphics/Bitmap;[B)V

    .line 155
    return-void
.end method
