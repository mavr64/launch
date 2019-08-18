.class public Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;
.super Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;
.source "SavedWallpaperImages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/SavedWallpaperImages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedWallpaperTile"
.end annotation


# instance fields
.field private mDbId:I

.field private mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "dbId"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;-><init>()V

    .line 56
    iput p1, p0, Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;->mDbId:I

    .line 57
    iput-object p2, p0, Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public isNamelessWallpaper()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 7
    .param p1, "a"    # Lcom/android/launcher4/WallpaperPickerActivity;

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/android/launcher4/WallpaperPickerActivity;->getSavedImages()Lcom/android/launcher4/SavedWallpaperImages;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;->mDbId:I

    invoke-virtual {v4, v5}, Lcom/android/launcher4/SavedWallpaperImages;->getImageFilename(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "imageFilename":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/launcher4/WallpaperPickerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p1}, Lcom/android/launcher4/WallpaperPickerActivity;->getCropView()Lcom/android/launcher4/CropView;

    move-result-object v3

    .line 64
    .local v3, "v":Lcom/android/launcher4/CropView;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher4/WallpaperCropActivity;->getRotationFromExif(Ljava/lang/String;)I

    move-result v2

    .line 66
    .local v2, "rotation":I
    new-instance v4, Lcom/android/photos/BitmapRegionTileSource;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x400

    invoke-direct {v4, p1, v5, v6, v2}, Lcom/android/photos/BitmapRegionTileSource;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    const/4 v5, 0x0

    .line 65
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher4/CropView;->setTileSource(Lcom/android/photos/views/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {v3}, Lcom/android/launcher4/CropView;->moveToLeft()V

    .line 68
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher4/CropView;->setTouchEnabled(Z)V

    .line 69
    return-void
.end method

.method public onDelete(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 2
    .param p1, "a"    # Lcom/android/launcher4/WallpaperPickerActivity;

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/android/launcher4/WallpaperPickerActivity;->getSavedImages()Lcom/android/launcher4/SavedWallpaperImages;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;->mDbId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher4/SavedWallpaperImages;->deleteImage(I)V

    .line 79
    return-void
.end method

.method public onSave(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 4
    .param p1, "a"    # Lcom/android/launcher4/WallpaperPickerActivity;

    .prologue
    .line 72
    const/4 v0, 0x1

    .line 73
    .local v0, "finishActivityWhenDone":Z
    invoke-virtual {p1}, Lcom/android/launcher4/WallpaperPickerActivity;->getSavedImages()Lcom/android/launcher4/SavedWallpaperImages;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher4/SavedWallpaperImages$SavedWallpaperTile;->mDbId:I

    invoke-virtual {v2, v3}, Lcom/android/launcher4/SavedWallpaperImages;->getImageFilename(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "imageFilename":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher4/WallpaperPickerActivity;->setWallpaper(Ljava/lang/String;Z)V

    .line 75
    return-void
.end method
