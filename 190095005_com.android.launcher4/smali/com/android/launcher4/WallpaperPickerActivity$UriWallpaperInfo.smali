.class public Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo;
.super Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/WallpaperPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriWallpaperInfo"
.end annotation


# instance fields
.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo;->mUri:Landroid/net/Uri;

    .line 137
    return-void
.end method


# virtual methods
.method public isNamelessWallpaper()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 5
    .param p1, "a"    # Lcom/android/launcher4/WallpaperPickerActivity;

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/android/launcher4/WallpaperPickerActivity;->getCropView()Lcom/android/launcher4/CropView;

    move-result-object v1

    .line 141
    .local v1, "v":Lcom/android/launcher4/CropView;
    iget-object v2, p0, Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo;->mUri:Landroid/net/Uri;

    invoke-static {p1, v2}, Lcom/android/launcher4/WallpaperCropActivity;->getRotationFromExif(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 142
    .local v0, "rotation":I
    new-instance v2, Lcom/android/photos/BitmapRegionTileSource;

    iget-object v3, p0, Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo;->mUri:Landroid/net/Uri;

    const/16 v4, 0x400

    invoke-direct {v2, p1, v3, v4, v0}, Lcom/android/photos/BitmapRegionTileSource;-><init>(Landroid/content/Context;Landroid/net/Uri;II)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher4/CropView;->setTileSource(Lcom/android/photos/views/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V

    .line 143
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher4/CropView;->setTouchEnabled(Z)V

    .line 144
    return-void
.end method

.method public onSave(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 3
    .param p1, "a"    # Lcom/android/launcher4/WallpaperPickerActivity;

    .prologue
    .line 147
    const/4 v0, 0x1

    .line 148
    .local v0, "finishActivityWhenDone":Z
    new-instance v1, Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo$1;-><init>(Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo;Lcom/android/launcher4/WallpaperPickerActivity;)V

    .line 157
    .local v1, "h":Lcom/android/launcher4/WallpaperCropActivity$OnBitmapCroppedHandler;
    iget-object v2, p0, Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v1, v0}, Lcom/android/launcher4/WallpaperPickerActivity;->cropImageAndSetWallpaper(Landroid/net/Uri;Lcom/android/launcher4/WallpaperCropActivity$OnBitmapCroppedHandler;Z)V

    .line 158
    return-void
.end method
